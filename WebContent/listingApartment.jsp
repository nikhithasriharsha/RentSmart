<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<jsp:include page="views/header.jsp" />
<link href="assets/vendor/bootstrap-datepicker/css/bootstrap-datepicker3.css" rel="stylesheet">
<section id="portfolio"> 
        <div class="container">
            <div class="row">
                <div class="col-md-12 text-center">
                    <h2>Add a Listing</h2>
                    <hr class="star-primary">
                </div>
            </div>
            
               <div class ="row">
                <div class="col-md-8 col-md-offset-2 row control-group">
                	<form action="manageListing.jsp">
                		<div class="form-group col-xs-12 floating-label-form-group controls">
                                <label>Apartment Name</label>
                                <input type="text" class="form-control" placeholder="Apartment Name" id="name" required data-validation-required-message="Please enter your name.">
                                <p class="help-block text-danger"></p>
                            </div>
                		<input class="form-control" type="text" name="apartment"  placeholder="Apartment Name">
                		<input class="form-control" type="text" name="apartment"  placeholder="Contact Name">
                		<input class="form-control" type="text" name="apartment"  placeholder="Rent">
                		 
                		<input class="datepicker form-control" name="date" placeholder="AvailableDate">
                          
						                	
                </div>
                	<div class= "col-md-4 form-group">
                		<select name="No. of Beds">
                		    <option value="0">No.of beds</option>
							<option value="1">1</option>
						    <option value="2">2</option>
							<option value="3">3</option>
							<option value="4">4</option>
						 </select>
                	     <select name="No. of Baths">
                		    <option value="0">No.of baths</option>
							<option value="1">1</option>
						    <option value="2">2</option>
							<option value="3">3</option>
							<option value="4">4</option>
						 </select>
                	
                	<br/>
                	</div>
	                	<div class="col-md-4 form-group">
						    
						    <textarea class="form-control" id="exampleTextarea" rows="3" placeholder="Add Description"></textarea>
						 </div>
                    </form>
               </div>





















<script src="assets/vendor/bootstrap-datepicker/js/bootstrap-datepicker.js"></script>
<script>
 $(function() {
	 $('input.datepicker').datepicker();
 })
</script>
<jsp:include page="views/footer.jsp" />