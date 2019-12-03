


import java.sql.Connection;
import java.sql.DriverManager;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 *
 * @author RIAZ
 */
public class SQLConnection {            //SQL connection class
    public static Connection getConnection() throws Exception{
        
        String dbRoot = "jdbc:mysql://";  //Database Root
        String hostName ="localhost:3306/"; //Database host Name
        String dbName ="Library_ms";        //Database name 
        String dbUrl = dbRoot+hostName+dbName;
        
        String hostUserName = "root"; // Database host user name
        String hostPassword = "";  // Database host user password
        
        Class.forName("com.mysql.cj.jdbc.Driver"); 
        Connection myConn = DriverManager.getConnection(dbUrl, hostUserName, hostPassword);
        
        return myConn;  //return Connection 
        
    }
    
}
