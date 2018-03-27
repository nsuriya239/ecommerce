package com.EC.jsp.DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import com.EC.Util.DBConnection;

public class deleteDAOj {
	static Connection con=DBConnection.getConnection();
	static PreparedStatement cs=null;
	public static int delete(int pid,String uname)
	{
		
		int i=0;
		try {
			cs = con.prepareStatement("delete from cart where pid=? and uname=?");
			cs.setInt(1, pid); 
			cs.setString(2,uname);
		
		i=cs.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return i;
	}
}
