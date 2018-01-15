package login;
import mailer.*;

import java.io.*;

import javax.servlet.AsyncContext;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.mysql.jdbc.PreparedStatement;

import java.sql.*;


public class Login extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public Login() {
        super();
    }

  
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html");
		
		String emaila=request.getParameter("email");
		String password=request.getParameter("password");
		final String JDBC_DRIVER="com.mysql.jdbc.Driver";
		final String DB_URL="jdbc:mysql://localhost:3306/db101";
		final String USER="user101";
		final String PASSWORD="password";
		String query;
		try{
		Statement stmt=null;
		ResultSet rs=null;
		java.sql.PreparedStatement pstmt=null;
		Connection conn=DriverManager.getConnection(DB_URL,USER,PASSWORD);
		Class.forName(JDBC_DRIVER);	
		/*query="select email,password from login where email=? and password=?;";
		pstmt=conn.prepareStatement(query);
		pstmt.setString(1, emaila);
		pstmt.setString(2, password);
		rs=pstmt.executeQuery();
		HttpSession session = request.getSession(true);
		if(rs.next())
		{
			PrintWriter out2=response.getWriter();
            session.setAttribute("email", request.getParameter("email"));
            session.setAttribute("em",emaila);
            if(session.getAttribute("requ1")!=null)
            {
            	String send=(String) session.getAttribute("requ1");
                RequestDispatcher rd1 = request.getRequestDispatcher("/"+send);
                rd1.forward(request, response);

            }

			out2.print("<html><body>Welcome</body></head>");
            //response.sendRedirect("/index.htnl");


		}
		else
		{
			 session.invalidate();
             request.setAttribute("errorMessage", "Invalid user or password");
             RequestDispatcher rd = request.getRequestDispatcher("/us.jsp");
     		/*int fp=Integer.parseInt(request.getParameter("fp"));

             if(fp==1)
     		{
     			  
     		}*//*
             String to=emaila;
	             Mailer.send(to);
             rd.forward(request, response); 
						
		}
		
		rs.close();
		}*/
		query="select email,password from login where email=?";
		pstmt=conn.prepareStatement(query);
		pstmt.setString(1, emaila);
		PrintWriter out2=response.getWriter();
		rs=pstmt.executeQuery();
		HttpSession session = request.getSession(true);
		if(rs.next())
		{
		if(password.equals(rs.getString("password")))
		{
		       session.setAttribute("email", request.getParameter("email"));
	            session.setAttribute("em",emaila);
	            if(session.getAttribute("requ1")!=null)
	            {
	            	String send=(String) session.getAttribute("requ1");
	                RequestDispatcher rd1 = request.getRequestDispatcher("/"+send);
	                rd1.forward(request, response);

	            }

				out2.print("<html><body>Welcome<p><a href='index.html'>Home</a></p></body></head>");
		}
		else
		{
			 session.invalidate();
             request.setAttribute("errorMessage", "Invalid user or password");
             RequestDispatcher rd = request.getRequestDispatcher("/us.jsp");
     	
             String to=emaila;
	             Mailer.send(to);
             rd.forward(request, response); 	
		}
		}
		else
		{
			PrintWriter out21=response.getWriter();
			out21.print("<html><body><p>Email id doesnot exist.</p><p>Signup to continue&nbsp<a href='login.jsp'>Sigunp</a></p></body></head>");
			
		}
		}
		catch(ClassNotFoundException e)
		{
		System.out.println("Cannot find driver1");
		e.printStackTrace();
		}
		catch(SQLException se)
		{
		System.out.println("Cannot find driver2");
		se.printStackTrace();
		}
	}

}
