package com.carthistory;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.ResultSetMetaData;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

import javax.sql.DataSource;

import shoppingcart.*;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.sql.DataSource;

import com.musician.JDBCmdao;


public class CartHistory extends HttpServlet {
	private static final long serialVersionUID = 1L;
    private Cart1Hist productDAO;
	DataSource dataSource;

    
    public CartHistory() {
        super();
    }
    public void init() {
        productDAO = new Cart1Hist(dataSource);
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		
		
		try
		{
			
			HttpSession session=request.getSession();
			String email=(String) session.getAttribute("email");
			ArrayList<CartItemBean> al=new ArrayList<CartItemBean>();
			al=productDAO.getHistory(email);
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
