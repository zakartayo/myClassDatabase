<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form method="post" action="${pageContext.request.contextPath}/docreate">
		<table>
			<tr><td>Year:</td><td><input type="text" name="year"/></td></tr>
			<tr><td>Semester:</td><td><input type="text" name="semester"/></td></tr>
			<tr><td>Code:</td><td><input type="text" name="code"/></td></tr>
			<tr><td>ClassName:</td><td><input type="text" name="classname"/></td></tr>
			<tr><td>Division:</td><td><input type="text" name="division"/></td></tr>
			<tr><td>Point:</td><td><input type="text" name="point"/></td></tr>
			<tr><td></td><td><input type="submit" value="새 제안"/></td></tr>
		</table>
	<input type="hidden"   name="${_csrf.parameterName}" value="${_csrf.token}"/>
	</form>
</body>
</html>