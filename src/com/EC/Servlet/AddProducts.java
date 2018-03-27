package com.EC.Servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

import com.EC.DAO.AddProductsDAO;
import com.EC.bean.products;

/**
 * Servlet implementation class AddProducts
 */
@WebServlet("/AddProducts")
@MultipartConfig
public class AddProducts extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AddProducts() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		PrintWriter out=response.getWriter();
		 
		 Part filePart = request.getPart("pimg");
		 
		 products p=new products();
		 
		 p.setCat_name(request.getParameter("dropcat"));
		 p.setScat_name(request.getParameter("dropscat"));
		 p.setName(request.getParameter("pname"));
		 p.setP_desc(request.getParameter("pdesc"));
		 p.setP_quantity(Integer.parseInt(request.getParameter("pqty")));
		 p.setP_price(Integer.parseInt(request.getParameter("pprice")));
		 
		 int i=AddProductsDAO.AddProducts( p,filePart, request.getParameter("pcoun"),  request.getParameter("psname"));
		 
		if(i>0)
		{
			out.println("<script type=\"text/javascript\">");
			out.println("alert('Products Added Successfully');");
			out.println("location='AddProducts.jsp';");
			out.println("</script>");
		}
		else
			out.print("<script type=\"text/javascript\">alert('register not successful');location='register.jsp';</script>");
	
		
	}

}
