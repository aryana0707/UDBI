<%@page import="java.sql.DriverManager"%>
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
//scriptlet
	String driver=request.getParameter("dclass");
	String url=request.getParameter("durl");
	String uname=request.getParameter("uname");
	String pass=request.getParameter("upass");
	try{
		Connection conn=null;
		Class.forName(driver);
		conn=DriverManager.getConnection(url, uname, pass);
		%>
		<jsp:forward page="oracle.jsp"></jsp:forward>
		<%
		
	}catch(Exception e){
		System.out.println(e);
		%>
		<jsp:forward page="error.jsp"></jsp:forward>
		<%
	}

	
%>

</body>
</html>