package com.decoration;

import java.sql.*;
import java.sql.SQLException;

import com.mysql.jdbc.Connection;

public class ConnectionC {
	 public static java.sql.Connection getMySQLConnection()
	         throws ClassNotFoundException, SQLException {
	     // Note: Change the connection parameters accordingly.
	     String hostName = "localhost";
	     String dbName = "db101";
	     String userName = "user101";
	     String password = "password";
	     return getMySQLConnection(hostName, dbName, userName, password);
	 }
	  
	 public static java.sql.Connection getMySQLConnection(String hostName, String dbName,
	         String userName, String password) throws SQLException,
	         ClassNotFoundException {
	    
	     Class.forName("com.mysql.jdbc.Driver");
	  
	     // URL Connection for MySQL:
	     // Example: 
	     // jdbc:mysql://localhost:3306/simplehr
	     String connectionURL = "jdbc:mysql://" + hostName + ":3306/" + dbName;
	  
	     java.sql.Connection conn = DriverManager.getConnection(connectionURL, userName,
	             password);
	     return conn;
	 }

}
