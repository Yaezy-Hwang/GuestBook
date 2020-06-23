<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
    
<%@ page import= "com.javaex.dao.BookDao" %>
<%@ page import= "com.javaex.vo.GuestVo" %>

<%
	request.setCharacterEncoding("UTF-8");
	String name = request.getParameter("name");
	String pw = request.getParameter("password");
	String content = request.getParameter("content");
	
	BookDao bookDao = new BookDao();
	GuestVo gVo = new GuestVo(name, pw, content);
	bookDao.insert(gVo);

	response.sendRedirect("main.jsp");
%>
