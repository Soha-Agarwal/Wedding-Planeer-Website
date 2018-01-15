package com.invitation.controller;

import com.invitationcards.*;
import java.io.IOException;
import java.sql.SQLException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.sql.DataSource;

import com.decoration.DecorationBean;
import com.decoration.JDBCtddao;


public class InvitationController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private DataSource dataSource;
    private JDBCidao productDAO;
    
    public void init() {
        productDAO = new JDBCidao(dataSource);
    }

   
    public InvitationController() {
        super();
    }

	
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try {
			 
            ArrayList<InvitationBean> products =new ArrayList<InvitationBean>();
            		products=(ArrayList<InvitationBean>) productDAO.getInvitation();
          System.out.println(products.size());
            request.setAttribute("cards", products); // Will be available as ${products} in JSP

    			RequestDispatcher dispatcher=request.getRequestDispatcher("/Invitation.jsp");
    			dispatcher.forward(request, response);
    		
    			System.out.println("mc");
            
        } catch (SQLException e) {
            throw new ServletException("Cannot obtain products from DB", e);
	
}

}
	}


