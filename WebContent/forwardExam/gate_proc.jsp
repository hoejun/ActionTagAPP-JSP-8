<%@page import="java.util.regex.Pattern"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	//요청 데이터 한글처리
	request.setCharacterEncoding("UTF-8");

	//요청(입력)받은 이름, 주소중에 한글이 한 글자라도 포함되어 있는 경우 "en.jsp"페이지로 이동 
	String toWhere = "en.jsp";

	//기본 사용언어
	String lang ="English";
	
	//gate.jsp페이지의 폼에서 요청한 값이 한글이 포함되어 있으면 true
	//포함되어 있지 않으면 false 나타내는 플래그 변수 
	boolean isKorean = false;
	
	//문자열에 한글이 포함되어 있는지 반별하는 정규 표현식
	String req = ".*[ㄱ-ㅎ ㅏ-ㅣ 가-힣]+.*";
	
	//name과 addr으로 전달받아 두 문장을 합쳐서 저장
	String param = request.getParameter("name") + request.getParameter("addr");

	/*Pattern 객체의 matches메소드를 사용하여 한글이 포함되어 있는 판단하는 정규 표현식과,
		비교할 문자열을 비교하여 참/거짓을 반환 받는다.
	*/
	isKorean = Pattern.matches(req, param);//한글이 하나라도 있으면 true 리턴

	//만약 한글이 하나라도 포함되어 있으면
	if(isKorean == true){
	    //kr.jsp페이지로 이동
	    toWhere = "kr.jsp";
	    //사용언어 "korean"으로 바꿈
	    lang = "korean";
	}
%>

<jsp:forward page="<%=toWhere %>">
	<jsp:param value="<%=lang %>" name="lang"/>
</jsp:forward>