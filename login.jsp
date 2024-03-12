<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<%@ page import="java.sql.*"  %>
<%@ page session="false" %>  
</head>
<body>
<%
try {
	String uname=request.getParameter("t3");
	String pass=request.getParameter("t4");
	Class.forName("com.mysql.cj.jdbc.Driver");
	out.println("loaded");
	Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/tunify","root","tiger");
	Statement st=con.createStatement();
	 ResultSet rs = st.executeQuery("select * from users where username='"+uname+"' and password='"+pass+"'");
	 if (rs.next()) {
		 HttpSession session=request.getSession();  
	        session.setAttribute("username",uname);         
            response.sendRedirect("index.html");
          
        } else {
            out.print("Invalid username or password");
            
        }
}
catch(SQLException e){
	out.print("SQL");
}
catch(ClassNotFoundException e1) {
	out.println("class");
}

%>
</body>
</html>
