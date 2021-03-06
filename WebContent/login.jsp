
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<jsp:include page="views/header.jsp" />

<!-- extra CSS to add -->
<style>
h2.margin-login {
	margin-top: 150px !important;
}
</style>
<!-- end extra CSS to add -->

<!-- Portfolio Grid Section -->
<section id="portfolio">
	<div class="container">
		<div class="row">
			<div class="col-lg-12 text-center">
				<h2 class="margin-login">Log In</h2>
				<hr class="star-primary">
			</div>
		</div>
		<div class="row" style="margin-top: 20px">
			<div
				class="col-xs-12 col-sm-8 col-md-6 col-sm-offset-2 col-md-offset-3">
				<form role="form" method="POST" action="#">
					<fieldset>
						<div class="form-group">
							<input type="text" name="username" id="username"
								class="form-control input-lg" placeholder="Email Address">
						</div>
						<div class="form-group">
							<input type="password" name="password" id="password"
								class="form-control input-lg" placeholder="Password">
						</div>
						<span class="button-checkbox"> </span>
						<div class="row">
							<div class="col-xs-6 col-sm-6 col-md-6">
								<input type="submit" class="btn btn-lg btn-success btn-block"
									value="Sign In">
							</div>
							<div class="col-xs-6 col-sm-6 col-md-6">
								<a href="" class="btn btn-lg btn-primary btn-block">Register</a>
							</div>
						</div>
					</fieldset>
				</form>
			</div>
		</div>
	</div>
</section>

<jsp:include page="views/footer.jsp" />