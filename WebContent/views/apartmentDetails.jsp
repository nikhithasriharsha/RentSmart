<%@page import="com.rentsmart.models.Apartment"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<% Apartment apt = (Apartment)request.getAttribute("apartmentDetails"); %>
<jsp:include page="header.jsp" />
    <section>
    
    <%= apt.getCity() %>
    
    </section>
	 
	
<jsp:include page="footer.jsp" />