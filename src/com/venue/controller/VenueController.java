package com.venue.controller;

import java.io.IOException;
import java.sql.SQLException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.sql.DataSource;

import com.photography.JDBCPhoto;
import com.photography.PhotoBean;
import com.venue.*;


public class VenueController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private DataSource dataSource;
	private JDBCVenue productdao;
	 
	public void init()
	{
		productdao=new JDBCVenue(dataSource);
	}
    public VenueController() {
        super();
    }


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try {
			 
            ArrayList<VenueBean> products =new ArrayList<VenueBean>();
            		products=(ArrayList<VenueBean>) productdao.getVenue();
          System.out.println(products.size());
            request.setAttribute("venue", products); // Will be available as ${products} in JSP

    			RequestDispatcher dispatcher=request.getRequestDispatcher("/Venue.jsp");
    			dispatcher.forward(request, response);
    		
            
        } catch (SQLException e) {
        	System.out.println(e);
}
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

}
