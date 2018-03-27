package com.EC.Servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.EC.DAO.SignupDAO;
import com.EC.Util.DBConnection;
import com.EC.bean.user;

/**
 * Servlet implementation class SignupDAO
 */
@WebServlet("/SignupServ")
public class SignupServ extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public SignupServ() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		PrintWriter out=response.getWriter();
		
		user u=new user(0, request.getParameter("uname"),request.getParameter("pwd"),request.getParameter("mbl"), request.getParameter("ufname"));
		
		String rpwd=request.getParameter("rpwd");
		
		
		if(u.getUpwd().equals(rpwd))
		{
			
			int i=SignupDAO.SignupDAO(u);
			
			if(i>0)
				out.print("<script type=\"text/javascript\">alert('register  successful');location='register.jsp';</script>");
			else
				out.print("<script type=\"text/javascript\">alert('register not successful');location='register.jsp';</script>");
		}
		else
		{
			out.print("<script type=\"text/javascript\">alert('register not successful');location='register.jsp';</script>");
		}
	

}
}
