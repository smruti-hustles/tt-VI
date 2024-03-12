<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<%@ page import="java.sql.*"  %>
</head>
<body>
<%
String uname=request.getParameter("t1");
String pass=request.getParameter("t3");
String mail=request.getParameter("t2");
try{
	Class.forName("com.mysql.cj.jdbc.Driver");
	Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/tunify","root","tiger");
	System.out.println("Established");
	Statement st=con.createStatement();
	int i=st.executeUpdate("insert into users values('"+uname+"','"+mail+"','"+pass+"')");
	if(i>0) out.println("Inserted");
	else out.println("Not Inserted");
	response.sendRedirect("login.html");
	
}
catch(SQLException e){
	out.println("SQL");
}
catch(ClassNotFoundException e){
	out.println("1");
}
%>
</body>
</html>
