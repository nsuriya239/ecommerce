package com.EC.jsp.DAO;

import java.sql.*;
import java.util.ArrayList;

import com.EC.Util.DBConnection;
import com.EC.bean.products;

public class checkoutDAOj {
	static Connection con=DBConnection.getConnection();
	static String stmnt;
	
	public static ArrayList<products> selectcart(String uname)
	{
		ArrayList<products> ap=ap=new ArrayList<>();
		products p=null;
		
		PreparedStatement ps=null;
		ResultSet rs=null;
		
		stmnt="select PID,P_QTY,P_SIZE from cart where uname=?";
        try {
			ps=con.prepareStatement(stmnt);
			ps.setString(1, uname);
			rs=ps.executeQuery();
        
			if(rs!=null)
			{
				int cou=0;
				while(rs.next())
				{
					p=new products();
					p.setPid(rs.getInt(1));
					p.setP_quantity(rs.getInt(2));
					p.setP_size(rs.getInt(3));
					p=selectproduct(p);
					ap.add(p);
					p=null;
					//System.out.println(cou++);
				}
				//System.out.println(ap);
			}
        } catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return ap;
	}
	
	private static products selectproduct(products p)
	{
		PreparedStatement ps=null;
		ResultSet rs=null;
		stmnt="select p_name,p_image,p_price from Products where pid=?";
		try
		{
			ps=con.prepareStatement(stmnt);
			ps.setInt(1,p.getPid());
			 rs=ps.executeQuery();
			if(rs!=null)
			{
				while(rs.next())
            	{
            	p.setName(rs.getString(1));
            	p.setP_image(rs.getBlob(2));
            	p.setP_price(rs.getDouble(3));
            	}
			}
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		return p;
	}
	
}
