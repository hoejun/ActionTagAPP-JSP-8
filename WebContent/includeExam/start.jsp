<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>여기는 start.jsp입니다.</h1>
<jsp:include page="end.jsp">
	<jsp:param value="hong gill dong" name="name"/>
	<jsp:param value="24" name="age"/>
</jsp:include>
</body>
</html>