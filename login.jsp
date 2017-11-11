<%@page import="java.util.Enumeration"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="zxx">
	<head>
		<meta http-equiv="X-UA-Compatible" content="IE=edge; charset=UTF-8">
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<title>Login</title>
		<!-- JqueryUI -->
		<link rel="stylesheet" type="text/css" href="css/jquery-ui.css">
		<!-- Bootstrap -->
		<link rel="stylesheet" type="text/css" href="css/bootstrap.min.css">
		<!-- Awesome font icons -->
		<link rel="stylesheet" type="text/css" href="css/font-awesome.min.css" media="screen">
		<!-- Owlcoursel -->
		<link rel="stylesheet" type="text/css" href="css/owl-coursel/owl.carousel.css">
		<link rel="stylesheet" type="text/css" href="css/owl-coursel/owl.transitions.css">
		<!-- Magnific-popup -->
		<link rel="stylesheet" type="text/css" href="css/magnific-popup/magnific-popup.css">
		<!-- Style -->
		<link rel="stylesheet" type="text/css" href="css/style.css" media="screen">
		<!-- Fw -->
		<link rel="stylesheet" type="text/css" href="css/fw.css" media="screen">
	</head>
<body>

	<% 
		String string1;
		if(session.getAttribute("isLogin") == null){
			session.setAttribute("isLogin", false);
			string1 = " Please login first ";
		}else if(session.getAttribute("isLogin").equals(true)){
			string1 = "Welcome:"+session.getAttribute("username");
		}else{
			string1 = " Please login first ";
		}
	%>
	
	<div class="preloader">
			<i class="fa fa-spinner"></i>
		</div>
			<div class="container">
				<div class="row top-header">
					<div class="col-sm-3 text-left">
						<a href="#" class="logo">
							<img src="images/logo.png" alt="logo">
						</a>
					</div>
					<div class="col-sm-9">
						<ul class="top-link pull-right">
						
							<li class="hidden-xs"><% out.write(string1); %></li>
							
							<li class="pull-right">
								<div class="cart dropdown">
									<a href="Cart.jsp" class="cart-item dropdown-toggle" id="dropdownMenu2">
										<span></span><i class="fa fa-cart-plus"></i>
									</a>
									
								</div>
							</li>
						</ul>
					</div>
				</div>
			</div>
			<div class="container">
				<div class="bg-mn color-inher">
					<div class="row m-0">
						<div class="col-sm-1 col-md-1 col-lg-2 p-0">
							<div class="dropdown category-bar">
								<a href="#" class="dropdown-toggle">
									<i class="fa fa-bars"></i><span>Categories</span>
								</a>
								<ul class="dropdown-menu">
									<li><a href="#"><span><img src="images/25.jpg" width="50" alt="image"></span>Vegetables</a></li>
									<li><a href="#"><span><img src="images/18.jpg" width="50" alt="image"></span>Broccoli</a></li>
									<li><a href="#"><span><img src="images/16.jpg" width="50" alt="image"></span>Cabbage</a></li>
									<li><a href="#"><span><img src="images/22.jpg" width="50" alt="image"></span>Bean</a></li>
									<li><a href="#"><span><img src="images/21.jpg" width="50" alt="image"></span>Heirloom</a></li>
									<li><a href="#"><span><img src="images/20.jpg" width="50" alt="image"></span>Fruit</a></li>
									<li><a href="#"><span><img src="images/19.jpg" width="50" alt="image"></span>Organic</a></li>
								</ul>
							</div>
						</div>
						<div class="col-sm-8 col-md-8 col-lg-7 p-0">
							<div class="main-menu">
								
									<div class="navbar-header">
										<button type="button" class="navbar-toggle collapsed m-r-xs-15">
											<span class="sr-only">Toggle navigation</span>
											<span class="icon-bar"></span>
											<span class="icon-bar"></span>
											<span class="icon-bar"></span>
										</button>
									</div>
									<div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
										<ul class="nav navbar-nav"> 
											<li><a href="home.jsp">Home</a></li>
											<li><a href="login.jsp">Login</a></li>
											<li><a href="register.jsp">Register</a></li>
										</ul>
									</div>
								
							</div>
						</div>		
						<div class="col-sm-3 col-md-3 col-lg-3 p-0">
							<div class="search-box m-l-xs-15 m-r-xs-15">
								<input type="text" class="form-item">
								<button type="submit" class="fa fa-search"></button>
							</div>
						</div>
					</div>
				</div>
			</div>
			
		<div class="heading-inner-page">
			<div class="container">
				<h2>Login</h2>
				<ul class="breadcrumb">
					<li><a href="#">Home</a></li>
					<li>Login</li>
				</ul>
			</div>
		</div>
		<!-- Login page -->
		<div class="m-t-60">
			<div class="container">
				<div class="bg-img-2 position-left">
					<div class="row">
						<div class="col-sm-6 col-sm-offset-3">
							<div class="box p-40 p-xs-20 bg-white">
								<form action="login" method="post">
									<div class="form-group">
										<label class="control-label" for="input-email">Phone</label>
										<input type="text" name="phone" value="" id="input-email" class="form-control form-item">
									</div>
									<div class="form-group m-t-30">
										<label class="control-label" for="input-password">Password</label>
										<input type="password" name="password" value="" id="input-password" class="form-control form-item">
										<a class="m-b-30" href="#">Forgotten Password</a>
									</div>
									<input type="submit" class="btn ht-btn bg-6" value="Login">
								</form>
							</div>
						</div>
					 </div>
				 </div>
			</div>
		</div>
		
		<!-- jQuery -->
		<script src="js/jquery/jquery-2.2.4.min.js"></script>
		<!-- JqueryUI -->
		<script src="js/jquery/jquery-ui.js"></script>
		<!-- Bootstrap -->
		<script src="js/bootstrap/bootstrap.min.js"></script>
		<!-- Owl-coursel -->
		<script src="js/owl-coursel/owl.carousel.js"></script>
		<!-- Magnific-popup -->
		<script src="js/magnific-popup/jquery.magnific-popup.min.js"></script>
		<!-- Script -->
		<script src="js/script.js"></script>

</body>
</html>