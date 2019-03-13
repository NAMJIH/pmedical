<%@page import="com.jihoon.pmeical.dao.PmedicalDao"%>
<%@page import="com.jihoon.pmedical.vo.PmedicalVo"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("UTF-8");

	String name = request.getParameter("name");
	String gender = request.getParameter("gender");
	String tel = request.getParameter("tel");
	String status = request.getParameter("status");
	
	PmedicalVo pmedicalVo = new PmedicalVo();
	pmedicalVo.setName(name);
	pmedicalVo.setGender(gender);
	pmedicalVo.setTel(tel);
	pmedicalVo.setStatus(status);
	
	PmedicalDao pmedicalDao = new PmedicalDao();
	pmedicalDao.insert(pmedicalVo);
	
	response.sendRedirect("/pmedical/main.jsp");
	

%>