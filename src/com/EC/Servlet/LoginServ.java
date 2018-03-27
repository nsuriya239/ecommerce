package com.EC.Servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.EC.DAO.LoginDAO;
import com.EC.bean.user;

/**
 * Servlet implementation class LoginDAO
 */
@WebServlet("/LoginServ")
public class LoginServ extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public LoginServ() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		PrintWriter out=response.getWriter();
		
		HttpSession session = request.getSession();
		
		String uname=request.getParameter("uname");
		String upwd=request.getParameter("pwd");
		
		user u=LoginDAO.LoginDAO(uname);
		
		System.out.println(request.getParameter("pid"));
		
		if(upwd.equals(u.getUpwd()))
		{
			session.setAttribute("name", uname);
			session.setAttribute("Type", "user");
			
			session.setMaxInactiveInterval(200);
			
			String from = request.getParameter("from");
			String pid=request.getParameter("pid");
//			System.out.println(from);

			if (from != null && !from.isEmpty()) 
			{
				if(pid.equals("null"))
				{
					response.sendRedirect(from);
				}
				else
				{
					response.sendRedirect("Single.jsp?id="+pid);
				}
				
			} else {
			    response.sendRedirect("home.jsp");
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
