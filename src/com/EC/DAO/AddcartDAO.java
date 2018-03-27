package com.EC.DAO;

import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import com.EC.Util.DBConnection;
import com.EC.bean.cart;

public class AddcartDAO {
	static Connection con=DBConnection.getConnection();
	static PreparedStatement ps=null;
	static ResultSet rs=null;
	static String stmnt;
	
	public static int addcart(cart c)
	{
		int i=0;
		int k=0;
		
		try
		{
//			System.out.println("DAO:"+c);
			stmnt="select p_qty from cart where pid=? and uname=?";
			ps=con.prepareStatement(stmnt);
			ps.setInt(1, c.getPid());
			ps.setString(2, c.getUname());
			rs=ps.executeQuery();
			//System.out.println("rs:"+rs.next());
			if(rs.next())
			{
//				System.out.println("yes");
				int p_qty=rs.getInt(1);
				System.out.println(p_qty);
				stmnt = "update cart set p_qty=? where pid=? and uname=?";
				ps=con.prepareStatement(stmnt);
				ps.setInt(1, p_qty+c.getP_qty());
				ps.setInt(2, c.getPid());
				ps.setString(3, c.getUname());
				i=ps.executeUpdate();
				//System.out.println(i);
				k=1;
			}
			else
			{
//				System.out.println("no");
			CallableStatement cs=con.prepareCall("{call insert_cart(?,?,?,?)}");
			cs.setInt(1, c.getPid());
			cs.setInt(2, c.getP_qty());
			cs.setString(3, c.getUname());
			cs.setInt(4, c.getP_size());
			
			 i=cs.executeUpdate();
			}
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		//System.out.println(k);
		return i;
	}
	
}
