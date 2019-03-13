<%@page import="com.jihoon.pmedical.dao.PmedicalDao"%>
<%@page import="com.jihoon.pmedical.vo.PmedicalVo"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% 
	// 데이터 받기
	request.setCharacterEncoding("UTF-8");
	long no = Integer.parseInt(request.getParameter("no"));
	String name = request.getParameter("name");
	String gender = request.getParameter("gender");
	String tel = request.getParameter("tel");
	String status = request.getParameter("status");
	
	PmedicalVo pv = new PmedicalVo();	
	pv.setNo(no);
	pv.setName(name);
	pv.setGender(gender);
	pv.setTel(tel);
	pv.setStatus(status);
	System.out.println(pv);
	PmedicalDao pd = new PmedicalDao();
	pd.update(pv);
	
	response.sendRedirect("/pmedical/main.jsp");
	
%>