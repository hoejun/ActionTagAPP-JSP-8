<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<h2>Thank you very much for visiting my site</h2>
Your registered data are.<br>
<ul>
	<li>language : <%=request.getParameter("lang") %></li>
	<li>name : <%=request.getParameter("name") %></li>
	<li>addr : <%=request.getParameter("addr") %></li>
</ul>
</body>
</html>