<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
    <title>Amado - Furniture Ecommerce Template | Regist</title>

    <!-- Favicon  -->
    <link rel="icon" href="../../amado-master/img/core-img/favicon.ico">

    <!-- Core Style CSS -->
    <link rel="stylesheet" href="<c:url value='/amado-master/css/core-style.css' />">
    <link rel="stylesheet" href=" <c:url value='/amado-master/style.css' />">

</head>

<body>
    <c:if test="${ ! empty sessionScope.timeOut }">
        <!-- 表示使用逾時，重新登入 -->
        <c:set var="msg" value="${sessionScope.timeOut}</font>" />
    </c:if>
    <!-- Search Wrapper Area Start -->
    <!-- Search Wrapper Area End -->

    <!-- ##### Main Content Wrapper Start ##### -->
    <div class="main-content-wrapper d-flex clearfix">

        <!-- Mobile Nav (max width 767px)-->
        <div class="mobile-nav">
            <!-- Navbar Brand -->
            <div class="amado-navbar-brand">
                <a href="<c:url value='/index.jsp' />"><img src="../../amado-master/img/core-img/logo.png" alt=""></a>
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
                <a href="<c:url value='/index.jsp' />"><img src="../../amado-master/img/core-img/logo.png" alt=""></a>
            </div>
            <!-- Amado Nav -->
            <nav class="amado-nav">
                <ul>
                    <li class="active"><a href="<c:url value='/index.jsp' />">Home</a></li>
                    <li><a href="<c:url value='/allProject/showServerProjectServlet' />">Project</a></li>
                    <li><a href="<c:url value='/spaceAdmin/showAllSpaceServlet' />">Space Rental</a></li>
                    <li><a href="<c:url value='/queryCourseServlet' />">Course</a></li>
                    <li><a href="<c:url value='/ShowTestOverServlet.do' />">Test</a></li>
                    <li><a href="<c:url value='/FrontPage' />">Forum</a></li>
                </ul>
            </nav>
            <!-- Button Group -->
            <div class="amado-btn-group mt-30 mb-100">
                <a href="#" class="btn amado-btn mb-15">%Discount%</a>
            </div>
            <!-- Cart Menu -->
           
            <!-- Social Button -->
            <div class="social-info d-flex justify-content-between">
                <a href="#"><i class="fa fa-pinterest" aria-hidden="true"></i></a>
                <a href="#"><i class="fa fa-instagram" aria-hidden="true"></i></a>
                <a href="#"><i class="fa fa-facebook" aria-hidden="true"></i></a>
                <a href="#"><i class="fa fa-twitter" aria-hidden="true"></i></a>
            </div>
        </header>
        <!-- Header Area End -->

        <div class="cart-table-area section-padding-100">
            <div class="container-fluid">
                <div class="row">
                    <div class="col-12 col-lg-8">
                        <div class="checkout_details_area mt-50 clearfix">

                            <div class="cart-title" style="text-align: center;">
                                <h2>Login</h2>
                                <hr>
                                <p></p>
                            </div>

                            <form action="login.do" method="POST" name="loginForm"
                                style="margin-left: 80px;">
                                

                                <div class="col-18 mb-3">
                                    <label for="UserId">UserId: </label>
                                    <input type="text" class="form-control" name="memberId" id="UserId" placeholder="UserId"
                                        value="P@ssw0rd">&nbsp;${ErrorMsgKey.AccountEmptyError}
                                </div>
                                <div class="col-18 mb-3">
                                    <label for="Password">Password: </label>
                                    <input type="password" class="form-control" name="password" id="Password" placeholder="Password"
                                        value="P@ssw0rd">&nbsp;${ErrorMsgKey.PasswordEmptyError}
                                </div>
                                <div class="col-12">
                                    <div class="custom-control custom-checkbox d-block mb-2">
                                        <input type="checkbox" class="custom-control-input" name="rememberMe" id="rm"
                                            <c:if test="${rm}">
                                        checked='checked'
                                        </c:if>
                                        value="true">
                                        
                                        <label class="custom-control-label" for="rm">Remember the ID and
                                            Password</label>
                                    </div>
                                </div>
                                <div class="col-12">
                                    &nbsp;${ErrorMsgKey.LoginError}&nbsp;
                                </div>

                                <div class="cart-btn mt-100">
                                	<input class="btn amado-btn w-100" id="submit" type="submit" value="Login">
                                    <a href="<c:url value='/regist' />"><p style="text-align: center; margin: 5px; color: #4F9D9D ">or Sign up</p></a>
                                    
                                </div>

                            </form>
                        </div>

                    </div>
                </div>
                <input type="text" class="custom-control-input" id="test1">
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
                        <h2>Subscribe for a <span>25% Discount</span></h2>
                        <p>Nulla ac convallis lorem, eget euismod nisl. Donec in libero sit amet mi vulputate
                            consectetur. Donec auctor interdum purus, ac finibus massa bibendum nec.</p>
                    </div>
                </div>
                <!-- Newsletter Form -->
                <div class="col-12 col-lg-6 col-xl-5">
                    <div class="newsletter-form mb-100">
                        <form action="#" method="post">
                            <input type="email" name="email" class="nl-email" placeholder="Your E-mail">
                            <input type="submit" value="Subscribe">
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
                            <a href="index.html"><img src="../../amado-master/img/core-img/logo2.png" alt=""></a>
                        </div>
                        <!-- Copywrite Text -->
                        <p class="copywrite">
                            <!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
                            Copyright &copy;
                            <script>document.write(new Date().getFullYear());</script> All rights reserved |
                            This
                            template is made with <i class="fa fa-heart-o" aria-hidden="true"></i> by <a
                                href="https://colorlib.com" target="_blank">Colorlib</a> & Re-distributed by <a
                                href="https://themewagon.com/" target="_blank">Themewagon</a>
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
                                    aria-expanded="false" aria-label="Toggle navigation"><i
                                        class="fa fa-bars"></i></button>
                                <div class="collapse navbar-collapse" id="footerNavContent">
                                    <ul class="navbar-nav ml-auto">
                                        <li class="nav-item active">
                                        	<a class="nav-link" href="<c:url value='/' />">Home</a>
                                        </li>
                                        <li class="nav-item">
                                            <a class="nav-link" href="<c:url value='/allProject/showServerProjectServlet' />">PROJECT</a>
                                        </li>
                                        <li class="nav-item">
                                            <a class="nav-link" href="<c:url value='/spaceAdmin/showAllSpaceServlet' />">SPACE RENTAL</a>
                                        </li>
                                        <li class="nav-item">
                                            <a class="nav-link" href="<c:url value='/queryCourseServlet' />">COURSE</a>
                                        </li>
                                        <li class="nav-item">
                                            <a class="nav-link" href="<c:url value='/ShowTestOverServlet.do' />">TEST</a>
                                        </li>
                                        <li class="nav-item">
                                            <a class="nav-link" href="<c:url value='/FrontPage' />">FORUM</a>
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
    <script src="https://code.jquery.com/jquery-3.6.1.min.js"></script>
    <!-- Popper js -->
    <script src="<c:url value='/amado-master/js/popper.min.js' />"></script>
    <!-- Bootstrap js -->
    <script src="<c:url value='/amado-master/js/bootstrap.min.js' />"></script>
    <!-- Plugins js -->
    <script src="../../"></script>
    <!-- Active js -->
    <script src="<c:url value='/amado-master/js/active.js' />"></script>

</body>

</html>