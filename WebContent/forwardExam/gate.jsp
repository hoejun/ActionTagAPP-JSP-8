<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<%--
	시나리오 : 요청폼에 적은 값이 한글이 하나라도 있으면 kr.jsp페이지 이동
 --%>
 <form action="gate_proc.jsp" method="post">
	이름 : <input type="text" name="name"/><p>
	주소 : <input type="text" name="addr"/><p> 
 	<input type="submit" value="전송">
 </form>
</body>
</html>