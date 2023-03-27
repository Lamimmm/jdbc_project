package com.cydeo.jdbctests.Day1;

import org.junit.jupiter.api.Test;

import java.sql.*;

public class PO1_JDBCIntro {

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
        Statement statement = conn.createStatement();

        //ResultSet will sort dta after execution. It stores only data(there is no table info)
        ResultSet rs = statement.executeQuery("select * from DEPARTMENTS where MANAGER_ID is not null"); //option + enter(return) --> give the option to crate variables
        //press command + enter to "("select *from REGIONS")" tp choose to run the quire from

        //10-Administration-200-1700
    while (rs.next()){

        System.out.println(rs.getString(1) + " - " + rs.getString(2) + " - "+
        rs.getString(3) + " - " + rs.getString(4));
    }



    //can we run another query in same connection

        rs = statement.executeQuery("select * from LOCATIONS");

        System.out.println("________________________________________");

    //1297 Via Cola di Rie
        while (rs.next()){
            System.out.println(rs.getString(2) + " - " + rs.getString(4));
        }



        //close connection
        rs.close();
        statement.close();
        conn.close();
    }

}
