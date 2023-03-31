package com.cydeo.jdbctests.Day2;

import com.cydeo.jdbctests.utility.DB_Util;
import org.junit.jupiter.api.Assertions;
import org.junit.jupiter.api.Test;

public class P03_Library_Test {

    // Create connection to MySQL Database
    String url = "jdbc:mysql://34.230.35.214:3306/library2";
    String username =  "library2_client";
    String password =  "6s2LQQTjBcGFfDhY";


    @Test
    public void task1(){
        
        //connection
        DB_Util.createConnection(url,username,password);
        
        //run query
        DB_Util.runQuery("select count(*) from books");

        String expectedBookCount = DB_Util.getFirstRowFirstColumn();

        /*
        Actual comes from UI with selenium, cucumber etc
         */

        String actualBookCount = "6660";

        Assertions.assertEquals(expectedBookCount,actualBookCount);






        System.out.println(actualBookCount);

        //close connection
        DB_Util.destroy();

    }
}
