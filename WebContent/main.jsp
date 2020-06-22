<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ page import= "java.util.List" %>
<%@ page import= "com.javaex.vo.GuestVo" %>    
<%@ page import= "com.javaex.dao.BookDao"%>

<%
	BookDao bookDao = new BookDao();
	List<GuestVo> gList = bookDao.select();
%>    

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<form action="./add.jsp" method="post">
		<table border="1">
		<colgroup>
	  		<col style = "width : 50px">
	  		<col style = "width : 150px">
	  		<col style = "width : 100px">
	  		<col style = "width : 150px">
		</colgroup>
			<tr>
				<td>이름</td>
				<td><input type= "text" name="name"></td>
				<td>비밀번호</td>
				<td><input type= "password" name="password"></td>
			</tr>
			<tr>
				<td colspan="4"><textarea style = "width:98%;" rows="5" name = "content">방명록 적어주세요!</textarea></td>
			</tr>
			<tr>
				<td colspan="4"><button type= "submit">확인</button></td>
			</tr>
		</table>
	</form>
	<br>
	
	<%for(GuestVo vo : gList){%>
		<table border= "1">
		<colgroup>
	  		<col style = "width : 50px">
	  		<col style = "width : 100px">
	  		<col style = "width : 260px">
	  		<col style = "width : 100px">
		</colgroup>
			<tr>
				<td><%= vo.getNo() %></td>
				<td><%= vo.getName() %></td>
				<td><%= vo.getDate() %></td>
				<td><a href= "./deleteForm.jsp?no=<%=vo.getNo()%>">삭제</a></td>
			</tr>
			<tr>
				<td colspan="4"><%= vo.getContent() %></td>
			</tr>
		</table>
		<br>
	<%}%>	
	

	
</body>
</html>