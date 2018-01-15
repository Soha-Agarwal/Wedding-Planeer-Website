package com.beautician;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.ResultSetMetaData;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

import javax.sql.DataSource;

import java.util.*;
public class JDBCBeautician {
	final String JDBC_DRIVER="com.mysql.jdbc.Driver";
	final String DB_URL="jdbc:mysql://localhost:3306/db101";
	final String USER="user101";
	final String PASSWORD="password";
	Connection conn=null;
	PreparedStatement pstmt=null;
	ResultSet rs=null;
	Statement stmt=null;
	ResultSet rs1=null;
	Statement stmt1=null;


	private DataSource dataSource;
	public JDBCBeautician(DataSource dataSource2)
	{
		this.dataSource=dataSource2;
	}

	public ArrayList <BeauticianBean> getBeautician() throws SQLException
	{
		ArrayList <BeauticianBean> b=new ArrayList <BeauticianBean>();
		Iterator itr=b.iterator();
		try
		{
			Class.forName(JDBC_DRIVER);
			conn=DriverManager.getConnection(DB_URL,USER,PASSWORD);
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
		
		String query="select * from Beautician;";
		stmt=conn.createStatement();
		rs=stmt.executeQuery(query);
		while(rs.next())
		{
			BeauticianBean bb=new BeauticianBean();
			bb.packagename=rs.getString("Package");
			bb.total_price=rs.getInt("total_price");
			bb.image=rs.getString("image");
			b.add(bb);
			System.out.println(bb.packagename);
		}
		for(int i=0;i<b.size();i++)
		{
			String query1="select * from Beautician_Details where Package=(?);";
			pstmt=conn.prepareStatement(query1);
			pstmt.setString(1, b.get(i).packagename);
			rs1=pstmt.executeQuery();
			BeauticianBean x=new BeauticianBean();
			x.packagename=b.get(i).packagename;
			x.total_price=b.get(i).total_price;
			x.image=b.get(i).image;
			String[] type;
			type=new String[5];
			ResultSetMetaData rsmd=rs1.getMetaData();
			int cn=rsmd.getColumnCount();
		int n=0;
			while(rs1.next())
			{	
				/*x.type1=rs1.getString("Type");
				x.type2=rs1.getString("Type");
				x.type3=rs1.getString("Type");
				x.type4=rs1.getString("Type");
				x.type5=rs1.getString("Type");*/
				type[n]=rs1.getString("Type");
			n++;
			}
			x.type1=type[0];
			x.type2=type[1];
			x.type3=type[2];
			x.type4=type[3];
			x.type5=type[4];
			
			
			b.set(i,x);	
		}
		pstmt.close();
		stmt.close();
		conn.close();
		return b;
		
	}
}