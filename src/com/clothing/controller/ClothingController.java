package com.clothing.controller;

import java.io.IOException;
import java.sql.SQLException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.sql.DataSource;

import com.clothing.ClothingBean;
import com.clothing.JDBCClothing;
import com.invitationcards.InvitationBean;
import com.invitationcards.JDBCidao;


public class ClothingController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private DataSource dataSource;
    private JDBCClothing productDAO;
    
    public void init() {
        productDAO = new JDBCClothing(dataSource);
    }

   
    
    public ClothingController() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try {
			 
            ArrayList<ClothingBean> products =new ArrayList<ClothingBean>();
            		products=(ArrayList<ClothingBean>) productDAO.getGroomClothing();
          System.out.println(products.size());
            request.setAttribute("groom", products); // Will be available as ${products} in JSP
            ArrayList<ClothingBean> products1 =new ArrayList<ClothingBean>();
    		products1=(ArrayList<ClothingBean>) productDAO.getBrideClothing();
            request.setAttribute("bride", products1); // Will be available as ${products} in JSP

    			RequestDispatcher dispatcher=request.getRequestDispatcher("/clothing.jsp");
    			dispatcher.forward(request, response);
    		
            
        } catch (SQLException e) {
        	System.out.println(e);
}
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	}

}
