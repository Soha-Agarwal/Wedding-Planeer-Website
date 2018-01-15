package com.decoration;

import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

import javax.sql.DataSource;

import com.mysql.jdbc.Blob;

public class JDBCtddao {

	final String JDBC_DRIVER="com.mysql.jdbc.Driver";
	final String DB_URL="jdbc:mysql://localhost:3306/db101";
	final String USER="user101";
	final String PASSWORD="password";
	 Connection conn=null;
		PreparedStatement pstmt=null;
		ResultSet rs=null,rs1=null;
		Statement stmt=null,stmt1=null;
		
		private DataSource dataSource;

	    public JDBCtddao(DataSource dataSource2) {	        this.dataSource = dataSource;
}
		
	public ArrayList<DecorationBean> getCustomdeco() throws SQLException 
	{
		ArrayList<DecorationBean> d=new ArrayList<DecorationBean>();
		try {
			Class.forName(JDBC_DRIVER);

		
			conn=DriverManager.getConnection(DB_URL,USER,PASSWORD);
		
		String query="select * from Decoration where Type1='Custom';";
		stmt=conn.createStatement();
		rs=stmt.executeQuery(query);
		while(rs.next())
		{
		DecorationBean db=new DecorationBean();
		db.did=rs.getInt("Dec_id");
		db.title=rs.getString("Dec_Title");
		db.price=rs.getInt("Price");
		db.type1=rs.getString("Type1");
		db.type2=rs.getString("Type2");
		db.img=rs.getString("Image1");
		db.Trad_id=rs.getInt("Trad_id");
		d.add(db);
		}
		return d;	
		}catch(SQLException s)
		{
			System.out.println("Sql exc");
		}
		catch(ClassNotFoundException c)
		{
			System.out.println("Class exc");
		}
		
		return d; //repeated
	}
	public ArrayList<ThemeBean> getThemedeco() throws SQLException 
	{
		ArrayList<ThemeBean> d1=new ArrayList<ThemeBean>();
		try {
			Class.forName(JDBC_DRIVER);

		
			conn=DriverManager.getConnection(DB_URL,USER,PASSWORD);
		
		String query1="select * from Decoration where Type1='Theme';";
		stmt1=conn.createStatement();
		rs1=stmt1.executeQuery(query1);
		while(rs1.next())
		{
		ThemeBean db=new ThemeBean();
		db.did=rs1.getInt("Dec_id");
		db.title=rs1.getString("Dec_Title");
		db.price=rs1.getInt("Price");
		db.type1=rs1.getString("Type1");
		db.img1=rs1.getString("Image1");
		db.img2=rs1.getString("Image2");
		db.img3=rs1.getString("Image3");
		db.Trad_id=rs1.getInt("Trad_id");
		d1.add(db);
		}
		return d1;	
		}catch(Exception s)
		{
			s.printStackTrace();
		}
		
		
		return d1; //repeated
	}
}
