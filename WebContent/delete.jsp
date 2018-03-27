<%@page import="com.EC.jsp.DAO.deleteDAOj"%>
<%@page import="com.EC.Util.DBConnection"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.CallableStatement"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%

int pid=Integer.parseInt(request.getParameter("pid"));
String uname=(String)session.getAttribute("name");
	
	int i=deleteDAOj.delete(pid, uname);
	if(i>0)
	{
		response.sendRedirect("checkout.jsp");
	}
	else
	{
		out.println("<script type=\"text/javascript\">");
	    out.println("alert('Problem in Deleting Item');");
	    out.println("location='.jsp';");
	    out.println("</script>");
	}


%>
</body>
</html>