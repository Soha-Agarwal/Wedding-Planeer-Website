package com.caterer;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

import javax.sql.DataSource;

import java.util.*;
public class JDBCCaterer {
	final String JDBC_DRIVER="com.mysql.jdbc.Driver";
	final String DB_URL="jdbc:mysql://localhost:3306/db101";
	final String USER="user101";
	final String PASSWORD="password";
	Connection conn=null;
	PreparedStatement pstmt=null,pstmt2=null;
	ResultSet rs=null;
	Statement stmt=null;
	ResultSet rs1=null;
	Statement stmt1=null;


	private DataSource dataSource;
	public JDBCCaterer(DataSource dataSource2)
	{
		this.dataSource=dataSource2;
	}

	public ArrayList <CatererBean> getCaterer() throws SQLException
	{
		ArrayList <CatererBean> b=new ArrayList <CatererBean>();
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
		
		String query="select * from Package;";
		stmt=conn.createStatement();
		rs=stmt.executeQuery(query);
		while(rs.next())
		{
			CatererBean cb=new CatererBean();
			cb.packagename=rs.getString("Package_Name");
			cb.price=rs.getInt("Price");
			cb.veg_nonveg=rs.getString("Veg_NonVeg");
			cb.trad_id=rs.getInt("Trad_id");
			cb.trad_name=rs.getString("Trad_Name");

			b.add(cb);
		}
		int total=b.size();
		for(int i=0;i<total;i++)
		{
			String query1="select * from Package_Details where Package_Name=?;";
			pstmt=conn.prepareStatement(query1);
			pstmt.setString(1, b.get(i).packagename);
			System.out.println(b.get(i).packagename);
			rs1=pstmt.executeQuery();
			CatererBean x=new CatererBean();
			x.packagename=b.get(i).packagename;
			x.price=b.get(i).price;
			x.veg_nonveg=b.get(i).veg_nonveg;
			x.trad_id=b.get(i).trad_id;
			x.trad_name=b.get(i).trad_name;
			String[] type1;
			type1=new String[20];
			String[] name1;
			name1=new String[20];
			int n=0;
			while(rs1.next())
			{	
				
				type1[n]=rs1.getString("Type");
				name1[n]=rs1.getString("Name");
				n++;
				//x.p_id=rs1.getInt("P_id");
			}
			x.type1=type1[0];
			x.type2=type1[1];
			x.type3=type1[2];
			x.type4=type1[3];
			x.type5=type1[4];
			x.type6=type1[5];
			x.type7=type1[6];
			for(int h=0;h<5;h++)
			{
			}
			x.name1=name1[0];
			x.name2=name1[1];
			x.name3=name1[2];
			x.name4=name1[3];
			x.name5=name1[4];
			x.name6=name1[5];
			x.name7=name1[6];
			
			b.set(i,x);	
		}
		
		pstmt.close();
		stmt.close();
		conn.close();
		return b;
		
	}
	/*
	public ArrayList <CatererBean> getCaterer(int trad) throws SQLException
	{
		ArrayList <CatererBean> b=new ArrayList <CatererBean>();
		try
		{
			Class.forName(JDBC_DRIVER);
			conn=DriverManager.getConnection(DB_URL,USER,PASSWORD);
			String query="select * from Package where Trad_id=?;";
			PreparedStatement pstmt3 = conn.prepareStatement(query);
			pstmt3.setInt(1,trad);
			ResultSet rs3 = pstmt3.executeQuery(query);
			while(rs3.next())
			{
				CatererBean cb=new CatererBean();
				cb.packagename=rs3.getString("Package_Name");
				cb.price=rs3.getInt("Price");
				cb.veg_nonveg=rs3.getString("Veg_NonVeg");
				cb.trad_id=rs3.getInt("Trad_id");
				cb.trad_name=rs3.getString("Trad_Name");

				b.add(cb);
			}
			String query3="select * from Package where Trad_id=6;";
			PreparedStatement pstmt4 = conn.prepareStatement(query3);
			pstmt4.setInt(1,trad);
			rs1=pstmt4.executeQuery(query);
			while(rs1.next())
			{
				CatererBean cb=new CatererBean();
				cb.packagename=rs1.getString("Package_Name");
				cb.price=rs1.getInt("Price");
				cb.veg_nonveg=rs1.getString("Veg_NonVeg");
				cb.trad_id=rs1.getInt("Trad_id");
				cb.trad_name=rs1.getString("Trad_Name");

				b.add(cb);
			}
			int total=b.size();
			for(int i=0;i<total;i++)
			{
				String query2="select * from Package_Details where Package_Name=?;";
				pstmt2=conn.prepareStatement(query2);
				pstmt2.setString(1, b.get(i).packagename);
				ResultSet rs2 = pstmt.executeQuery();
				CatererBean x=new CatererBean();
				x.packagename=b.get(i).packagename;
				x.price=b.get(i).price;
				x.veg_nonveg=b.get(i).veg_nonveg;
				x.trad_id=b.get(i).trad_id;
				x.trad_name=b.get(i).trad_name;
				String[] type1;
				type1=new String[20];
				String[] name1;
				name1=new String[20];
				int n=0;
				while(rs2.next())
				{	
					
					type1[n]=rs2.getString("Type");
					name1[n]=rs2.getString("Name");
					n++;
					//x.p_id=rs1.getInt("P_id");
				}
				x.type1=type1[0];
				x.type2=type1[1];
				x.type3=type1[2];
				x.type4=type1[3];
				x.type5=type1[4];
				for(int h=0;h<5;h++)
				{
				}
				x.name1=name1[0];
				x.name2=name1[1];
				x.name3=name1[2];
				x.name4=name1[3];
				x.name5=name1[4];
				
				b.set(i,x);	
			}
			
			pstmt.close();
			stmt.close();
			conn.close();
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
		return b;

		
		
	}*/
}