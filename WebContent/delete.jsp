<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@ page import= "com.javaex.dao.BookDao" %>

<%
	int no = Integer.parseInt(request.getParameter("no"));
	String pw = request.getParameter("password");
	
	BookDao bookDao = new BookDao();
	int result = bookDao.delete(no, pw);

	try{
		response.sendRedirect("main.jsp");
	} catch(NumberFormatException e){
		response.sendRedirect("deletePopup.jsp");
	}
	
%>