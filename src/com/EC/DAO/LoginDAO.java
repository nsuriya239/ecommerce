package com.EC.DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.servlet.http.HttpSession;

import com.EC.Util.DBConnection;
import com.EC.bean.user;

public class LoginDAO {

	public static user LoginDAO(String uname)
	{
		user u1=new user();
		
		try
		{
		Connection c= DBConnection.getConnection();
		
		PreparedStatement ps=null;
		
		String state="select upwd from useraccounts where uname=?";
		
		
		ps=c.prepareStatement(state);
	
		ps.setString(1,uname);
		
		ResultSet rs=ps.executeQuery();
		while(rs.next())
		{
			u1.setUpwd(rs.getString(1));
		}
		u1.setUname(uname);
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		
		
		return u1;
	}
	
}
