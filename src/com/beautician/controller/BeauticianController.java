package com.beautician.controller;

import java.io.IOException;
import java.sql.SQLException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.sql.DataSource;

import com.beautician.BeauticianBean;
import com.beautician.JDBCBeautician;

/**
 * Servlet implementation class BeauticianController
 */
public class BeauticianController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private DataSource dataSource;
	private JDBCBeautician productdao;
	
	public void init()
	{
		productdao=new JDBCBeautician (dataSource);
	}
    public BeauticianController() {
        super();
        // TODO Auto-generated constructor stub
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		try
		{
			
				ArrayList <BeauticianBean> products=(ArrayList<BeauticianBean>)productdao.getBeautician();
				request.setAttribute("beautician",products);
				request.getRequestDispatcher("/Beautician.jsp").forward(request,response);
			
			
		}
		catch(Exception se)
		{
			se.printStackTrace();
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

}
