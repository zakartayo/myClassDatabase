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
	%>
	<% if(totalItems.get(i).getYear().equals("2018")){%>
		<p><%=totalItems.get(i).getClassname()%></p>
	<% 
	}
	}
	
	%>
	
</body>
</html>