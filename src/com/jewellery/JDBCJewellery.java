package com.jewellery;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

import javax.sql.DataSource;
public class JDBCJewellery {
	final String JDBC_DRIVER="com.mysql.jdbc.Driver";
	final String DB_URL="jdbc:mysql://localhost:3306/db101";
	final String USER="user101";
	final String PASSWORD="password";
	Connection conn=null;
	PreparedStatement pstmt=null,pstmt1=null;
	ResultSet rs=null,rs1=null,rs2=null;
	Statement stmt=null,stmt1=null;

	private DataSource dataSource;
	public JDBCJewellery(DataSource dataSource)
	{
		this.dataSource=dataSource;
	}

	public ArrayList <JewelleryBean> getJewellery() throws SQLException
	{
		ArrayList <JewelleryBean> i=new ArrayList <JewelleryBean>();
		try
		{
			Class.forName(JDBC_DRIVER);
			conn=DriverManager.getConnection(DB_URL,USER,PASSWORD);
			String query="select * from Jewellery;";
			stmt=conn.createStatement();
			rs=stmt.executeQuery(query);
			while(rs.next())
			{
				JewelleryBean jb=new JewelleryBean();
				
				jb.Trad_id=rs.getInt("Trad_id"); 
				jb.Jewel_id=rs.getInt("Jewel_id");
				jb.type=rs.getString("type");
				jb.name=rs.getString("name");
				jb.img=rs.getString("image");
				jb.price=rs.getInt("price");
				i.add(jb);
			}
			stmt.close();
			conn.close();
			return i;
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
		
		return i;

	}
	
	public ArrayList <JewelleryBean> getJewellery(int jtrad) throws SQLException
	{
		ArrayList <JewelleryBean> i=new ArrayList <JewelleryBean>();
		try
		{
			Class.forName(JDBC_DRIVER);
			conn=DriverManager.getConnection(DB_URL,USER,PASSWORD);
			String query1="select * from Jewellery where Trad_id=?;";
			pstmt1=conn.prepareStatement(query1);
			pstmt1.setInt(1, jtrad);
			rs1=pstmt1.executeQuery();
			while(rs1.next())
			{
				JewelleryBean jb=new JewelleryBean();
				
				jb.Trad_id=rs1.getInt("Trad_id"); 
				jb.Jewel_id=rs1.getInt("Jewel_id");
				jb.type=rs1.getString("type");
				jb.name=rs1.getString("name");
				jb.img=rs1.getString("image");
				jb.price=rs1.getInt("price");
				i.add(jb);
			}
			pstmt1.close();
			conn.close();
			return i;
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
		
		
	
		return i;

}
}