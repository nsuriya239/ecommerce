package com.EC.DAO;

import java.io.InputStream;
import java.sql.CallableStatement;
import java.sql.Connection;

import javax.servlet.http.Part;

import com.EC.Util.DBConnection;
import com.EC.bean.products;

public class AddProductsDAO {

	public static int AddProducts(products p,Part filepart,String pcoun,String psname)
	{
		
		int i=0;
		
		try
		{
		Connection con=DBConnection.getConnection();
		CallableStatement cs=con.prepareCall("{call INSERT_PRODUCTS(?,?,?,?,?,?,?,?,?)}");
		
		InputStream inputStream = null;
		 if (filepart != null) 
	        {
	             inputStream = filepart.getInputStream();
	        }
		 
		 cs.setString(1, p.getCat_name());
			cs.setString(2, pcoun);
			cs.setString(3, p.getScat_name());
			cs.setString(4, p.getName());
			if (inputStream != null) 
			{
			cs.setBlob(5, inputStream);
			}
			else
			{
				System.out.println("File not uploaded");
			}
			cs.setString(6,p.getP_desc() );
			cs.setInt(7, p.getP_quantity());
			cs.setDouble(8, p.getP_price());
			cs.setString(9,psname);
	
			 i=cs.executeUpdate();
		
		}
		catch (Exception e) {
			e.printStackTrace();
		}
		
		return i;
	}
	
}
