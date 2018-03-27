package com.EC.jsp.DAO;

import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.SQLException;
import java.sql.Types;

import com.EC.Util.DBConnection;
import com.EC.bean.products;

public class HomeDAOj 
{

	static Connection con=DBConnection.getConnection();
	static CallableStatement cs=null;
	
	public static products menf()
	{
		products p=new products();
		
		try {
			cs=con.prepareCall("{call select_first_menf(?,?,?,?)}");
		

		cs.registerOutParameter(1, Types.INTEGER);
		cs.registerOutParameter(2, Types.VARCHAR);
		cs.registerOutParameter(3, Types.INTEGER);
		cs.registerOutParameter(4, Types.BLOB);

		cs.executeUpdate();
		
		p.setPid(cs.getInt(1));
		p.setName(cs.getString(2));
		p.setP_price(cs.getInt(3));
		p.setP_image(cs.getBlob(4));
		
		} 
		catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return p;
	}
	
	public static products menc()
	{
		products p=new products();
		
		try {
			cs=con.prepareCall("{call select_first_menc(?,?,?,?)}");
		

		cs.registerOutParameter(1, Types.INTEGER);
		cs.registerOutParameter(2, Types.VARCHAR);
		cs.registerOutParameter(3, Types.INTEGER);
		cs.registerOutParameter(4, Types.BLOB);

		cs.executeUpdate();
		
		p.setPid(cs.getInt(1));
		p.setName(cs.getString(2));
		p.setP_price(cs.getInt(3));
		p.setP_image(cs.getBlob(4));
		
		} 
		catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return p;
	}
	
	public static products womenf()
	{
		products p=new products();
		
		try {
			cs=con.prepareCall("{call select_first_Womenf(?,?,?,?)}");
		

		cs.registerOutParameter(1, Types.INTEGER);
		cs.registerOutParameter(2, Types.VARCHAR);
		cs.registerOutParameter(3, Types.INTEGER);
		cs.registerOutParameter(4, Types.BLOB);

		cs.executeUpdate();
		
		p.setPid(cs.getInt(1));
		p.setName(cs.getString(2));
		p.setP_price(cs.getInt(3));
		p.setP_image(cs.getBlob(4));
		
		} 
		catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return p;
	}
	
	public static products womenc()
	{
		products p=new products();
		
		try {
			cs=con.prepareCall("{call select_first_Womenc(?,?,?,?)}");
		

		cs.registerOutParameter(1, Types.INTEGER);
		cs.registerOutParameter(2, Types.VARCHAR);
		cs.registerOutParameter(3, Types.INTEGER);
		cs.registerOutParameter(4, Types.BLOB);

		cs.executeUpdate();
		
		p.setPid(cs.getInt(1));
		p.setName(cs.getString(2));
		p.setP_price(cs.getInt(3));
		p.setP_image(cs.getBlob(4));
		
		} 
		catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return p;
	}
	
}
