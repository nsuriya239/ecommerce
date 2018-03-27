package com.EC.DAO;

import java.sql.PreparedStatement;
import java.sql.ResultSet;

import com.EC.Util.DBConnection;
import com.EC.bean.managacc;

public class AdminLoginDAO {

	
	public static managacc AdminLoginDAO(String uname)
	{
		
		managacc ma =new managacc();
		
		try
		{
		java.sql.Connection c= DBConnection.getConnection();
		
		PreparedStatement ps=null;
		
		String state="select spwd,m_type from MANAGING_ACCOUNTS where sname=?";
		
		ps=c.prepareStatement(state);
	
		ps.setString(1,uname);
		
		
		ResultSet rs=ps.executeQuery();
		while(rs.next())
		{
			ma.setSpwd(rs.getString(1));
			ma.setM_type(rs.getString(2));
		}
		
		ma.setSname(uname);
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		
		return ma;
	}
	
}
