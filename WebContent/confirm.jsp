<%@page import="com.EC.DAO.AdddeliverydetDAO"%>
<%@page import="com.EC.jsp.DAO.orderConfDAOj"%>
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
String uname=(String)session.getAttribute("name");
int j=AdddeliverydetDAO.selectfromcart(uname);

if(j>0)
{
	int i=orderConfDAOj.deletecart(uname);
	if(i>0)
	{
		response.sendRedirect("Success.jsp");
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

%>
</body>
</html>