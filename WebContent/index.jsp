<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<jsp:include page="views/header.jsp" />


<!-- Header -->
    <header>
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <!-- <img class="img-responsive" src="assets/img/profile.png" alt=""> -->
                    <div class="intro-text">
                        <span class="name">Find Your Next Apartment</span>
                        <hr class="star-light">
                        <div class="row">
							<div class="col-md-8 col-md-offset-2 hero-search">
								<form method="get" action="search">
								     <div class="input-group">
										<input type="text" name="address" class="form-control" placeholder="Search by City....">
										<span class="input-group-btn">
					        				<button class="btn btn-default" type="submit"><span class = "glyphicon glyphicon-search" ></span></button>
					      				</span>
					      			</div>
								</form>
				     		</div>
				 		</div>
                    </div>
                </div>
            </div>
        </div>
    </header>
    
    
   

<jsp:include page="views/footer.jsp" />