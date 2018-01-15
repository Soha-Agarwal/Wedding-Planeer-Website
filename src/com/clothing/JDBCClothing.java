package com.clothing;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

import javax.sql.DataSource;


public class JDBCClothing {
	final String JDBC_DRIVER="com.mysql.jdbc.Driver";
	final String DB_URL="jdbc:mysql://localhost:3306/db101";
	final String USER="user101";
	final String PASSWORD="password";
	 Connection conn=null;
		PreparedStatement pstmt=null,pstmtg=null,pstmtb=null;
		ResultSet rs=null,rsb,rs1b;
		Statement stmt=null,stmtg=null,stmtb=null;
		Statement stmt1=null;
		ResultSet rs1=null,rs1g=null;

		
		private DataSource dataSource;
		ArrayList<ClothingBean> bride1=new ArrayList<ClothingBean>();

	    public JDBCClothing(DataSource dataSource) {	        this.dataSource = dataSource;
}
		
	public ArrayList<ClothingBean> getGroomClothing() throws SQLException 
	{
		ArrayList<ClothingBean> d=new ArrayList<ClothingBean>();
		try {
			Class.forName(JDBC_DRIVER);

		
			conn=DriverManager.getConnection(DB_URL,USER,PASSWORD);
		
		String query="select * from GroomClothing";
		stmt=conn.createStatement();
		rs=stmt.executeQuery(query);
		while(rs.next())
		{
		ClothingBean db=new ClothingBean();
		db.gid=rs.getInt("G_id");
		db.name=rs.getString("name");
		db.price=rs.getInt("price");
		db.type=rs.getString("Type");
		db.img=rs.getString("image");
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
	public ArrayList<ClothingBean> getGroomClothing(int trad) throws SQLException 
	{
		ArrayList<ClothingBean> d1=new ArrayList<ClothingBean>();
		try {
			Class.forName(JDBC_DRIVER);

		
			conn=DriverManager.getConnection(DB_URL,USER,PASSWORD);
		
		String query7="select * from GroomClothing where Trad_id=?;";
		pstmtg = conn.prepareStatement(query7);
		pstmtg.setInt(1,trad);
		ResultSet rsg = pstmtg.executeQuery();
		while(rsg.next())
		{
		ClothingBean db=new ClothingBean();
		db.gid=rsg.getInt("G_id");
		db.name=rsg.getString("name");
		db.price=rsg.getInt("price");
		db.type=rsg.getString("Type");
		db.img=rsg.getString("image");
		db.Trad_id=rsg.getInt("Trad_id");
		d1.add(db);
		}
		
		String query8="select * from GroomClothing where Trad_id=6;";
		stmtg = conn.createStatement();
		rs1g = stmtg.executeQuery(query8);
		while(rs1g.next())
		{
		ClothingBean db=new ClothingBean();
		db.gid=rs1g.getInt("G_id");
		db.name=rs1g.getString("name");
		db.price=rs1g.getInt("price");
		db.type=rs1g.getString("Type");
		db.img=rs1g.getString("image");
		db.Trad_id=rs1g.getInt("Trad_id");
		d1.add(db);
		}
		return d1;	
		}catch(Exception s)
		{
			System.out.println("Sql exc");
			s.printStackTrace();
		}
		
		
		return d1; //repeated
	}
	public ArrayList<ClothingBean> getBrideClothing(int trad) throws SQLException 
	{
		ArrayList<ClothingBean> d2=new ArrayList<ClothingBean>();

		try {
			Class.forName(JDBC_DRIVER);

		
			conn=DriverManager.getConnection(DB_URL,USER,PASSWORD);
		
		String queryb="select * from BrideClothing where Trad_id=?;";
		pstmtb=conn.prepareStatement(queryb);
		pstmtb.setInt(1,trad);
		rs1b=pstmtb.executeQuery();
		while(rs1b.next())
		{
			ClothingBean db=new ClothingBean();
			db.gid=rs1b.getInt("B_id");
			db.name=rs1b.getString("name");
			db.img=rs1b.getString("image");

			db.price=rs1b.getInt("price");
			db.Trad_id=rs1b.getInt("Trad_id");
			d2.add(db);
		}
		String query1b="select * from BrideClothing where Trad_id=6;";
		stmtb=conn.createStatement();
		rsb=stmtb.executeQuery(query1b);
		while(rsb.next())
		{
			ClothingBean db=new ClothingBean();
			db.gid=rsb.getInt("B_id");
			db.name=rsb.getString("name");
			db.img=rsb.getString("image");

			db.price=rsb.getInt("price");
			db.Trad_id=rsb.getInt("Trad_id");
			d2.add(db);
		}
		return d2;	
		}catch(Exception s)
		{
			s.printStackTrace();
		}
		
		
		return d2; //repeated
	}
	public ArrayList<ClothingBean> getBrideClothing() throws SQLException 
	{
		try {
			Class.forName(JDBC_DRIVER);

		
			conn=DriverManager.getConnection(DB_URL,USER,PASSWORD);
		
		String query1="select * from BrideClothing";
		stmt=conn.prepareStatement(query1);
		rs1=stmt.executeQuery(query1);
		while(rs1.next())
		{
			ClothingBean db=new ClothingBean();
			db.gid=rs1.getInt("B_id");
			db.name=rs1.getString("name");
			db.img=rs1.getString("image");

			db.price=rs1.getInt("price");
			db.Trad_id=rs1.getInt("Trad_id");
			bride1.add(db);
		}
		
		return bride1;	
		}catch(SQLException s)
		{
			System.out.println("Sql exc");
		}
		catch(ClassNotFoundException c)
		{
			System.out.println("Class exc");
		}
		
		return bride1; //repeated
	}
}
