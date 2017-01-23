<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<jsp:include page="views/header.jsp" />

<header>
	<div class="container">
		<div class="row">
			<div class="col-md-8 col-md-offset-2">
				<div class="input-group">
					<input type="text" class="form-control" placeholder="Search for...">
					<span class="input-group-btn">
        				<button class="btn btn-default" type="button"><span class = "glyphicon glyphicon-search" ></span></button>
      				</span>
      			</div>
     		</div>
 		</div>
	</div>
</header>


<jsp:include page="views/footer.jsp" />