package com.EC.jsp.DAO;

import java.sql.*;
import java.util.ArrayList;

import com.EC.Util.DBConnection;
import com.EC.bean.products;

public class OrderDAOj 
{

	static Connection con=DBConnection.getConnection();
	static String stmnt;
	
	public static ArrayList<products> selectorder(String uname)
	{
		PreparedStatement ps=null;
		 ResultSet rs=null;
		 
		ArrayList<products> ap=new ArrayList<>();
		products p=null;
		
		stmnt="select * from ORDER_DET where uname=?";
        try {
			ps=con.prepareStatement(stmnt);
			ps.setString(1, uname);
			rs=ps.executeQuery();
        //System.out.println(uname);
			if(rs!=null)
			{
				while(rs.next())
				{
					p=new products();
					p.setOid(rs.getInt(1));
					p.setPid(rs.getInt(2));
					p.setP_quantity(rs.getInt(3));
					p.setP_size(rs.getInt(5));
					p.setStatus(rs.getString(6));
					p=selectpro(p);
					ap.add(p);
					p=null;
				}
			}
        } catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return ap;
	}
	
	private static products selectpro(products p)
	{
		PreparedStatement ps=null;
		 ResultSet rs=null;
		
		stmnt="select p_name,p_image,p_price from Products where pid=?";
			 try {
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
			 } catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
		return p;
	}
}
