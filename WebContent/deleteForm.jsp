<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@ page import= "com.javaex.vo.GuestVo" %>    

<%
	int no = Integer.parseInt(request.getParameter("no"));
	GuestVo guest = new GuestVo();
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
		<form action="./delete.jsp" method="post"> 
		비밀번호: <input type= "password" name="password">
		<button type="submit">확인</button>
		<input type = "hidden" name = "no" value = <%= no %>>
		</form>
		<p><a href ="./main.jsp" >메인으로 돌아가기</a></p>
</body>
</html>