package com.EC.Servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.CallableStatement;
import java.sql.Connection;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.EC.DAO.AddcartDAO;
import com.EC.Util.DBConnection;
import com.EC.bean.cart;

/**
 * Servlet implementation class Addcart
 */
@WebServlet("/Addcart")
public class AddcartServ extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AddcartServ() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
    
    
    @Override
    
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		HttpSession session=request.getSession();
		PrintWriter out=response.getWriter();
		
		if(session.getAttribute("name")==null||session.getAttribute("name")=="")
		{
		response.sendRedirect("Login.jsp?from=" + request.getRequestURI()+"&pid="+request.getParameter("pid"));
		}
		else
		{
		
		cart c=new cart();
		
		c.setUname((String) session.getAttribute("name"));
		c.setPid(Integer.parseInt(request.getParameter("pid")));
		c.setP_qty(Integer.parseInt(request.getParameter("qty")));
		c.setP_size(Integer.parseInt(request.getParameter("size")));	
		
//		System.out.println(c);
		int i=AddcartDAO.addcart(c);
		if(i>0)
		{
			response.sendRedirect("checkout.jsp");
		}
		else
		{
			out.println("<script type=\"text/javascript\">");
		    out.println("alert('Problem in Adding Cart');");
		    out.println("location='Home.jsp';");
		    out.println("</script>");
		}
				
		
		
		}
	}

}
