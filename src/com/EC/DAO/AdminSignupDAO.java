package com.EC.DAO;

import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import com.EC.Util.DBConnection;
import com.EC.bean.managacc;

public class AdminSignupDAO {

	public static int AdminSignupDAO(managacc ma)
	{
		int i=0;
		try {
			Connection c=DBConnection.getConnection();
			String state="{call INSERT_MACC(?,?,?,?)}";
			
			CallableStatement call=c.prepareCall(state);
			
			call.setString(1, ma.getSfname());
			call.setString(2, ma.getSname());
			call.setString(3,ma.getSpwd());
			call.setString(4, ma.getSmblno());
			
			i=call.executeUpdate();
		}
		catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return i;
	}
	
}
