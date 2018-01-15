package shoppingcart;

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
public class Cart1Hist {
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
	public Cart1Hist(DataSource dataSource2)
	{
		this.dataSource=dataSource2;
	}

	public ArrayList <CartItemBean> getHistory(String em) throws SQLException
	{
		ArrayList <CartItemBean> b=new ArrayList <CartItemBean>();
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
		
		String query="select * from ShoppingCart;";
		stmt=conn.createStatement();
		rs=stmt.executeQuery(query);
		while(rs.next())
		{
			CartItemBean bb=new CartItemBean();
			bb.email=rs.getString("email");
			bb.strModelDescription=rs.getString("S_title");
			bb.dblUnitCost=rs.getInt("Price");
			bb.category=rs.getString("Category");
			bb.iQuantity=rs.getInt("Qty");
			bb.dblTotalCost=rs.getInt("TotalCost");

			b.add(bb);
		}
		
		
		
		stmt.close();
		stmt.close();
		conn.close();
		return b;
		
	}
}
