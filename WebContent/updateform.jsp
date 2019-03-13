<%@page import="com.jihoon.pmedical.vo.PmedicalVo"%>
<%@page import="java.util.List"%>
<%@page import="com.jihoon.pmedical.dao.PmedicalDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% 
	String no3 = request.getParameter("no"); 
	long no = Long.parseLong(no3);
	
	PmedicalDao pmedicalDao = new PmedicalDao();

	PmedicalVo pv = pmedicalDao.getByNo(no);
 %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>진료기록 수정</title>
</head>
<body>
	<h1>진료기록 수정</h1>
	<form action="/pmedical/update.jsp" method="post">
	<input type='hidden' name="no" value="<%=no%>">
	<table border=1 width=300>
		<tr>
			<td>이름: &nbsp; &nbsp; &nbsp;<input type="text" name="name" value="<%=pv.getName() %>" style="width:226px;"></td>
		</tr>
		<tr>
			<td>성별: &nbsp; &nbsp; &nbsp;<input type="text" name="gender" value="<%=pv.getGender() %>" style="width:226px;"></td>
		</tr>
		<tr>
			<td>전화번호:<input type="text" name="tel" value="<%=pv.getTel() %>" style="width:224px;"></td>
		</tr>
		<tr>
			<td colspan=4>진료내용:<textarea name="status" value="" cols=60 rows=5><%=pv.getStatus() %></textarea></td>
		</tr>
	</table>
		<tr width=100; height= 200;>
			<td colspan=4 align=right><input type="submit" value=" 수정하기 "></td>
		</tr>
	</form>
	<form method="post" action="/pmedical/main.jsp">
		<td colspan=4 align=right><button onclick="window.location.href='/pmedical/mail.jsp'">메인으로</button></td>
	</form>		
</body>
</html>