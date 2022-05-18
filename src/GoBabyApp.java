import com.ibm.db2.jcc.DB2Driver;

import java.sql.*;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Random;
import java.util.Scanner;
import java.util.Date;

import static java.sql.JDBCType.NULL;

class GoBabyApp {
    public static void main(String[] args) throws SQLException {
        // Register the driver.  You must register the driver before you can use it.
        try {
            DriverManager.registerDriver(new DB2Driver());
        } catch (Exception cnfe) {
            System.out.println("Class not found");
        }

        // This is the url you must use for DB2.
        //Note: This url may not valid now ! Check for the correct year and semester and server name.
        String url = "jdbc:db2://winter2022-comp421.cs.mcgill.ca:50000/cs421";

        //REMEMBER to remove your user id and password before submitting your code!!
        String your_userid = "";
        String your_password = "";
        //AS AN ALTERNATIVE, you can just set your password in the shell environment in the Unix (as shown below) and read it from there.
        //$  export SOCSPASSWD=yoursocspasswd
        if (your_userid == null && (your_userid = System.getenv("SOCSUSER")) == null) {
            System.err.println("Error!! do not have a password to connect to the database!");
            System.exit(1);
        }
        if (your_password == null && (your_password = System.getenv("SOCSPASSWD")) == null) {
            System.err.println("Error!! do not have a password to connect to the database!");
            System.exit(1);
        }
        Connection con = DriverManager.getConnection(url, your_userid, your_password);
        Statement statement = con.createStatement();
        // Unique table names.  Either the user supplies a unique identifier as a command line argument, or the program makes one up.
        String tableName = "";
        int sqlCode = 0;      // Variable to hold SQLCODE
        String sqlState = "00000";  // Variable to hold SQLSTATE

        Scanner sc = new Scanner(System.in);
        boolean isNull = true;

        while (isNull) {
            System.out.println("Please enter your practitioner id. Press [E] to exit");
            String input = sc.nextLine();
            if (!input.equals("E")) {
                int practitionerID = Integer.parseInt(input);
                try {
                    ResultSet rs = statement.executeQuery("SELECT COUNT(*) FROM midwife WHERE practitionerid = " + input);
                    while (rs.next()) {
                        int count = rs.getInt(1);
                        if (count != 0) {
                            isNull = false;
                        }
                    }
                } catch (SQLException e) {
                    sqlCode = e.getErrorCode(); // Get SQLCODE
                    sqlState = e.getSQLState(); // Get SQLSTATE

                    System.out.println("Code: " + sqlCode + "  sqlState: " + sqlState + "Getting COUNT failed");
                    System.out.println(e);
                }
                if (!isNull) { //valid practitioner id
                    break; // goes on to get date of appointment
                }
            } else {
                statement.close();
                con.close();
                return;
            }

        }
        boolean appropriate = true;
        while (appropriate) {
            System.out.println("Please enter the date for appointment. Press [E] to exit");
            String str = sc.nextLine();
            Date date;
            ArrayList<String> appointments = new ArrayList<String>();
            boolean goBack = false;
            while (true) {
                if (!str.equals('E')) {
                    date = java.sql.Date.valueOf(str);
                    try {
                        String querySQL = "(SELECT DISTINCT a.apptime, 'P' AS info, m.mname, m.mphone" +
                                " FROM (appointment a" +
                                "          LEFT OUTER JOIN (pregnancy preg LEFT OUTER JOIN (parents p LEFT OUTER JOIN mother m ON p.mhealthid = m.mhealthid) ON p.pid = preg.pid)" +
                                "                          ON a.pid = preg.pid" +
                                "                              AND a.pregid = preg.pregid)" +
                                " WHERE a.appdate ='" + date + "'" +
                                "   AND a.practitionerid = preg.primidwife" +
                                " UNION" +
                                " SELECT DISTINCT a.apptime, 'B' AS info, m.mname, m.mphone" +
                                " FROM (appointment a" +
                                "          LEFT OUTER JOIN (pregnancy preg LEFT OUTER JOIN (parents p LEFT OUTER JOIN mother m ON p.mhealthid = m.mhealthid) ON p.pid = preg.pid)" +
                                "                          ON a.pid = preg.pid" +
                                "                              AND a.pregid = preg.pregid)" +
                                " WHERE a.appdate = '" + date + "'" +
                                "   AND a.practitionerid = preg.backmidwife)" +
                                "    ORDER BY apptime";
                        ResultSet rs = statement.executeQuery(querySQL);
                        int count = 1;
                        if (rs.next() == false) {
                            System.out.println("No appointment for the entered date");
                            //appropriate = false;
                            break;
                        } else {
                            appropriate = true;
                            do {
                                String time = String.valueOf(rs.getTime("apptime"));
                                String prime = rs.getString("info");
                                String name = rs.getString("mname");
                                String phone = rs.getString("mphone");
                                String data = time + " " + prime + " " + name + " " + phone;
                                appointments.add(data);
                                System.out.println(count + ": " + data);
                                count++;
                            } while (rs.next());
                        }
                    } catch (SQLException e) {
                        sqlCode = e.getErrorCode(); // Get SQLCODE
                        sqlState = e.getSQLState(); // Get SQLSTATE

                        System.out.println("Inappropriate date");
                        System.out.println(e);
                    }
                } else {
                    System.out.println("Thank you for using GoBaby!");
                    statement.close();
                    con.close();
                    return;
                }

                if (appropriate) {
                    System.out.println();
                    System.out.println("Enter the appointment number that you would like to work on. " +
                            "\nPress [E] to exit. [D] to go back to another date");
                    String appChoice = sc.nextLine();
                    if (appChoice.equals("D")) {
                        break;
                    } else if (appChoice.equals("E")) {
                        System.out.println("Thank you for using GoBaby!");
                        statement.close();
                        con.close();
                        return;
                    } else {
                        int choice = Integer.parseInt(appChoice);
                        String parse = appointments.get(choice - 1);
                        String[] splitStr = parse.split("\\s+");
                        String name = splitStr[2] + " " + splitStr[3];
                        String phone = splitStr[4];

                        System.out.println("For " + name + " " + phone + "\n" +
                                "1. Review notes \n2. Reivew tests \n3. Add a note \n4. Prescribe a test \n5. Go back to the appointments \n" +
                                "\nEnter your choice: ");
                        int reviewChoice = sc.nextInt();
                        while (reviewChoice < 5) {
                            switch (reviewChoice) {
                                case 1: // print the notes
                                    Time apptime = Time.valueOf(splitStr[0]);
                                    try {

                                        ResultSet rs = statement.executeQuery("SELECT notedate, notetime, LEFT(content,50) AS content " +
                                                "FROM note " +
                                                "WHERE note.appid IN (SELECT appid" +
                                                "                     FROM appointment a" +
                                                "                     WHERE a.pid IN (SELECT pid" +
                                                "                                    FROM appointment" +
                                                "                                    WHERE appdate = '" + date + "'" +
                                                "                                      AND apptime = '" + apptime + "')" +
                                                "                       AND a.pregid IN (SELECT pregid" +
                                                "                                       FROM appointment" +
                                                "                                       WHERE appdate = '" + date + "'" +
                                                "                                         AND apptime = '" + apptime + "')" +
                                                ")" +
                                                "ORDER BY notedate, notetime DESC");

                                        while (rs.next()) {
                                            Date notedate = rs.getDate("notedate");
                                            Time notetime = rs.getTime("notetime");
                                            String notecontent = rs.getString("content");
                                            System.out.println(notedate + " " + notetime + " " + notecontent);

                                        }

                                    } catch (SQLException e) {
                                        sqlCode = e.getErrorCode(); // Get SQLCODE
                                        sqlState = e.getSQLState(); // Get SQLSTATE

                                        System.out.println("Code: " + sqlCode + "  sqlState: " + sqlState + "Reviewing notes failed");
                                        System.out.println(e);
                                    }
                                    break;
                                case 2:
                                    apptime = Time.valueOf(splitStr[0]);
                                    try {

                                        ResultSet rs = statement.executeQuery("SELECT prescribedate, type, COALESCE(result, 'Pending') AS result " +
                                                "FROM test " +
                                                "WHERE test.appid IN (SELECT appid" +
                                                "    FROM appointment a" +
                                                "    WHERE a.pid IN (SELECT pid" +
                                                "    FROM appointment" +
                                                "    WHERE appdate = '" + date + "'" +
                                                "  AND apptime = '" + apptime + "')" +
                                                "  AND a.pregid IN (SELECT pregid" +
                                                "    FROM appointment" +
                                                "    WHERE appdate = '" + date + "'" +
                                                "  AND apptime = '" + apptime + "')" +
                                                ") AND patientid IN (SELECT mhealthid" +
                                                        "        FROM parents" +
                                                        "        WHERE pid IN (SELECT pid" +
                                                        "            FROM appointment" +
                                                        "                      WHERE appdate = '" + date + "'" +
                                                        "                        AND apptime = '" + apptime + "')" +
                                                "    )" +
                                                "ORDER BY prescribedate DESC");

                                        while (rs.next()) {
                                            Date testdate = rs.getDate("prescribedate");
                                            String testtype = rs.getString("type");
                                            String testresult = rs.getString("result");
                                            System.out.println(testdate + " [" + testtype + "] " + testresult);

                                        }

                                    } catch (SQLException e) {
                                        sqlCode = e.getErrorCode(); // Get SQLCODE
                                        sqlState = e.getSQLState(); // Get SQLSTATE

                                        System.out.println("Code: " + sqlCode + "  sqlState: " + sqlState + "Reviewing notes failed");
                                        System.out.println(e);
                                    }
                                    break;
                                case 3:
                                    System.out.println("Please type your observation: ");
                                    sc.nextLine();
                                    String observation = sc.nextLine();
                                    String timeStamp = (new SimpleDateFormat("HH:mm:ss").format(new Date()));
                                    Time addnotetime = Time.valueOf(timeStamp);
                                    apptime = Time.valueOf(splitStr[0]);
                                    try {
                                        ResultSet rs = statement.executeQuery("SELECT appid " +
                                                "FROM appointment " +
                                                " WHERE appdate = '" + date + "'" +
                                                "  AND apptime = '" + apptime + "'");
                                        String appid = "";
                                        while(rs.next()){
                                            appid = rs.getString(1);
                                        }
                                        int noteid = gen();
                                        statement.executeUpdate("INSERT INTO note " +
                                                "VALUES (" + noteid + ", "+  appid + ", '"  + date + "', '" + addnotetime + "', '" + observation +"')");

                                    } catch (SQLException e) {
                                        sqlCode = e.getErrorCode(); // Get SQLCODE
                                        sqlState = e.getSQLState(); // Get SQLSTATE

                                        System.out.println("Code: " + sqlCode + "  sqlState: " + sqlState + "Adding note failed");
                                        System.out.println(e);
                                    }
                                    break;
                                case 4:
                                    System.out.println("Please enter the type of test: ");
                                    sc.nextLine();
                                    String type = sc.nextLine();
                                    timeStamp = (new SimpleDateFormat("HH:mm:ss").format(new Date()));
                                    Time addtesttime = Time.valueOf(timeStamp);
                                    apptime = Time.valueOf(splitStr[0]);
                                    try {
                                        ResultSet rs = statement.executeQuery("SELECT p.mhealthid, a.appid " +
                                                "FROM parents p LEFT OUTER JOIN appointment a ON p.pid = a.pid " +
                                                "WHERE a.appdate = '" + date + "' AND a.apptime = '" + apptime+"'");
                                        String appid = "";
                                        String mid = "";
                                        while(rs.next()){
                                            appid = rs.getString("appid");
                                            mid = rs.getString("mhealthid");
                                        }

                                        int testid = gen();
                                        statement.executeUpdate("INSERT INTO test " +
                                                "VALUES (" + testid + ", "+  appid + ", "  + mid+ ", '" + type+ "', "+ NULL +", '" + date + "'," + NULL + ", "+ NULL + "," + NULL +")");

                                    } catch (SQLException e) {
                                        sqlCode = e.getErrorCode(); // Get SQLCODE
                                        sqlState = e.getSQLState(); // Get SQLSTATE

                                        System.out.println("Code: " + sqlCode + "  sqlState: " + sqlState + " Adding test failed");
                                        System.out.println(e);
                                    }
                                    break;
                                case 5:
                                    goBack = true;
                                    sc.nextLine();
                                    break;
                            }
                            System.out.println();
                            System.out.println("For " + name + " " + phone + "\n" +
                                    "1. Review notes \n2. Reivew tests \n3. Add a note \n4. Prescribe a test \n5. Go back to the appointments \n" +
                                    "\nEnter your choice: ");
                            reviewChoice = sc.nextInt();
                        }
                        sc.nextLine();
                    }
                }
            }
        }
        // Finally but importantly close the statement and connection
        System.out.println("Thank you for using GoBaby!");
        statement.close();
        con.close();
    }

    public static int gen() {
        Random r = new Random( System.currentTimeMillis() );
        return ((1 + r.nextInt(2)) * 60000 + r.nextInt(10000));
    }

}
