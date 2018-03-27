package com.EC.jsp.DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import com.EC.Util.DBConnection;
import com.EC.bean.products;

public class SingleDAOj {

	static Connection con=DBConnection.getConnection();
	static PreparedStatement ps=null;
	static ResultSet rs=null;
	static String stmnt;
	
	public static products prodData(products p)
	{
		
		try
		{
		 stmnt="select p_name,p_quantity,p_image,p_desc,p_price from Products where pid=?";
		 ps=con.prepareStatement(stmnt);
		ps.setInt(1,p.getPid());
		ResultSet rs=ps.executeQuery();
		if(rs!=null)
		{
			while(rs.next())
			{
				p.setName(rs.getString("p_name"));
				p.setP_image(rs.getBlob("p_image"));
				p.setP_desc(rs.getString("p_desc"));
				p.setP_price(rs.getInt("p_price"));
				p.setP_quantity(rs.getInt("p_quantity"));
			}
		}
		}
		catch (Exception e) {
			e.printStackTrace();
		}
		
		return p;
	}
	
}
