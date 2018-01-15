package com.tc.controller;

import java.io.IOException;
import java.io.InputStream;
import java.sql.SQLException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.ServletOutputStream;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.sql.DataSource;

import com.decoration.DecorationBean;
import com.decoration.JDBCtddao;

import jdk.nashorn.internal.ir.RuntimeNode.Request;

import com.decoration.*;

import java.sql.*;
import java.util.ArrayList;
import java.io.IOException;

import javax.annotation.Resource;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.sql.DataSource;

/**
 * Servlet implementation class ThemeCustom
 */
public class ThemeCustom extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	 private DataSource dataSource;
	    private JDBCtddao productDAO;
	    
	    public void init() {
	        productDAO = new JDBCtddao(dataSource);
	    }

 
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		 try {
			 
	            if(request.getParameter("Custom")!=null)
	    		{

		            ArrayList<DecorationBean> products =new ArrayList<DecorationBean>();
		            		products=(ArrayList<DecorationBean>) productDAO.getCustomdeco();
		          
		            request.setAttribute("products", products); // Will be available as ${products} in JSP
	    			RequestDispatcher dispatcher=request.getRequestDispatcher("/Custom.jsp");
	    			dispatcher.forward(request, response);
	    		}
	    		if(request.getParameter("Theme")!=null)
	    		{

		            ArrayList<ThemeBean> products1 =new ArrayList<ThemeBean>();
		            		products1=(ArrayList<ThemeBean>) productDAO.getThemedeco();
		          
		            request.setAttribute("theme", products1); // Will be available as ${products} in JSP
	    			RequestDispatcher dispatcher=request.getRequestDispatcher("/Theme.jsp");
	    			dispatcher.forward(request, response);
	    		}	            
	            

	            
	        } catch (SQLException e) {
	            throw new ServletException("Cannot obtain products from DB", e);
		
	}

}
}