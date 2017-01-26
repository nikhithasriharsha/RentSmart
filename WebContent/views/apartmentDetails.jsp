<%@page import="com.rentsmart.models.Apartment"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

 <% Apartment apt = (Apartment)request.getAttribute("apartmentDetails");%>
 <jsp:include page="header.jsp" />
    <section>
    <div class="container">
            <div class="row">
                <div class="col-lg-12 text-center">
                    <h2>Matching Apartments</h2>
                    <hr class="star-primary">
                </div>
            </div>
            <div="row">
     			<div class="col-md-8 col-md-offset-2">
     				<img src="assets/img/apt/1.jpg" class="img-responsive img-centered" alt="">
     				
     				<p>VRM $499,900-529,900! 5 bedroom 3 bath home! Located on a huge private lot, this home was renovated in 2007 with permits, gorgeous large open kitchen with granite counters, stainless appliances and laminate flooring. New Carpet and paint and newer dual pane windows throughout the home. Newer Carrier HVAC system with dual control AC. Private master suite with balcony. Loft area upstaris. Upgraded electrical. Amazing lot with tons of potential. Views to downtown from upstairs balcony. Hurry, this wont last!
                    </p>
                    <div class="col-md-8 col-md-6">
                    <table class="table table-hover">
                    <tbody>
                    <tr>
                    <td>NumofBeds</td>
                    <td>2</td>
                    </tr>
                    <tr>
                    <td>NumofBaths</td>
                    <td>2</td>
                    </tr>
                    <tr>
                    <td>Availabledate</td>
                    <td>05 Jan</td>
                    </tr>
                    
                  </tbody>
                    
                 </table>
			</div>
			
			<div class="col-md-8 col-md-6">
                    <table class="table table-hover">
                    <tbody>
                    <tr>
                    <td>Expected Rent</td>
                    <td>$2000</td>
                    </tr>
                    <tr>
                    <td>Sqft</td>
                    <td>1100</td>
                    </tr>
                    
                  </tbody>
                    
                 </table>
			</div>
                 
                  
                 </div>
                 
                 </div>
            </div>
     </div>
     </section>
	 
	
<jsp:include page="footer.jsp" />