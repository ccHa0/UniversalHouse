<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
	<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
		<!DOCTYPE html>
		<html lang="en">

		<head>
			<meta charset="UTF-8">
			<meta name="description" content="">
			<meta http-equiv="X-UA-Compatible" content="IE=edge">
			<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
			<!-- The above 4 meta tags *must* come first in the head; any other head content must come *after* these tags -->

			<!-- Title  -->
			<title>UniversalHouse - Furniture Ecommerce Template | Home</title>

			<!-- Favicon  -->
			<link rel="icon" href="img/core-img/favicon.ico">

			<!-- Core Style CSS -->
			<link rel="stylesheet" href="<c:url value='/amado-master/css/core-style.css' />">
			<link rel="stylesheet" href="<c:url value='/amado-master/css/style.css' />">

		</head>

		<body>
			<!-- Search Wrapper Area Start -->
			<div class="search-wrapper section-padding-100">
				<div class="search-close">
					<i class="fa fa-close" aria-hidden="true"></i>
				</div>
				<div class="container">
					<div class="row">
						<div class="col-12">
							<div class="search-content">
								<form action="#" method="get">
									<input type="search" name="search" id="search" placeholder="Type your keyword...">
									<button type="submit">
										<img src="img/core-img/search.png" alt="">
									</button>
								</form>
							</div>
						</div>
					</div>
				</div>
			</div>
			<!-- Search Wrapper Area End -->

			<!-- ##### Main Content Wrapper Start ##### -->
			<div class="main-content-wrapper d-flex clearfix">

				<!-- Mobile Nav (max width 767px)-->
				<div class="mobile-nav">
					<!-- Navbar Brand -->
					<div class="amado-navbar-brand">
						<a href="<c:url value='/index.jsp' />"><img
								src="<c:url value='/amado-master/css/core-style.css' />" alt=""></a>

					</div>
					<!-- Navbar Toggler -->
					<div class="amado-navbar-toggler">
						<span></span><span></span><span></span>
					</div>
				</div>

				<!-- Header Area Start -->
				<header class="header-area clearfix">
					<!-- Close Icon -->
					<div class="nav-close">
						<i class="fa fa-close" aria-hidden="true"></i>
					</div>
					<!-- Logo -->
					<div class="logo">
						<a href="<c:url value='/index.jsp' />"><img
								src="<c:url value='/amado-master/img/core-img/logo.png' />" alt=""></a>
					</div>
					<!-- Amado Nav -->
					<!-- ?????? -->
					<nav class="amado-nav">
						<ul>
							<li class="active"><a href="<c:url value='/index.jsp' />">Home</a></li>
							<li><a href="<c:url value='/project/myIndex.jsp' />">Project</a></li>
							<li><a href="<c:url value='/showAllSpaceServlet' />">Space
									Rental</a></li>
							<li><a href="<c:url value='/queryCourseServlet' />">Course</a></li>
							<li><a href="<c:url value='/test/testIndex.jsp' />">Test</a></li>
							<li><a href="<c:url value='/frontPage' />">Forum</a></li>
						</ul>
					</nav>
					<!-- Button Group -->
					<div class="amado-btn-group mt-30 mb-100">
						<a href="#" id="Login" class="btn amado-btn mb-15">%Discount%</a>
						<c:choose>
							<c:when test="${!empty LoginOK}">
								<a href="<c:url value='/logout.do'/>" class="btn amado-btn active">Logout</a>
								<p class="userInfo">User: ${ LoginOK.memberId }</p>
								<p class="userInfo">Last login time: ${ LoginOK.lastLogin }</p>
							</c:when>
							<c:otherwise>
								<a href="<c:url value='/login'/>"  action="post" class="btn amado-btn active">Login</a>
							</c:otherwise>
						</c:choose>
					</div>
					<!-- Cart Menu -->
					<div class="cart-fav-search mb-100">
							<a href="<c:url value='/showMember.controller/showAllMember.do' />" class="cart-nav"><img
								src="<c:url value='/amado-master/img/core-img/cart.png' />" alt="">Account 
							</a> 
							<a href="<c:url value='/showMember.controller/showMemberInfo.do' />" class="cart-nav"><img
									src="<c:url value='/amado-master/img/core-img/cart.png' />" alt="">Personal
							</a>
							<a href="#" class="fav-nav"><img
									src="<c:url value='/amado-master/img/core-img/favorites.png'/>" alt=""> Favorite</a>
							<a href="#" class="search-nav"><img
									src="<c:url value='/amado-master/img/core-img/search.png'/>" alt="">Search</a>
					</div>
					<!-- Social Button -->
					<div class="social-info d-flex justify-content-between">
						<a href="#"><i class="fa fa-pinterest" aria-hidden="true"></i></a> <a href="#"><i
								class="fa fa-instagram" aria-hidden="true"></i></a> <a href="#"><i
								class="fa fa-facebook" aria-hidden="true"></i></a> <a href="#"><i class="fa fa-twitter"
								aria-hidden="true"></i></a>
					</div>
				</header>
				<!-- Header Area End -->

				<!-- Product Catagories Area Start -->
				<div class="products-catagories-area clearfix">
					<div class="amado-pro-catagory clearfix">

						<!-- Single Catagory -->
						<div class="single-products-catagory clearfix">
							<a href="shop.html"> <img src="<c:url value='/amado-master/img/bg-img/1.jpg'/>" alt="">
								<!-- Hover Content -->
								<div class="hover-content">
									<div class="line"></div>
									<p>From $180</p>
									<h4>Modern Chair</h4>
								</div>
							</a>
						</div>

						<!-- Single Catagory -->
						<div class="single-products-catagory clearfix">
							<a href="shop.html"> <img src="<c:url value='/amado-master/img/bg-img/2.jpg'/>" alt="">
								<!-- Hover Content -->
								<div class="hover-content">
									<div class="line"></div>
									<p>From $180</p>
									<h4>Minimalistic Plant Pot</h4>
								</div>
							</a>
						</div>

						<!-- Single Catagory -->
						<div class="single-products-catagory clearfix">
							<a href="shop.html"> <img src="<c:url value='/amado-master/img/bg-img/3.jpg'/>" alt="">
								<!-- Hover Content -->
								<div class="hover-content">
									<div class="line"></div>
									<p>From $180</p>
									<h4>Modern Chair</h4>
								</div>
							</a>
						</div>

						<!-- Single Catagory -->
						<div class="single-products-catagory clearfix">
							<a href="shop.html"> <img src="<c:url value='/amado-master/img/bg-img/4.jpg'/>" alt="">
								<!-- Hover Content -->
								<div class="hover-content">
									<div class="line"></div>
									<p>From $180</p>
									<h4>Night Stand</h4>
								</div>
							</a>
						</div>

						<!-- Single Catagory -->
						<div class="single-products-catagory clearfix">
							<a href="shop.html"> <img src="<c:url value='/amado-master/img/bg-img/5.jpg'/>" alt="">
								<!-- Hover Content -->
								<div class="hover-content">
									<div class="line"></div>
									<p>From $18</p>
									<h4>Plant Pot</h4>
								</div>
							</a>
						</div>

						<!-- Single Catagory -->
						<div class="single-products-catagory clearfix">
							<a href="shop.html"> <img src="<c:url value='/amado-master/img/bg-img/6.jpg'/>" alt="">
								<!-- Hover Content -->
								<div class="hover-content">
									<div class="line"></div>
									<p>From $320</p>
									<h4>Small Table</h4>
								</div>
							</a>
						</div>

						<!-- Single Catagory -->
						<div class="single-products-catagory clearfix">
							<a href="shop.html"> <img src="<c:url value='/amado-master/img/bg-img/7.jpg'/>" alt="">
								<!-- Hover Content -->
								<div class="hover-content">
									<div class="line"></div>
									<p>From $318</p>
									<h4>Metallic Chair</h4>
								</div>
							</a>
						</div>

						<!-- Single Catagory -->
						<div class="single-products-catagory clearfix">
							<a href="shop.html"> <img src="<c:url value='/amado-master/img/bg-img/8.jpg'/>" alt="">
								<!-- Hover Content -->
								<div class="hover-content">
									<div class="line"></div>
									<p>From $318</p>
									<h4>Modern Rocking Chair</h4>
								</div>
							</a>
						</div>

						<!-- Single Catagory -->
						<div class="single-products-catagory clearfix">
							<a href="shop.html"> <img src="<c:url value='/amado-master/img/bg-img/9.jpg'/>" alt="">
								<!-- Hover Content -->
								<div class="hover-content">
									<div class="line"></div>
									<p>From $318</p>
									<h4>Home Deco</h4>
								</div>
							</a>
						</div>
					</div>
				</div>
				<!-- Product Catagories Area End -->
			</div>
			<!-- ##### Main Content Wrapper End ##### -->

			<!-- ##### Newsletter Area Start ##### -->
			<section class="newsletter-area section-padding-100-0">
				<div class="container">
					<div class="row align-items-center">
						<!-- Newsletter Text -->
						<div class="col-12 col-lg-6 col-xl-7">
							<div class="newsletter-text mb-100">
								<h2>
									Subscribe for a <span>25% Discount</span>
								</h2>
								<p>Nulla ac convallis lorem, eget euismod nisl. Donec in
									libero sit amet mi vulputate consectetur. Donec auctor interdum
									purus, ac finibus massa bibendum nec.</p>
							</div>
						</div>
						<!-- Newsletter Form -->
						<div class="col-12 col-lg-6 col-xl-5">
							<div class="newsletter-form mb-100">
								<form action="#" method="post">
									<input type="email" name="email" class="nl-email" placeholder="Your E-mail"> <input
										type="submit" value="Subscribe">
								</form>
							</div>
						</div>
					</div>
				</div>
			</section>
			<!-- ##### Newsletter Area End ##### -->

			<!-- ##### Footer Area Start ##### -->
			<footer class="footer_area clearfix">
				<div class="container">
					<div class="row align-items-center">
						<!-- Single Widget Area -->
						<div class="col-12 col-lg-4">
							<div class="single_widget_area">
								<!-- Logo -->
								<div class="footer-logo mr-50">
									<a href="index.html"><img
											src="<c:url value='/amado-master/img/core-img/logo2.png'/>" alt=""></a>
								</div>
								<!-- Copywrite Text -->
								<p class="copywrite">
									<!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
									Copyright &copy;
									<script>
										document.write(new Date().getFullYear());
									</script>
									All rights reserved | This template is made with <i class="fa fa-heart-o"
										aria-hidden="true"></i> by <a href="https://colorlib.com"
										target="_blank">Colorlib</a> &
									Re-distributed by <a href="https://themewagon.com/" target="_blank">Themewagon</a>
									<!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
								</p>
							</div>
						</div>
						<!-- Single Widget Area -->
						<div class="col-12 col-lg-8">
							<div class="single_widget_area">
								<!-- Footer Menu -->
								<div class="footer_menu">
									<nav class="navbar navbar-expand-lg justify-content-end">
										<button class="navbar-toggler" type="button" data-toggle="collapse"
											data-target="#footerNavContent" aria-controls="footerNavContent"
											aria-expanded="false" aria-label="Toggle navigation">
											<i class="fa fa-bars"></i>
										</button>
										<div class="collapse navbar-collapse" id="footerNavContent">
											<ul class="navbar-nav ml-auto">
												<li class="nav-item active"><a class="nav-link"
														href="<c:url value='/' />">Home</a></li>
												<li class="nav-item"><a class="nav-link" href="shop.html">PROJECT</a>
												</li>
												<li class="nav-item"><a class="nav-link"
														href="product-details.html">SPACE RENTAL</a></li>
												<li class="nav-item"><a class="nav-link" href="cart.html">COURSE</a>
												</li>
												<li class="nav-item"><a class="nav-link" href="checkout.html">TEST</a>
												</li>
												<li class="nav-item"><a class="nav-link" href="checkout.html">FORUM</a>
												</li>
											</ul>
										</div>
									</nav>
								</div>
							</div>
						</div>
					</div>
				</div>
			</footer>
			<!-- ##### Footer Area End ##### -->

			<!-- ##### jQuery (Necessary for All JavaScript Plugins) ##### -->
			<script src="<c:url value='/amado-master/js/jquery/jquery-2.2.4.min.js'/>"></script>
			<!-- Popper js -->
			<script src="<c:url value='/amado-master/js/popper.min.js'/>"></script>
			<!-- Bootstrap js -->
			<script src="<c:url value='/amado-master/js/bootstrap.min.js'/>"></script>
			<!-- Plugins js -->
			<script src="<c:url value='/amado-master/js/plugins.js'/>"></script>
			<!-- Active js -->
			<script src="<c:url value='/amado-master/js/active.js'/>"></script>
			<script>


			</script>

		</body>

		</html>