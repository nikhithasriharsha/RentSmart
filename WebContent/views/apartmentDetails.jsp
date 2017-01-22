<%@page import="com.rentsmart.models.Apartment"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<% Apartment apt = (Apartment)request.getAttribute("apartmentDetails"); %>
<jsp:include page="header.jsp" />
    
	<%= apt.getCity() %> 
	
<jsp:include page="footer.jsp" />