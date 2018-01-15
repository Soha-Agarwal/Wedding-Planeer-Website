package com.invitationcards;



	import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

import javax.sql.DataSource;
	public class JDBCidao {
		final String JDBC_DRIVER="com.mysql.jdbc.Driver";
		final String DB_URL="jdbc:mysql://localhost:3306/db101";
		final String USER="user101";
		final String PASSWORD="password";
		Connection conn=null;
		ResultSet rs=null;
		Statement stmt=null;

		private DataSource dataSource;
		public JDBCidao(DataSource dataSource2)
		{
			this.dataSource=dataSource2;
		}

		public ArrayList <InvitationBean> getInvitation() throws SQLException
		{
			ArrayList <InvitationBean> i=new ArrayList <InvitationBean>();
			try
			{
				Class.forName(JDBC_DRIVER);
				conn=DriverManager.getConnection(DB_URL,USER,PASSWORD);
				String query="select * from Invitation_Cards;";
				stmt=conn.createStatement();
				rs=stmt.executeQuery(query);
				while(rs.next())
				{
					InvitationBean ib=new InvitationBean();
					ib.template_id=rs.getInt("Template_id");
					ib.image=rs.getString("Image");
					System.out.println(ib.image);
					ib.price=rs.getInt("Price");
					i.add(ib);
				}
				return i;

			}
			catch(ClassNotFoundException ce)
			{
				ce.printStackTrace();
			}
			catch(SQLException se)
			{
				System.out.println("Error in SQL syntax");
				se.printStackTrace();
			}
			
			return null;
		}
			
	}
