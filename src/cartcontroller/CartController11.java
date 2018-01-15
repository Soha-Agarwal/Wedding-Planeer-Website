package cartcontroller;
import java.sql.*;

import shoppingcart.CartBean;
import shoppingcart.CartItemBean;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.sql.DataSource;

import com.venue.*;

/**
 * Servlet implementation class CartController1
 */
public class CartController11 extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private DataSource dataSource;
    private JDBCVenue productDAO;
    
    public void init() {
        productDAO = new JDBCVenue(dataSource);
    }
    /**
     * @see HttpServlet#HttpServlet()
     */
	 public void doPost(HttpServletRequest request, HttpServletResponse response)
			    throws ServletException, IOException {
			 
			  String strAction = request.getParameter("action");
			  String date=request.getParameter("bookdate");
			  HttpSession session = request.getSession();

			  Object objCartBean = session.getAttribute("cart");

			   
			  if(strAction!=null && !strAction.equals("")) {
			   if(strAction.equals("add")) {
			    try {
					addToCart(request);
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
			   } else if (strAction.equals("Update")) {
			    updateCart(request);
			   } else if (strAction.equals("Delete")) {
			    deleteCart(request);
			   }
			    else if(strAction.equals("Logout"))
			    {
			    	session.invalidate();
			    	
			    	((CartBean) objCartBean).addtoDatabase();
			    	
					  //response.sendRedirect("index.html");

			    }else if( strAction.equals("bookdate"))
			    {
				    try {
						addToCart(request);
					} catch (SQLException e1) {
						// TODO Auto-generated catch block
						e1.printStackTrace();
					}
				    String strDescription = request.getParameter("description");
				    try {
						productDAO.bookdtdata(strDescription);
					} catch (SQLException e) {
						// TODO Auto-generated catch block
						e.printStackTrace();
					}
			    }
			   }
			  
			  response.sendRedirect("ShoppingCart.jsp");
			 }
			  
			 protected void deleteCart(HttpServletRequest request) {
			  HttpSession session = request.getSession();
			  String strItemIndex = request.getParameter("itemIndex");
			  CartBean cartBean = null;
			   
			  Object objCartBean = session.getAttribute("cart");
			  if(objCartBean!=null) {
			   cartBean = (CartBean) objCartBean ;
			  } else {
			   cartBean = new CartBean();
			  }
			  cartBean.deleteCartItem(strItemIndex);
			 }
			  
			 protected void updateCart(HttpServletRequest request) {
			  HttpSession session = request.getSession();
			  String strQuantity = request.getParameter("quantity");
			  String strItemIndex = request.getParameter("itemIndex");
			  
			  CartBean cartBean = null;
			   
			 Object objCartBean = session.getAttribute("cart");
			  if(objCartBean!=null) {
			   cartBean = (CartBean) objCartBean ;
			  } else {
			   cartBean = new CartBean();
			  }
			  cartBean.updateCartItem(strItemIndex, strQuantity);
			 }
			  
			 @SuppressWarnings("null")
			protected void addToCart(HttpServletRequest request) throws SQLException {
				 final String JDBC_DRIVER="com.mysql.jdbc.Driver";
				 final String DB_URL="jdbc:mysql://localhost:3306/db101";
				 final String USER="user101";
				 final String PASSWORD="password";
				 Connection conn = null;
				 PreparedStatement pstmt=null;
			  HttpSession session = request.getSession();
			 // String strModelNo = request.getParameter("modelNo");
			  String strDescription = request.getParameter("description");
			  String strPrice = request.getParameter("price");
			  String strQuantity = request.getParameter("quantity");
			  String category=request.getParameter("category");
			  System.out.println("Category"+category);
			  String email=request.getParameter("email");
			  if(category.equals("Venue"))
			  {
				  try {
					Class.forName(JDBC_DRIVER);
					conn=DriverManager.getConnection(DB_URL,USER,PASSWORD);
					java.sql.Date sqlDate = new java.sql.Date(new java.util.Date().getTime());
					String query="update Venue set BookingDate=? where NameofVenue=?";
					pstmt=conn.prepareStatement(query);
					pstmt.setDate(1,sqlDate);
					pstmt.setString(2,strDescription );
					pstmt.executeUpdate();
				} catch (ClassNotFoundException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
				  
					
			  }
			  CartBean cartBean = null;
			   
			  Object objCartBean = session.getAttribute("cart");
			  System.out.println("Email"+email);
			  /*email=(String) session.getAttribute(email);
			  System.out.println("Email"+email);*/

			  if(objCartBean!=null) {
			   cartBean = (CartBean) objCartBean ;
			  } else {
			   cartBean = new CartBean();
			   session.setAttribute("cart", cartBean);
			  }
			   
			  cartBean.addCartItem(strDescription, strPrice, strQuantity,category,email);
			 }
			 
			}



