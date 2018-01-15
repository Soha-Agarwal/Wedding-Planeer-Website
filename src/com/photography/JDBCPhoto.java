package com.photography;


import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

import javax.sql.DataSource;
public class JDBCPhoto {
	final String JDBC_DRIVER="com.mysql.jdbc.Driver";
	final String DB_URL="jdbc:mysql://localhost:3306/db101";
	final String USER="user101";
	final String PASSWORD="password";
	 Connection conn=null;
		PreparedStatement pstmt=null;
		ResultSet rs=null;
		Statement stmt=null;
		
		private DataSource dataSource;

	    public JDBCPhoto(DataSource dataSource) {	
	    	this.dataSource = dataSource;
}

	public ArrayList <PhotoBean> getPhotographer() throws SQLException
	{
		ArrayList <PhotoBean> p=new ArrayList <PhotoBean>();
		try
		{
			Class.forName(JDBC_DRIVER);
			conn=DriverManager.getConnection(DB_URL,USER,PASSWORD);
			String query="select * from Photography;";
			stmt=conn.createStatement();
			rs=stmt.executeQuery(query);
			while(rs.next())
			{
				PhotoBean pb=new PhotoBean();
				pb.name=rs.getString("Name");
				pb.contact=rs.getLong("Contact");
				pb.pg_id=rs.getInt("pg_id");
				pb.image1=rs.getString("Image1");
				pb.image2=rs.getString("Image2");
				pb.image3=rs.getString("Image3");
				pb.image4=rs.getString("Image4");
				pb.price=rs.getInt("Price");
				p.add(pb);
			}
			return p;
		}
		catch(ClassNotFoundException ce)
		{
			ce.printStackTrace();
		}
		catch(SQLException se)
		{
			System.out.println("Error in SQL syntax");
			se.printStackTrace();
		}
		
		
		stmt.close();
		conn.close();
		return p;
		
		
		
	}
}