package images;

import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.logging.Logger;

import javax.annotation.Resource;
import javax.servlet.ServletException;
import javax.servlet.ServletOutputStream;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.sql.DataSource;

import com.decoration.*;
import com.mysql.jdbc.Connection;
public class ImageServelet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	final String JDBC_DRIVER="com.mysql.jdbc.Driver";
	final String DB_URL="jdbc:mysql://localhost:3306/db101";
	final String USER="user101";
	final String PASSWORD="password";
	 java.sql.Connection conn=null;
		PreparedStatement pstmt=null;
		ResultSet rs=null;
		Statement stmt=null;
		    private JDBCtddao productDAO;
		    
		    public void init() {
		        productDAO = new JDBCtddao(dataSource);
		    }

	 
    
	// private static final String SQL_FIND = "SELECT img FROM Decoration WHERE Dec_Id = ";

	    @Resource(name="jdbc/yourDB") // For Tomcat, define as <Resource> in context.xml and declare as <resource-ref> in web.xml.
	    private DataSource dataSource;
        BufferedInputStream bin;
		BufferedOutputStream bout;
		InputStream in;
		OutputStream out;
	    @Override
	    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	       // String imageName = request.getPathInfo().substring(1); // Returns "foo.png".
	      
	       /* try {
	        	Class.forName(JDBC_DRIVER);
				conn=DriverManager.getConnection(DB_URL,USER,PASSWORD);
				PreparedStatement statement=conn.prepareStatement(SQL_FIND);
	        	int dec=101;
	            statement.setInt(1,101 );

	            ResultSet resultSet = statement.executeQuery();
	                if (resultSet.next()) {
	                    byte[] content = resultSet.getBytes("content");
	                    //response.setContentType(getServletContext().getMimeType(imageName));
	                    response.setContentLength(content.length);
	                    response.getOutputStream().write(content);
	                } else {
	                    response.sendError(HttpServletResponse.SC_NOT_FOUND); // 404.
	                }
	            
	        } catch (SQLException | ClassNotFoundException e) {
	            throw new ServletException("Something failed at SQL/DB level.", e);
	        }
	    }*/
	    	
			/*try {
				ArrayList<DecorationBean> products =(ArrayList) productDAO.getThemedeco();
	            //request.setAttribute("imag", products.get(0).img);
	            response.setContentType("image/jpeg");
                OutputStream o = response.getOutputStream();
              o.write(products.get(0).bytes);
              System.out.println(products.get(0).bytes);
               o.flush(); 
               o.close();

			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
	    	/*try{
	    	    int ID = Integer.parseInt(request.getParameter("Dec_id"));

	    	stmt = conn.createStatement();
           String sql = "SELECT * FROM Decoration WHERE Dec_id="+ID+"";
       
          ResultSet result = stmt.executeQuery(sql);
            if(result.next()){
                in=result.getBinaryStream(6);//Since my data was in third column of table.
            }
            bin = new BufferedInputStream(in);  
            bout = new BufferedOutputStream(out);  
            int ch=0;   
            while((ch=bin.read())!=-1)  
                {  
                bout.write(ch);  
            }  

        } catch (SQLException ex) {
        }finally{
        try{
            if(bin!=null)bin.close();  
            if(in!=null)in.close();  
            if(bout!=null)bout.close();  
            if(conn!=null)conn.close();
        }catch(IOException | SQLException ex){
            System.out.println("Error : "+ex.getMessage());
        }
    }
*/

    }  
	    	

}
