package com.musician.controller;
import com.musician.*;
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


public class MusicController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private DataSource dataSource;
    private JDBCmdao productDAO;
    
    public void init() {
        productDAO = new JDBCmdao(dataSource);
    }

   
    public MusicController() {
        super();
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try {
			 
            ArrayList<MusicianBean> products =new ArrayList<MusicianBean>();
            		products=(ArrayList<MusicianBean>) productDAO.getMusicians();
          
            request.setAttribute("music", products); // Will be available as ${products} in JSP
          
    			RequestDispatcher dispatcher=request.getRequestDispatcher("/Music.jsp");
    			dispatcher.forward(request, response);
    		

            
        } catch (SQLException e) {
            throw new ServletException("Cannot obtain products from DB", e);
	
}

}
	}


