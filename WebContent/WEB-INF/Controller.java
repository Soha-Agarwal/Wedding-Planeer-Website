package com;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class Controller
 */
public class Controller extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Controller() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String page=request.getParameter("param");
		PrintWriter out=new PrintWriter(page);
		out.println(page);
		switch(page)
		{
		case "deco":
	        request.getRequestDispatcher("/Decoration.jsp").forward(request, response);
	        break;
		case "jwell":
	        request.getRequestDispatcher("/Jewellery.jsp").forward(request, response);
	        break;
		case "caterer":
			request.getRequestDispatcher("/Caterer.jsp").forward(request, response);
	        break;
		case "beautician":
			request.getRequestDispatcher("/Beautician.jsp").forward(request, response);
	        break;
		case "cards":
			request.getRequestDispatcher("/Cards.jsp").forward(request, response);
	        break;
		case "music":
			request.getRequestDispatcher("/Music.jsp").forward(request, response);
	        break;
		case "photos":
			request.getRequestDispatcher("/Photos.jsp").forward(request, response);
	        break;
		case "clothing":
			request.getRequestDispatcher("/clothing.jsp").forward(request, response);
	        break;
		case "login":
			request.getRequestDispatcher("/login.jsp").forward(request, response);
			break;
		}

	}

}
