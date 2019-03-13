<%@page import="com.jihoon.pmedical.dao.PmedicalDao"%>
<%@page import="com.jihoon.pmedical.vo.PmedicalVo"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	long no = Integer.parseInt(request.getParameter("no"));

	PmedicalVo pv = new PmedicalVo();
	pv.setNo(no);
	
	PmedicalDao pd = new PmedicalDao();
	pd.delete(pv);
	
	response.sendRedirect("/pmedical/main.jsp");
	%>