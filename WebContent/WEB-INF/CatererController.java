package com.caterer.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.sql.DataSource;

import com.caterer.*;

/**
 * Servlet implementation class CatererController
 */
public class CatererController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private DataSource dataSource;
	private JDBCCaterer productdao;
	
	public void init()
	{
		productdao=new JDBCCaterer (dataSource);
	}
    public CatererController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		try
		{
			
				ArrayList <CatererBean> products=(ArrayList<CatererBean>)productdao.getCaterer();
				request.setAttribute("caterer",products);
				request.getRequestDispatcher("/Caterer1.jsp").forward(request,response);
			
			
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
