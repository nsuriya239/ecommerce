package com.EC.Servlet;

import java.io.IOException;
import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.EC.Util.DBConnection;
import com.EC.bean.delivery_det;
import com.EC.DAO.*;

/**
 * Servlet implementation class Adddeliverydet
 */
@WebServlet("/Adddeliverydet")
public class Adddeliverydet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	Connection con=DBConnection.getConnection();
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Adddeliverydet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		
		HttpSession session=request.getSession();
		
		delivery_det dd=new delivery_det();

		dd.setName(request.getParameter("name"));
		dd.setAddress1(request.getParameter("add1"));
		dd.setAddress2(request.getParameter("add2"));
		dd.setCity(request.getParameter("city"));
		dd.setState(request.getParameter("state"));
		dd.setPincode(Integer.parseInt(request.getParameter("dpin")));
		dd.setUname((String)session.getAttribute("name"));
		dd.setMblno(Long.parseLong(request.getParameter("mbl")));
		
			
			
			
			int i=AdddeliverydetDAO.insertdelivdet(dd);
			if(i>0)
			{
				
					int j=AdddeliverydetDAO.selectfromcart(dd.getUname());
							
					if(j>0)
					{
						response.sendRedirect("orderconfirmation.jsp");
						
						}
						else
						{
							response.sendRedirect("Failure.jsp");
						}
								
			}
			else
			{
			response.sendRedirect("Failure.jsp");
			}
			
		
		
	
	}
	
	

}
