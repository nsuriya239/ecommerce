package com.EC.DAO;

import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import com.EC.Util.DBConnection;
import com.EC.bean.cart;
import com.EC.bean.delivery_det;

public class AdddeliverydetDAO {

	
	static Connection con=DBConnection.getConnection();
	static String stmnt="";
	 
	
	public static boolean checkDelivdet(String uname)
	{
		PreparedStatement ps=null;
		 ResultSet rs=null;
		 boolean flag=false;
		 stmnt="select * from DELIVERY_DETAILS where uname=?";
		 try {
			ps=con.prepareStatement(stmnt);
		
			ps.setString(1, uname);
			rs=ps.executeQuery();
			flag= rs.next();
		 } catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		 return flag;
	}
	
	public static int insertdelivdet(delivery_det dd)
	{
		 CallableStatement cs=null;
		 PreparedStatement ps=null;
		 ResultSet rs=null;
			int i=0;
			try 
			{
				stmnt="select UNAME from DELIVERY_DETAILS where uname=?";
				ps=con.prepareStatement(stmnt);
				ps.setString(1,dd.getUname());
				rs=ps.executeQuery();
				if(rs.next())
				{
					stmnt = "update DELIVERY_DETAILS set NAME=?,ADDRESS1=?,ADDRESS2=?,CITY=?,STATE=?,PINCODE=?,MBLNO=? where uname=?";
					ps=con.prepareStatement(stmnt);
					ps.setString(1, dd.getName());
					ps.setString(2, dd.getAddress1());
					ps.setString(3, dd.getAddress2());
					ps.setString(4, dd.getCity());
					ps.setString(5, dd.getState());
					ps.setInt(6, dd.getPincode());
					ps.setLong(7, dd.getMblno());
					ps.setString(8, dd.getUname());
					i=ps.executeUpdate();
				}
				else
				{
					cs = con.prepareCall("{call insert_delivery_det(?,?,?,?,?,?,?,?)}");
					cs.setString(1, dd.getUname());
					cs.setString(2, dd.getName());
					cs.setString(3, dd.getAddress1());
					cs.setString(4, dd.getAddress2());
					cs.setString(5, dd.getCity());
					cs.setString(6, dd.getState());
					cs.setInt(7, dd.getPincode());
					cs.setLong(8, dd.getMblno());
					i=cs.executeUpdate();
				} 
			}
			catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}

		return i;
	}
	
	public static int selectfromcart(String uname)
	{
		PreparedStatement ps=null;
		 ResultSet rs=null;
		int i=1;
		stmnt="select * from cart where uname=?";
		try 
		{
			ps=con.prepareStatement(stmnt);
		ps.setString(1, uname);
		rs=ps.executeQuery();
		
		cart c=null;
			if(rs!=null)
			{
				while(rs.next())
				{
					c=new cart(rs.getInt("PID"), rs.getInt("P_QTY"), uname, rs.getInt("P_SIZE"));
					i=insertorder(c);
					if(i<=0)
						break;
					c=null;
				}	
			}
		}
		catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return i;
	}
	
	private static int insertorder(cart c)
	{
		CallableStatement cs=null;
		int i=0;
		try
		{
		cs=con.prepareCall("{call insert_order(?,?,?,?)}");
		cs.setInt(1,c.getPid());
		cs.setInt(2,c.getP_qty());
		cs.setString(3, c.getUname());
		cs.setInt(4, c.getP_size());
		//System.out.println(c);
		 i=cs.executeUpdate();
		 if(i>0)
		 {
			 int j=updatequantity(c);
			 if(j<=0)
				 return j;
		 }
		 		
		}
		catch (Exception e) {
			e.printStackTrace();
		}
		return i;
	}
	
	private static int updatequantity(cart c)
	{
		PreparedStatement ps=null;
		 ResultSet rs=null;
		int i=0;
		try
		{
			stmnt="UPDATE PRODUCTS SET P_QUANTITY=P_QUANTITY-? WHERE PID=?";
			ps=con.prepareStatement(stmnt);
			ps.setInt(1,c.getP_qty());
			ps.setInt(2, c.getPid());
			i=ps.executeUpdate();
			
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		return i;
	}
	
	
}
