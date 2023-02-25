<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>

<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="UTF-8">
<meta name="description" content="">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<!-- The above 4 meta tags *must* come first in the head; any other head content must come *after* these tags -->

<!-- Title  -->
<title>Amado - Furniture Ecommerce Template | Cart</title>

<!-- Favicon  -->

<link rel="icon"
	href="<c:url value='/amado-master/img/core-img/favicon.ico'/>">

<!-- Core Style CSS -->
<link rel="stylesheet"
	href="<c:url value='/amado-master/css/core-style.css'/>">
<link rel="stylesheet" href="<c:url value='/amado-master/style.css'/>">
<link rel="stylesheet"
	href="<c:url value='/amado-master/scss/style.scss'/>">

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
						<form:form action="#" method="get">

							<input type="search" name="search" id="search"
								placeholder="Type your keyword...">
							<button type="submit">
								<img
									src="<c:url value='/amado-master/img/core-img/search.png'/>"
									alt="">
							</button>
						</form:form>
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

				<a href="<c:url value='/index.jsp'/>"><img
					src="<c:url value='/amado-master/img/core-img/logo.png'/>" alt=""></a>
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

				<a href="<c:url value='/index.jsp'/>"><img
					src="<c:url value='/amado-master/img/core-img/logo.png'/>" alt=""></a>
			</div>
			<!-- Amado Nav -->
			<nav class="amado-nav">
				<ul>
					<li><a href="<c:url value='/index.jsp'/>">Home</a></li>
					<li><a href="<c:url value='/'/>">Project</a></li>
					<li><a href="<c:url value='/'/>">Space Rental</a></li>
					<li class="active"><a href="<c:url value='/'/>">Course</a></li>
					<li><a href="<c:url value='/'/>">Test</a></li>
					<li><a href="<c:url value='/'/>">Forum</a></li>
				</ul>
			</nav>
			<!-- Button Group -->
			<div class="amado-btn-group mt-30 mb-100">
				<a href="#" class="btn amado-btn mb-15">%Discount%</a> <a href="#"
					class="btn amado-btn active">New this week</a>
			</div>
			<!-- Cart Menu -->
			<div class="cart-fav-search mb-100">

				<a href="cart.html" class="cart-nav"><img
					src="<c:url value='/amado-master/img/core-img/cart.png'/>" alt="">
					Account <span>(0)</span></a> <a href="#" class="fav-nav"><img
					src="<c:url value='/amado-master/img/core-img/favorites.png'/>"
					alt=""> Favourite</a> <a href="#" class="search-nav"><img
					src="<c:url value='/amado-master/img/core-img/search.png'/>" alt="">
					Search</a>
			</div>
			<!-- Social Button -->
			<div class="social-info d-flex justify-content-between">
				<a href="#"><i class="fa fa-pinterest" aria-hidden="true"></i></a> <a
					href="#"><i class="fa fa-instagram" aria-hidden="true"></i></a> <a
					href="#"><i class="fa fa-facebook" aria-hidden="true"></i></a> <a
					href="#"><i class="fa fa-twitter" aria-hidden="true"></i></a>
			</div>
		</header>
		<!-- Header Area End -->

		<div class="cart-table-area section-padding-100">
			<div class="container-fluid">
				<!-- <div class="row"> -->
				<div>
					<div class="cart-title mt-50">
						<h2>論壇資料庫</h2>
					</div>

					<div class="clearfix">
						<form id="form" enctype="multipart/form-data" method="POST">
							<table class="table table-responsive">
								<!-- <thead style="display: table-header-group;"> -->
								<thead>
									<tr>
										<th style="flex: 8%">imgNo</th>
										<th style="flex: 8%">articleId</th>
										<th style="flex: 8%">imgName</th>
										<th style="flex: 8%">img</th>
										<th style="flex: 8%">update</th>
										

									</tr>
								</thead>
								
								<tbody id="tb">
									<c:choose>
									    <c:when test="${empty imgs}">
									        <tr><td style="vertical-align: middle; flex:auto"><span>沒有資料</span></td></tr>
									    </c:when>

									    <c:otherwise>
											<c:forEach var="img" items="${imgs}">
												<tr>
													
													<td style="vertical-align: middle; flex:auto"><span>${img.imgNo}</span>
													<td style="vertical-align: middle; flex:auto"><span>${article.articleId}</span>
													<td style="vertical-align: middle; flex:auto"><span>${img.imgName}</span>
													<td style="vertical-align: middle; flex:auto"><span><img height="50" width="50" src="<c:url value='/getArticleImage?imgNo=${img.imgNo} ' />"></span>
													
													<td>
														<input type="hidden" name="articleId" value="${article.articleId}">
														<input type="hidden" name="imgNo" value="${img.imgNo}">
														<input type="submit" value="刪除圖片" formaction="<c:url value='/deleteImg_CMS' />">
<!-- 														<input type="button" value="刪除" id="delete"/> -->
		<%-- 												<input type="submit" value="更新圖片" formaction="<c:url value='/updateImg_CMS' />"> --%>
													</td>
													
												</tr>
												
											</c:forEach>
									    </c:otherwise>
									</c:choose>
								</tbody>
								
							</table>
							
						</form>
							<a href="<c:url value='/CMS' />">回前頁</a>
					</div>
				</div>

				<!-- </div> -->
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
							<input type="email" name="email" class="nl-email"
								placeholder="Your E-mail"> <input type="submit"
								value="Subscribe">
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
							<a href="<c:url value='/index.jsp'/>"><img
								src="img/core-img/logo2.png" alt=""></a>
						</div>
						<!-- Copywrite Text -->
						<p class="copywrite">
							<!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
							Copyright &copy;
							<script>document.write(new Date().getFullYear());</script>
							All rights reserved | This template is made with <i
								class="fa fa-heart-o" aria-hidden="true"></i> by <a
								href="https://colorlib.com" target="_blank">Colorlib</a>
							<!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
							& Re-distributed by <a href="https://themewagon.com/"
								target="_blank">Themewagon</a>
						</p>
					</div>
				</div>
				<!-- Single Widget Area -->
				<div class="col-12 col-lg-8">
					<div class="single_widget_area">
						<!-- Footer Menu -->
						<div class="footer_menu">
							<nav class="navbar navbar-expand-lg justify-content-end">
								<button class="navbar-toggler" type="button"
									data-toggle="collapse" data-target="#footerNavContent"
									aria-controls="footerNavContent" aria-expanded="false"
									aria-label="Toggle navigation">
									<i class="fa fa-bars"></i>
								</button>
								<div class="collapse navbar-collapse" id="footerNavContent">
									<ul class="navbar-nav ml-auto">
										<li class="nav-item active"><a class="nav-link"
											href="<c:url value='/index.jsp'/>">Home</a></li>
										<li class="nav-item"><a class="nav-link"
											href="<c:url value='/'/>">Space Rental</a></li>
										<li class="nav-item"><a class="nav-link"
											href="product-details.html">Course</a></li>
										<li class="nav-item"><a class="nav-link" href="cart.html">Test</a>
										</li>
										<li class="nav-item"><a class="nav-link"
											href="checkout.html">Forum</a></li>
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

	<script src="<c:url value='/amado-master/js/popper.min.js'/>"></script>
	<script src="<c:url value='/amado-master/js/bootstrap.min.js'/>"></script>
	<script src="<c:url value='/amado-master/js/plugins.js'/>"></script>
	<script src="<c:url value='/amado-master/js/active.js'/>"></script>
	<script src="//cdn.jsdelivr.net/npm/sweetalert2@11"></script>
	
	<script src="https://code.jquery.com/jquery-3.6.1.min.js"></script>
	<script>
	$('#tb').on('click', '#delete', function() {
		
		var yes = confirm('確定要刪除嗎？');

		if (yes) {
			let imgNo = $(this).parent().siblings().eq(0).text();
			$.ajax({
				type : 'post',
				url : '<c:url value='/deleteImg_CMS'/>',
				data : {
					imgNo : imgNo,
					articleId : articleId,
				},

				success : function() {
					alert("刪除成功!");
				},
				error : function(thrownError) {
					alert("取消刪除")
				}
			});
		}
	})
	</script>
	
</body>

</html>