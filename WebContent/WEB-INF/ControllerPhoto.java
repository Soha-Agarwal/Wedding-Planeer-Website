package com.photography.controller;
import com.invitationcards.InvitationBean;
import com.photography.*;

import java.util.*;
import java.io.IOException;
import java.sql.SQLException;

import javax.annotation.Resource;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpServletRequest;
import javax.sql.DataSource;
public class ControllerPhoto extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private DataSource dataSource;
	private JDBCPhoto productdao;
	
	public void init()
	{
		productdao=new JDBCPhoto (dataSource);
	}
    
   
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try {
			 
            ArrayList<PhotoBean> products =new ArrayList<PhotoBean>();
            		products=(ArrayList<PhotoBean>) productdao.getPhotographer();
          System.out.println(products.size());
            request.setAttribute("photographer", products); // Will be available as ${products} in JSP

    			RequestDispatcher dispatcher=request.getRequestDispatcher("/Invitation.jsp");
    			dispatcher.forward(request, response);
    		
            
        } catch (SQLException e) {
        	System.out.println(e);
}

}
	}


	
	

