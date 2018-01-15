package com.payment;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


public class LastPayment extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
    public LastPayment() {
        super();
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		PrintWriter out2=response.getWriter();

		out2.print("<html><body>Payment Done Successfully</body></head>");

	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	//	response.sendRedirect("/Payment.html");
		RequestDispatcher dispatcher=request.getRequestDispatcher("/Payment.html");
		dispatcher.forward(request, response);
	}

}
