<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>진료기록 추가</title>
</head>
<body>
	<h1>진료기록 추가</h1>
	<form action="/pmedical/add.jsp" method="post">
	<table border=1 width=300>
		<tr>
			<td>이름: &nbsp; &nbsp; &nbsp;<input type="text" name="name" style="width:226px; letter-spacing: 1px"></td>
		</tr>

		<tr>
			<td>성별: &nbsp; &nbsp; &nbsp;<input type="text" name="gender" style="width:226px; letter-spacing: 1px"></td>
		</tr>

		<tr>
			<td>전화번호:<input type="text" name="tel" style="width:224px;"></td>
		</tr>

		<tr>
			<td colspan=4>진료내용:<textarea name="status" cols=60 rows=5></textarea></td>
		</tr>
	</table>
		<tr width=100; height= 200;>
			<td colspan=4 align=right><input type="submit" value=" 추가하기 "></td>
		</tr>
	</form>
	<form method="post" action="/pmedical/main.jsp">
		<td colspan=4 align=right><button onclick="window.location.href='/pmedical/mail.jsp'">메인으로</button></td>
	</form>		
</body>
</html>