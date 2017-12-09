<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@page import="kr.ac.hansung.model.Offer"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
		List<Offer> totalItems = new ArrayList<>();
		
		int points_one=0, points_two=0, points_three=0, points_four=0, points_five=0; 
		
	%>

	<c:forEach var="offer" items="${offers}">
		<p>
			<%
				Offer offer = (Offer) pageContext.getAttribute("offer");
			%>
			<%
				totalItems.add(offer);
			%>
		</p>
	</c:forEach>
	<%
	for(int i=0; i<totalItems.size(); i++){
		
	if(totalItems.get(i).getDivision().equals("교필")){
		points_one += Integer.parseInt(totalItems.get(i).getPoint());
	}
	else if(totalItems.get(i).getDivision().equals("핵교A") || totalItems.get(i).getDivision().equals("핵교B")){
		points_two += Integer.parseInt(totalItems.get(i).getPoint());
	}
	else if(totalItems.get(i).getDivision().equals("전지")){
		
		points_three += Integer.parseInt(totalItems.get(i).getPoint());
	}
	else if(totalItems.get(i).getDivision().equals("전기")){
		
		points_four += Integer.parseInt(totalItems.get(i).getPoint());
	}
	else if(totalItems.get(i).getDivision().equals("전선")){
	
		points_five += Integer.parseInt(totalItems.get(i).getPoint());
	}
	}
	
	%>
	
	<table style="width: 100%">
		<tr>
			<th>교필</th>
			<th>핵교</th>
			<th>전지</th>
			<th>전기</th>
			<th>전선</th>
			<th>총학점</th>
		</tr>
		<tr align="center">
			<td><%=points_one %></td>
			<td><%=points_two %></td>
			<td><%=points_three%></td>
			<td><%=points_four %></td>
			<td><%=points_five %></td>
			<td><%=points_one + points_two + points_three + points_four + points_five %></td>
		</tr>		
	</table>

</body>
</html>