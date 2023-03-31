package com.cydeo.jdbctests.Day1;

import org.junit.jupiter.api.Test;

import java.sql.*;

public class PO3_MetaData {

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
        ResultSet rs = statement.executeQuery("select FIRST_NAME,LAST_NAME,SALARY from EMPLOYEES where rownum<6"); //option + enter(return) --> give the option to crate variables
        //press command + enter to "("select *from REGIONS")" tp choose to run the quire from
        
        
        //DataBaseMetaData
        DatabaseMetaData dbMetaData = conn.getMetaData();

        System.out.println(dbMetaData.getUserName());
        System.out.println(dbMetaData.getDatabaseProductName());
        System.out.println(dbMetaData.getDatabaseProductVersion());
        System.out.println(dbMetaData.getDriverName());


        //ResultSetMetaData
        ResultSetMetaData rsmd = rs.getMetaData();

        //how many columns we have?
        int columnCount = rsmd.getColumnCount();
        System.out.println(columnCount);



        //get me column name for index 2
        System.out.println(rsmd.getColumnName(2));

        //print all column names dynamically
        System.out.println("_______COLUMNS NAME____________");
        for (int i = 1; i <= columnCount; i++) {
            System.out.println(rsmd.getColumnName(i));
        }


        /*
              ResultSet --> it holds table data
                    rs.next() --> it iterate each row dynamically  (with while loop)
                       rs.getString(columnIndex) --> to retrieve data itself
                       rs.getString(columnName)
               ResultSetMetaData --> it holds table information ( ColumnNames - Column Count)
                        rsmd.getColumnCount() --> how many columns we have
                        rsmd.getColumnName(index) --> it will give specific column name
         */

        //write a code, that print whole table information for every query.
        //Column Name - Column value
        //EMPLOYEE_ID - 100
        //FIRST_NAME - Steven


        System.out.println("______print data dynamically_______");

        //iterate through each row
        while(rs.next()){
            //whatever we do, we will do for each row.
            //stating point:
            // REGION_ID - 1
            // REGION_NAME - Europe

          // System.out.println("REGION_ID - " + rs.getString(1) +" REGION_NAME - " + rs.getString(2));
           // System.out.println("REGION_NAME - " + rs.getString(2));
           // System.out.println(rsmd.getColumnName(1) + " - " + rs.getString(1));
            //System.out.println(rsmd.getColumnName(2) + " - " + rs.getString(2));
            for (int i = 1; i <= columnCount; i++) {
                System.out.print(rsmd.getColumnName(i) + " - " + rs.getString(i) + " ");

            }
            System.out.println();







        }



        //close connection
        rs.close();
        statement.close();
        conn.close();


}}
