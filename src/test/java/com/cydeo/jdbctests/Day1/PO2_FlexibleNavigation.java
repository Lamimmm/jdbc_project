package com.cydeo.jdbctests.Day1;

import org.junit.jupiter.api.Test;

import java.sql.*;

public class PO2_FlexibleNavigation {
    //CONNECTION STRING
    String dbUrl= "jdbc:oracle:thin:@54.157.67.42:1521:XE";
    String dbUsername ="hr";
    String dbPassword = "hr";


    @Test
    public void task1() throws SQLException {

        //create a connection
        //driver manager class getConnection Method will help to connect database
        Connection conn = DriverManager.getConnection(dbUrl, dbUsername, dbPassword);

        //it will help us to execute queries
        Statement statement = conn.createStatement(ResultSet.TYPE_SCROLL_INSENSITIVE,ResultSet.CONCUR_READ_ONLY);

        //ResultSet will sort dta after execution. It stores only data(there is no table info)
        ResultSet rs = statement.executeQuery("select FIRST_NAME,LAST_NAME from employees"); //option + enter(return) --> give the option to crate variables
        //press command + enter to "("select *from REGIONS")" tp choose to run the quire from

        //first row
        rs.next();
        System.out.println(rs.getString(1 ) + " - " + rs.getString(2));

        //second row
        rs.next();
        System.out.println(rs.getString(1 ) + " - " + rs.getString(2));

        //what if I want to get last row data

        /*

        ResultSet.TYPE_SCROLL_INSENSITIVE -- > to do flexible navigation between rows
        ResultSet.CONCUR_READ_ONLY --> di nut update anything from database , only read

        */
        rs.last();
        System.out.println(rs.getString(1 ) + " - " + rs.getString(2));


        //how many rows we have (last _+ getRows)
        int rowNumber = rs.getRow(); // the current row number; 0 if there is no current row

        System.out.println("rowNumber = " + rowNumber);


        System.out.println("_________ABSOLUTE___________");
        rs.absolute(46); //true if the cursor is moved to a position in this ResultSet object; false if the cursor is before the first row or after the last row
        System.out.println(rs.getString(1 ) + " - " + rs.getString(2)); // Alexander - Hunold

        System.out.println("_____PREVIOUS____");
        rs.previous(); //true if the cursor is now positioned on a valid row; false if the cursor is positioned before the first row
        System.out.println(rs.getString(1 ) + " - " + rs.getString(2)); //Guy - Himuro

        System.out.println("________________________");

        //print the whole table

        rs.first(); //jump to first
        rs.beforeFirst(); //jump into before first row

        System.out.println("---PRINTING TABLE----");

        while(rs.next()){
            System.out.println(rs.getString(1 ) + " - " + rs.getString(2));

        }



        //close connection
        rs.close();
        statement.close();
        conn.close();

}
}
