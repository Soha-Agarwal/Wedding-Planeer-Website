package com.venue;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

import javax.sql.DataSource;

public class JDBCVenue {
	final String JDBC_DRIVER="com.mysql.jdbc.Driver";
	final String DB_URL="jdbc:mysql://localhost:3306/db101";
	final String USER="user101";
	final String PASSWORD="password";
	 Connection conn=null;
		PreparedStatement pstmt=null,pstmt1=null;
		ResultSet rs=null,rs1=null;
		Statement stmt=null;
		
		private DataSource dataSource;

	    public JDBCVenue(DataSource dataSource) {	
	    	this.dataSource = dataSource;
}
	public ArrayList <VenueBean> getVenue() throws SQLException
	{
		ArrayList <VenueBean> p=new ArrayList <VenueBean>();
		try
		{
			Class.forName(JDBC_DRIVER);
			conn=DriverManager.getConnection(DB_URL,USER,PASSWORD);
			String query="select * from Venue where BookingDate is NULL;";
			stmt=conn.createStatement();
			rs=stmt.executeQuery(query);
			while(rs.next())
			{
				VenueBean v=new VenueBean();
				v.v_id=rs.getInt("V_id");
				v.contact=rs.getLong("Contact");
				v.image1=rs.getString("Image1");
				v.price=rs.getInt("Price");
				v.nameofvenue=rs.getString("NameofVenue");
				v.address=rs.getString("Address");
				v.trad_id=rs.getInt("Trad_id");
				v.bookdate=String.valueOf(rs.getDate("BookingDate"));
					p.add(v);
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
	
	public ArrayList <VenueBean> getVenue(int trad) throws SQLException
	{
		ArrayList <VenueBean> pq=new ArrayList <VenueBean>();
		try
		{
			Class.forName(JDBC_DRIVER);
			conn=DriverManager.getConnection(DB_URL,USER,PASSWORD);
			String query2="select * from Venue where Trad_id=?;";
			pstmt=conn.prepareStatement(query2);
			pstmt.setInt(1,trad);
			
			rs1=pstmt.executeQuery();
			while(rs1.next())
			{
				VenueBean v=new VenueBean();
				v.v_id=rs1.getInt("V_id");
				v.contact=rs1.getLong("Contact");
				v.image1=rs1.getString("Image1");
				v.price=rs1.getInt("Price");
				v.nameofvenue=rs1.getString("NameofVenue");
				v.address=rs1.getString("Address");
				v.trad_id=rs1.getInt("Trad_id");
				System.out.println(trad);
				System.out.println(v.nameofvenue);
				v.bookdate=String.valueOf(rs1.getDate("BookingDate"));
				if(v.bookdate!=null)
				pq.add(v);
			}
			return pq;
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
		
		
		pstmt.close();
		conn.close();
		return pq;
		
		
		
	}
	public void bookdtdata(String a) throws SQLException
	{
		try{
		Class.forName(JDBC_DRIVER);
		conn=DriverManager.getConnection(DB_URL,USER,PASSWORD);
		String query3=" insert into Venue(BookDate) where NameofVenue=?;";
		java.sql.Date sqlDate = new java.sql.Date(new java.util.Date().getTime());
		pstmt1=conn.prepareStatement(query3);
		pstmt1.setDate(1,sqlDate);
		pstmt1.executeUpdate();
		
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
	
	
	pstmt1.close();
	conn.close();
	}
}