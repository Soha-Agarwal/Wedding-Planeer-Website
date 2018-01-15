package com.musician;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

import javax.sql.DataSource;

import com.decoration.DecorationBean;

public class JDBCmdao {
	final String JDBC_DRIVER="com.mysql.jdbc.Driver";
	final String DB_URL="jdbc:mysql://localhost:3306/db101";
	final String USER="user101";
	final String PASSWORD="password";
	 Connection conn=null;
		PreparedStatement pstmt=null;
		ResultSet rs=null;
		Statement stmt=null;
		
		private DataSource dataSource;

	    public JDBCmdao(DataSource dataSource2) {	
	    	this.dataSource = dataSource;
}
		
	public ArrayList<MusicianBean> getMusicians() throws SQLException 
	{
		ArrayList<MusicianBean> d=new ArrayList<MusicianBean>();
		try {
			Class.forName(JDBC_DRIVER);

		
			conn=DriverManager.getConnection(DB_URL,USER,PASSWORD);
		
		String query="select * from Musicians";
		stmt=conn.createStatement();
		rs=stmt.executeQuery(query);
		while(rs.next())
		{
			MusicianBean db=new MusicianBean();
		db.mid=rs.getInt("m_id");
		db.name=rs.getString("Name");
		db.type=rs.getString("Type");
		db.phone=rs.getLong("Contact");
		db.price=rs.getInt("Price");
		db.img=rs.getString("Image");
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
}
