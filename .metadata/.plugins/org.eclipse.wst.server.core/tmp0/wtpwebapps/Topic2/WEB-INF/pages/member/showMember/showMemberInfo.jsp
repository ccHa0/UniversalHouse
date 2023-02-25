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
			<style>
				.image-upload>input {
					display: none;
				}
			</style>

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
					<!-- 左列 -->
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
								<a href="<c:url value='/member/login/login.jsp'/>"
									class="btn amado-btn active">Login</a>
							</c:otherwise>
						</c:choose>
					</div>
					<!-- Cart Menu -->
					<div class="cart-fav-search mb-100">
						<a href="<c:url value='/showMember.controller/showAllMember.do' />" class="cart-nav"><img
								src="<c:url value='/amado-master/img/core-img/cart.png' />" alt="">Account
						</a> <a href="<c:url value='/showMember.controller/showMemberInfo.do' />" class="cart-nav"><img
								src="<c:url value='/amado-master/img/core-img/cart.png' />" alt="">Personal
						</a> <a href="#" class="fav-nav"><img
								src="<c:url value='/amado-master/img/core-img/favorites.png'/>" alt=""> Favorite</a> <a
							href="#" class="search-nav"><img
								src="<c:url value='/amado-master/img/core-img/search.png'/>" alt="">Search</a>
					</div>
					<!-- Social Button -->
					<div class="social-info d-flex justify-content-between">
						<a href="#"><i class="fa fa-pinterest" aria-hidden="true"></i></a> <a href="#"><i
								class="fa fa-instagram" aria-hidden="true"></i></a> <a href="#"><i
								class="fa fa-facebook" aria-hidden="true"></i></a> <a href="#"><i class="fa fa-twitter"
								aria-hidden="true"></i></a>
					</div>
					<style>
						.checkout_details_area form .nice-select {
							border-radius: 0;
							height: 60px;
							line-height: 60px;
							background-color: #f5f7fa;
							border: none;
							color: #6b6b6b;
							font-size: 14px;
						}
					</style>
				</header>
				<!-- Header Area End -->

				<div class="cart-table-area section-padding-100">
					<div class="container-fluid">
						<div class="row">
							<div class="col-12 col-lg-8">
								<div class="checkout_details_area mt-50 clearfix">

									<div class="cart-title" style="text-align: center;">
										<h2>Membership Detail</h2>
										<hr>
										<p></p>
									</div>

									<form action="<c:url value='/modifyMemberInfo/modifyByMember.do'/>" method="post"
										style="margin-left: 80px;" enctype="multipart/form-data">
										<div class="row">
											<div class="col-md-6 mb-3">
												<label for="memberId">UserId: </label> <input type="text"
													class="form-control" id="memberId" placeholder="UserId"
													value="${LoginOK.memberId}" readonly="readonly" name="memberId">
												<label for="name">Name: </label> <input type="text" class="form-control"
													id="name" placeholder="name" value="${LoginOK.name}" name="name">

											</div>
											<div class="col-md-6 mb-3">
												<c:choose>
													<c:when test="${empty member.memberImage}">
														<div class="image-upload">
															<label for="memberImage"> <img
																	src="<c:url value='/amado-master/img/core-img/member.png'/>"
																	alt="Product" style="width: 100%">
															</label> <input id="memberImage" name="memberImage"
																type="file" />
														</div>
													</c:when>
													<c:otherwise>
														<div class="image-upload">
															<label for="memberImage"> <img
																	src="<c:url value='/ShowMemberImgServlet.do?memberId=${member.memberId}'/>"
																	alt="Product" style="width: 100%">
															</label> <input id="memberImage" name="memberImage"
																type="file" />
														</div>
													</c:otherwise>
												</c:choose>
											</div>
											<div class="col-12 mb-3">
												<label for="location">Location: </label> <select
													class="w-100 nice-select" id="location" name="location">
													<option value="Keelung">Keelung</option>
													<option value="New Taipei">New Taipei</option>
													<option value="Taipei">Taipei</option>
													<option value="Taoyuan">Taoyuan</option>
													<option value="Hsinchu">Hsinchu</option>
													<option value="Miaoli">Miaoli</option>
													<option value="Taichung">Taichung</option>
													<option value="Changhua">Changhua</option>
													<option value="Nantou">Nantou</option>
													<option value="Yunli">Yunli</option>
													<option value="Chiayi">Chiayi</option>
													<option value="Taina">Taina</option>
													<option value="Kaohsiung">Kaohsiung</option>
													<option value="Pingtung">Pingtung</option>
													<option value="Yilan">Yilan</option>
													<option value="Hualien">Hualien</option>
													<option value="Taitung">Taitung</option>
													<option value="Penghu">Penghu</option>
													<option value="Kinmen">Kinmen</option>
													<option value="Lienchiang   ">Lienchiang</option>
												</select>
											</div>
											<div class="col-12 mb-3">
												<label for="email">Email address: </label> <input type="text"
													class="form-control" id="email" placeholder="Email"
													value="${LoginOK.email}" name="email">
											</div>

											<div class="col-12 mb-3">
												<label for="gender">Gender: </label>
												<input type="text" class="form-control" id="gender" placeholder="gender"
													value="${LoginOK.gender}" name="gender" readonly>
												<label for="birthday">Birthday: </label>
												<input type="date" class="form-control" id="birthday"
													placeholder="Birthday" value="${LoginOK.birthday}" name="birthday">
												<label for="verification">Verification: </label>
												<input type="text" class="form-control" id="verification"
													placeholder="Verification" value="${LoginOK.verification}"
													readonly="readonly" name="verification">
												<label for="permission">Permission: </label>
												<input type="text" class="form-control" id="permission"
													placeholder="Permission" value="${LoginOK.permission}"
													readonly="readonly" name="permission">
											</div>

											<div class="cart-btn col-12 mt-100">
												<input class="btn amado-btn w-100" type="submit" value="confirm">
											</div>
										</div>
									</form>
								</div>

							</div>
						</div>
						<input type="text" class="custom-control-input" id="test1">
					</div>
				</div>
			</div>
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
									<a href="index.html"><img src="../img/core-img/logo2.png" alt=""></a>
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
														href="index.html">Home</a></li>
												<li class="nav-item"><a class="nav-link" href="shop.html">aaa</a>
												</li>
												<li class="nav-item"><a class="nav-link"
														href="product-details.html">Product</a></li>
												<li class="nav-item"><a class="nav-link" href="cart.html">Cart</a>
												</li>
												<li class="nav-item"><a class="nav-link"
														href="checkout.html">Checkout</a></li>
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
			<script src="js/jquery/jquery-2.2.4.min.js"></script>
			<!-- Popper js -->
			<script src="js/popper.min.js"></script>
			<!-- Bootstrap js -->
			<script src="js/bootstrap.min.js"></script>
			<!-- Plugins js -->
			<script src="js/plugins.js"></script>
			<!-- Active js -->
			<script src="js/active.js"></script>

		</body>

		</html>