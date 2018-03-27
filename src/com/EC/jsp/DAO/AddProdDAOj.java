package com.EC.jsp.DAO;

import java.sql.*;
import java.util.ArrayList;

import com.EC.Util.DBConnection;
import com.EC.bean.catalog;
import com.EC.bean.categories;
import com.EC.bean.scat;

public class AddProdDAOj {

	static Connection con=DBConnection.getConnection();
	static String stmnt="";
	static PreparedStatement ps=null;
	static ResultSet rs=null;
	
	public static ArrayList<catalog> country()
	{
		ArrayList<catalog> ac=null;
		
		stmnt="select * from catalog";
		
		
		try {
			ps = con.prepareStatement(stmnt);
		
		rs=ps.executeQuery();
		
		if(rs!=null)
			{
				ac=new ArrayList<>();
				catalog c=null;
				while(rs.next())
				{
					c=new catalog();
					c.setCoun_id(rs.getInt("coun_id"));
					c.setCountry(rs.getString("country"));
					ac.add(c);
					c=null;
				}
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return ac;
	}
	
	public static ArrayList<categories> categories()
	{
		ArrayList<categories> ac=null;
				categories c=null;
		stmnt="select CAT_NAME from CATEGORIES ";
		try {
			
			ps=con.prepareStatement(stmnt);
			
			rs=ps.executeQuery();
			if(rs!=null)
			{
			ac=new ArrayList<>();	
				while(rs.next())
				{
					c=new categories();
					c.setCat_name(rs.getString("CAT_NAME"));
					ac.add(c);
					c=null;
				}
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return ac;
	}
	
	public static ArrayList<scat> subcategories()
	{
		ArrayList<scat> as=null;
		scat s=null;
		
		stmnt="select DISTINCT SCAT_NAME from SCAT ";
		 try {
			ps=con.prepareStatement(stmnt);
			rs=ps.executeQuery();
			if(rs!=null)
			{
				as=new ArrayList<>();
				while(rs.next())
				{
					s=new scat();
					s.setScat_name(rs.getString("SCAT_NAME"));
					as.add(s);
					s=null;
				}
			}
		 } catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		return as;
	}
	
}
