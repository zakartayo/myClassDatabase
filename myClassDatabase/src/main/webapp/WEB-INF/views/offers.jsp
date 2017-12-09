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
		List<Offer> items_one = new ArrayList<>();
		List<Offer> items_two = new ArrayList<>();
		List<Offer> items_three = new ArrayList<>();
		List<Offer> items_four = new ArrayList<>();
		List<Offer> items_five = new ArrayList<>();
		List<Offer> items_six = new ArrayList<>();
		
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
		
	if(totalItems.get(i).getYear().equals("2012") && totalItems.get(i).getSemester().equals("1")){
		items_one.add(totalItems.get(i));
		points_one += Integer.parseInt(totalItems.get(i).getPoint());
	}
	else if(totalItems.get(i).getYear().equals("2012") && totalItems.get(i).getSemester().equals("2")){
		items_two.add(totalItems.get(i));
		points_two += Integer.parseInt(totalItems.get(i).getPoint());
	}
	else if(totalItems.get(i).getYear().equals("2015") && totalItems.get(i).getSemester().equals("2")){
		items_three.add(totalItems.get(i));
		points_three += Integer.parseInt(totalItems.get(i).getPoint());
	}
	else if(totalItems.get(i).getYear().equals("2016") && totalItems.get(i).getSemester().equals("1")){
		items_four.add(totalItems.get(i));
		points_four += Integer.parseInt(totalItems.get(i).getPoint());
	}
	else if(totalItems.get(i).getYear().equals("2017") && totalItems.get(i).getSemester().equals("1")){
		items_five.add(totalItems.get(i));
		points_five += Integer.parseInt(totalItems.get(i).getPoint());
	}
	}
	
	%>
	
	<table style="width: 100%">
		<tr>
			<th>년도</th>
			<th>학기</th>
			<th>이수학점</th>
			<th>상세보기</th>
		</tr>
		<tr align="center">
			<td>2012</td>
			<td>1</td>
			<td><%=points_one%></td>
			<td><a href="">링크</a></td>
		</tr>
		<tr align="center">
			<td>2012</td>
			<td>2</td>
			<td><%=points_two%></td>
			<td><a href="">링크</a></td>
		</tr>
		<tr align="center">
			<td>2015</td>
			<td>2</td>
			<td><%=points_three%></td>
			<td><a href="">링크</a></td>
		</tr>
		<tr align="center">
			<td>2016</td>
			<td>1</td>
			<td><%=points_four%></td>
			<td><a href="">링크</a></td>
		</tr>
		<tr align="center">
			<td>2017</td>
			<td>1</td>
			<td><%=points_five%></td>
			<td><a href="">링크</a></td>
		</tr>
	</table>

</body>
</html>