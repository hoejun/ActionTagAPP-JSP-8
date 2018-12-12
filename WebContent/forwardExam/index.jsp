<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>여기는 index.html입니다.</h1>
이 페이지는 조건을 만족할 경우 forward.jsp로 이동합니다.<br>
만약 이 조건을 만족하지 않으면 포워딩 하지 않습니다.
<%
	if(request.getParameter("name").equals("hong")){
%>
	<!-- forward.jsp페이지 이동뿐만 아니라 index.html -->	    
	<jsp:forward page="forward.jsp"/>
<%
	}
%>
</body>
</html>