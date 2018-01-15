package com.dec.controller;
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
 * Servlet implementation class ControllerDec
 */
public class ControllerDec extends HttpServlet {
	private static final long serialVersionUID = 1L;
   
    private DataSource dataSource;
    private JDBCtddao productDAO;

    public void init() {
        productDAO = new JDBCtddao(dataSource);
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        try {
            ArrayList<DecorationBean> products =(ArrayList) productDAO.getThemedeco();
            request.setAttribute("deco", products); // Will be available as ${products} in JSP
            request.getRequestDispatcher("/WEB-INF/Decoration.jsp").forward(request, response);
        } catch (SQLException e) {
            throw new ServletException("Cannot obtain products from DB", e);
        }
    }

}
