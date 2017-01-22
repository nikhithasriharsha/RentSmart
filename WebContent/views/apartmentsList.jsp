<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<base href="/RentSmart/">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<title>ApartmentsList</title>
</head>
<body>


<ol>
<c:forEach items="${apartments}" var="apt" >
<li>
	<a href="apartment?id=<c:out value="${apt.id}"/>">
    	<c:out value="${apt.street}"/>
    	<c:out value="${apt.city}"/>
    </a>
</li>
 </c:forEach>
 </ol>

</body>
</html>