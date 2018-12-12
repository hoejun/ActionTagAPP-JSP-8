<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	int i;
	i=10;
%>
<!-- 헤더부분 -->
<%@ include file = "/includeExam/header.jsp" %>
<hr>

<!-- 본문부분 -->
<h1>include액션 태그 예제1</h1>
이 페이지는 action tag를 이용한 include를 사용하고 있습니다.
<hr>

<!-- 하단부분 -->
<jsp:include page="../includes/footer.jsp"/>

</body>
</html>
<%--
	<%@include file=""%> 지시자 태그는 header.jsp 페이지와 index.jsp페이지는 서로 합쳐져서 
	하나의 페이지가 완성된 후 한번만 컴파일 되므로,
	header.jsp페이지와 index.jsp페이지에 int il 변수를 중복으로 선언x
	
	<jsp:include page=""/> 액션 태그는 header.jsp페이지와 index.jsp페이지는 각각 컴파일된 후 페이지를 공유함므로
	header.jsp페이지와 index.jsp페이지에 int i; 변수를 중복으로 선언 ok 


--%>