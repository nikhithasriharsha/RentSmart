<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<jsp:include page="header.jsp" />
<!-- Portfolio Grid Section -->
    <section id="portfolio">
        <div class="container">
            <div class="row">
                <div class="col-lg-12 text-center">
                    <h2>Matching Apartments</h2>
                    <hr class="star-primary">
                </div>
            </div>
            <div class="row">
              <c:forEach items="${apartments}" var="apt" >
               <div class="col-sm-4 portfolio-item">
                    <a href="#portfolioModal2" class="portfolio-link" data-toggle="modal">
                        
                        <img src="assets/img/portfolio/cake.png" class="img-responsive" alt="">
                        <div class="row">
                        
                        
                        <h4 class="col-md-9"><c:out value="${apt.street}"/></h4>
                        <h4 class="text-right col-md-3">$<c:out value="${apt.expectedRent}"/></h4>
                        </div>
                        
                    </a>
                </div>
                </c:forEach>
                
            </div>
        </div>
    </section>






<jsp:include page="footer.jsp" />