package com.EC.DAO;

import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.SQLException;

import com.EC.Util.DBConnection;
import com.EC.bean.user;

public class SignupDAO {

public static int SignupDAO(user u)
{
	int i=0;
	try {
		Connection c=DBConnection.getConnection();
		
		String state="{call INSERT_USER(?,?,?,?)}";
		
		CallableStatement call=c.prepareCall(state);
		
		call.setString(1,u.getUname());
		call.setString(2,u.getUpwd());
		call.setString(3,u.getUmblno());
		call.setString(4, u.getUfname());
		
		
		i=call.executeUpdate();
	}
	catch (SQLException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}
	return i;

}
	
}
