package com.carthistory;

import java.io.IOException;
import java.sql.*;
import java.util.ArrayList;

import shoppingcart.*;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


public class CartHistory extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
    public CartHistory() {
        super();
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		final String JDBC_DRIVER="com.mysql.jdbc.Driver";
		final String DB_URL="jdbc:mysql://localhost/3306/db101";
		final String USER="user101";
		final String PASSWORD="password";
		Connection conn=null;
		PreparedStatement pstmt=null;
		Statement stmt=null;
		ResultSet rs=null;
		try
		{
			Class.forName(JDBC_DRIVER);
			conn=DriverManager.getConnection(DB_URL,USER,PASSWORD);
			pstmt=conn.prepareStatement("select * from ShoppingCart where email=?");
			HttpSession session=request.getSession();
			String email=(String) session.getAttribute("email");
			pstmt.setString(1, email);
			rs=pstmt.executeQuery();
			ArrayList<CartItemBean> al=new ArrayList<CartItemBean>();
			while(rs.next())
			{
				CartItemBean cib=new CartItemBean();
				cib.strModelDescription=rs.getString("S_title");
				cib.dblUnitCost=rs.getInt("Price");
				cib.category=rs.getString("Category");
				cib.iQuantity=rs.getInt("Qty");
				cib.dblTotalCost=rs.getInt("TotalCost");
				al.add(cib);
			}
			request.setAttribute("history", al);
			System.out.println("Added");
			RequestDispatcher dispatcher=request.getRequestDispatcher("/History.jsp");
			dispatcher.forward(request, response);
					
		}catch(Exception e)
		{
			e.printStackTrace();
		}
	}

	

}
