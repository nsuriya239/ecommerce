package com.EC.jsp.DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import com.EC.Util.DBConnection;
import com.EC.bean.products;

public class PlpDAOj 
{

	static Connection con=DBConnection.getConnection();
	static PreparedStatement cs=null;
	static ResultSet rs=null;
	
	public static ArrayList<products> selectproduct(String cat,String scat)
	{
		
		ArrayList<products> ap=new ArrayList<>();
		products p=null;
		try
		{
			
			cs=con.prepareStatement("SELECT PID,P_NAME,P_PRICE,P_IMAGE FROM PRODUCTS WHERE CAT_NAME=? and SCAT_NAME=?");
			cs.setString(1, cat);
			cs.setString(2, scat);
			
			rs=cs.executeQuery();
			
			if(rs!=null)
			{
				while(rs.next())
                 {
					p=new products();
                	 p.setPid(rs.getInt("PID"));
                	 p.setName(rs.getString("P_NAME"));
                	 p.setP_price(rs.getInt("P_PRICE"));
                	 p.setP_image(rs.getBlob("P_IMAGE"));
                	 ap.add(p);
                	 p=null;	
                 }
			}
			
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		
		return ap;
	}
	
}
