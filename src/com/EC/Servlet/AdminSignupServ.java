package com.EC.Servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.EC.DAO.AdminSignupDAO;
import com.EC.Util.DBConnection;
import com.EC.bean.managacc;

/**
 * Servlet implementation class SignupDAO
 */
@WebServlet("/AdminSignupServ")
public class AdminSignupServ extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AdminSignupServ() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		PrintWriter out=response.getWriter();
		
		managacc ma=new managacc();
		
		ma.setSfname(request.getParameter("ufname"));
		ma.setSname(request.getParameter("uname"));
		ma.setSpwd(request.getParameter("pwd"));
		String rpwd=request.getParameter("rpwd");
		ma.setSmblno(request.getParameter("mbl"));
		
		
		if(ma.getSpwd().equals(rpwd))
		{
			int i=AdminSignupDAO.AdminSignupDAO(ma);
			if(i>0)
				response.sendRedirect("Adminlogin.jsp");
			else
				out.print("<script>windows.alert('register not successful')</script>");
		}
		else
		{
			response.sendRedirect("Adminregister.jsp");
		}
	

}
}
