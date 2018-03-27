 package com.EC.Util;

import java.sql.*;

public class DBConnection {

	public static Connection getConnection()
	{
		
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		Connection c = null;
		try {
			c = DriverManager.getConnection("jdbc:oracle:thin:@106.51.0.187:1521:oracle","suriya","suriya");
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return c;
	}
//	public static void main(String[] args) {
//		DBConnection con=new DBConnection();
//		if(con.getConnection()!=null)
//		{
//			System.out.println("Connected");
//		}
//		else
//		{
//			System.out.println("NO Connection");
//		}
//	}
}


