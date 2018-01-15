package com.jewellery.controller;

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
import com.jewellery.*;

public class JewelleryController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private DataSource dataSource;
    private JDBCJewellery productDAO;
    
    public void init() {
        productDAO = new JDBCJewellery(dataSource);
    }
   
    
    public JewelleryController() {
        super();
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try {
			 
            ArrayList<JewelleryBean> products =new ArrayList<JewelleryBean>();
            		products=(ArrayList<JewelleryBean>) productDAO.getJewellery();
          System.out.println(products.size());
            request.setAttribute("jewellery", products); // Will be available as ${products} in JSP
           

    			RequestDispatcher dispatcher=request.getRequestDispatcher("/Jewellery.jsp");
    			dispatcher.forward(request, response);
    		
            
        } catch (SQLException e) {
        	System.out.println(e);
}
	}

	
	
}
