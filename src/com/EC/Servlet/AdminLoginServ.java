package com.EC.Servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.EC.DAO.AdminLoginDAO;
import com.EC.Util.DBConnection;
import com.EC.bean.managacc;

/**
 * Servlet implementation class AdminLoginDAO
 */
@WebServlet("/AdminLoginServ")
public class AdminLoginServ extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AdminLoginServ() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {


		PrintWriter out=response.getWriter();
		
		String uname=request.getParameter("uname");
		String upwd=request.getParameter("pwd");
		
		HttpSession session =request.getSession();
		
		managacc ma=AdminLoginDAO.AdminLoginDAO(uname);
		
		if(upwd.equals(ma.getSpwd()))
		{
//			out.println("user logged in as "+uname);
			if(ma.getM_type().equals("admin"))
			{
				session.setAttribute("name", uname);
				session.setAttribute("Type", "admin");
				session.setMaxInactiveInterval(200);
				response.sendRedirect("Adminregister.jsp");
			}
			else
			{
				session.setAttribute("name", uname);
				session.setAttribute("Type", "seller");
			response.sendRedirect("AddProducts.jsp");
			}
		}
		else
		{
			session.invalidate();
		    out.println("<script type=\"text/javascript\">");
		    out.println("alert('Username or Password Incorrect');");
		    out.println("location='Login.jsp';");
		    out.println("</script>");
		}
	
		
	}

}
