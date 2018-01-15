package com.tradition.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.sql.DataSource;

import com.caterer.*;
import com.clothing.*;
import com.jewellery.JDBCJewellery;
import com.jewellery.JewelleryBean;
import com.venue.JDBCVenue;
import com.venue.VenueBean;

/**
 * Servlet implementation class TraditionServlet
 */
public class TraditionServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
private JDBCJewellery productj;
private JDBCClothing productc;
private JDBCVenue productv;
private DataSource dataSource;

	public void init()
	{
		productj=new JDBCJewellery (dataSource);
		productc=new JDBCClothing (dataSource);
		productv=new JDBCVenue(dataSource);

	}
    
    public TraditionServlet() {
        super();
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int page=Integer.parseInt(request.getParameter("param"));
		System.out.println(page);
		ArrayList<ClothingBean> productcloth = null;
		ArrayList<ClothingBean> productcloth1=null;
		ArrayList<JewelleryBean> productjewell=null;
		ArrayList<VenueBean> productven=null;

		try {
			productcloth = (ArrayList<ClothingBean>)productc.getBrideClothing(page);
			productcloth1 = (ArrayList<ClothingBean>)productc.getGroomClothing(page);
			productjewell= (ArrayList<JewelleryBean>)productj.getJewellery(page);
			productven= (ArrayList<VenueBean>)productv.getVenue(page);

			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		//request.setAttribute("caterer1",productcat1);
		request.setAttribute("bride1",productcloth);
		request.setAttribute("groom1",productcloth1);
		request.setAttribute("jewell",productjewell);
		request.setAttribute("ven",productven);


		RequestDispatcher dispatcher=request.getRequestDispatcher("/Tradition.jsp");
		dispatcher.forward(request, response);
	}
	

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

}
