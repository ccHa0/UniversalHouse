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
      <title>Universal House : Backstage</title>

      <!-- Favicon  -->
      <link rel="icon" href="/amado-master/img/core-img/logo.png">

      <!-- Core Style CSS -->
      <link rel="stylesheet" href="/amado-master/css/core-style.css">
      <link rel="stylesheet" href="/amado-master/style.css">
      <style>
        @import url('https://fonts.googleapis.com/css2?family=Noto+Sans+TC&display=swap');

        body {
          font-family: 'Noto Sans TC', sans-serif;
          font-size: 20px;
        }

        .main-content-wrapper .header-area .amado-nav li a {
          font-family: 'Noto Sans TC', sans-serif;
          font-size: 20px;
        }

        th,
        td {
          word-break: break-all;
        }

        .main-content-wrapper .cart-table-area table thead tr th {
          font-size: 16px
        }

        .image-upload>input {
          display: none;
        }

        a {
          -webkit-transition: all 500ms ease 0s;
          transition: all 500ms ease 0s;
          text-decoration: none;
          outline: 0 solid transparent;
          color: #131212;
          font-weight: 400;
          font-size: 20px;
        }


        .footer_area .single_widget_area .footer_menu .navbar-nav .nav-item .nav-link {
          font-size: 20px
        }

        .main-content-wrapper .header-area .amado-nav li a {
          color: white
        }

        .insert-btn:hover {
          transform: scale(1.05);
        }


        /* #myTable {
          width: auto;
          height: auto;
        } */
      </style>


    </head>

    <body>
      <!-- ##### Main Content Wrapper Start ##### -->
      <div class="main-content-wrapper d-flex clearfix">

        <!-- Mobile Nav (max width 767px)-->
        <div class="mobile-nav">
          <!-- Navbar Brand -->
          <div class="amado-navbar-brand">
            <a href="/"><img src="/amado-master/img/core-img/logo.png" alt=""></a>
          </div>
          <!-- Navbar Toggler -->
          <div class="amado-navbar-toggler">
            <span></span><span></span><span></span>
          </div>
        </div>

        <!-- Header Area Start -->
        <header class="header-area clearfix" style="background-color:#212529">
          <!-- Close Icon -->
          <div class="nav-close">
            <i class="fa fa-close" aria-hidden="true"></i>
          </div>
          <!-- Logo -->
          <div class="logo">

            <a href="/admin/showAllMember"><img width="150px" height="150px"
                src="/amado-master/img/core-img/newLogo.png" alt=""></a>
          </div>
          <!-- Amado Nav -->
          <nav class="amado-nav">
            <ul>
              <li class="active"><a href="/">??????</a></li>
              <li><a href="/admin/showAllMember">??????</a></li>
              <li><a href="/admin/projects/showAllEntrusBacktage/1">??????</a></li>
              <li><a href="/admin/spacereadall.controller">????????????</a></li>
              <li><a href="/admin/showAllcourse">??????</a></li>
              <li><a href="/admin/testBackstage" id="openShopSideBar1">??????</a></li>
              <div class="catagories-menu" id="showShopSideBar1">
                <ul>
                  <li><a href="/admin/insertTest" style="text-shadow: 0px 0px 5px #C0C0C0;">????????????</a>
                  </li>
                  <li><a href="/admin/showtester" style="text-shadow: 0px 0px 5px #C0C0C0;">????????????</a></li>
                  <li><a href="/admin/showQuestionResults" style="text-shadow: 0px 0px 5px #C0C0C0;">??????????????????</a></li>
                </ul>
              </div>
              <li><a href="/admin/forumBackstage">??????</a></li>
            </ul>
          </nav>
          <!-- Button Group -->
          <div class="amado-btn-group mt-30 mb-100" id="loginDiv">
            <a href="/" id="memberCenterOrBs" class="btn amado-btn mb-15">????????????</a>
          </div>

        </header>
        <!-- Header Area End -->

        <!-- ??????????????????-->




        <div class="cart-table-area section-padding-100">
          <div class="container-fluid">
            <div class="row">
              <div class="cart-title mt-50">
                <h2>??????????????????</h2>
              </div>

              <form action="/admin/exportCsv" id="form" enctype="multipart/form-data" method="get" style="width:1199px">

                <table id="myTable" class="table table-striped table-bordered dt-responsive nowrap"
                  style="width: 100%;">

                </table>
                <input type="submit" value="??????CSV">
              </form>
            </div>
          </div>
        </div>
        <!-- ???????????? -->

      </div>
      <!-- ##### Main Content Wrapper End ##### -->

      <!-- ##### Footer Area Start ##### -->
      <footer class="footer_area clearfix">
        <div class="container">
          <div class="row align-items-center">
            <!-- Single Widget Area -->
            <div class="col-12 col-lg-4">
              <div class="single_widget_area">
                <!-- Logo -->
                <div class="footer-logo mr-50">
                  <a href="/"><img width="200px" height="200px" src="/amado-master/img/core-img/newLogo.png" alt=""></a>
                </div>
              </div>
            </div>
            <!-- Single Widget Area -->
            <div class="col-12 col-lg-8">
              <div class="single_widget_area">
                <!-- Footer Menu -->
                <div class="footer_menu">
                  <nav class="navbar navbar-expand-lg justify-content-end">
                    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#footerNavContent"
                      aria-controls="footerNavContent" aria-expanded="false" aria-label="Toggle navigation"><i
                        class="fa fa-bars"></i></button>
                    <div class="collapse navbar-collapse" id="footerNavContent">
                      <ul class="navbar-nav ml-auto">
                        <li class="nav-item">
                          <a class="nav-link" href="showAllMember">??????</a>
                        </li>
                        <li class="nav-item">
                          <a class="nav-link" href="/admin/projects/showAllEntrusBacktage/1">??????</a>
                        </li>
                        <li class="nav-item">
                          <a class="nav-link" href="/admin/spacereadall.controller">??????</a>
                        </li>
                        <li class="nav-item">
                          <a class="nav-link" href="/admin/showAllcourse">??????</a>
                        </li>
                        <li class="nav-item">
                          <a class="nav-link" href="/admin/testBackstage">??????</a>
                        </li>
                        <li class="nav-item">
                          <a class="nav-link" href="/admin/forumBackstage">??????</a>
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
      <script src="/amado-master/js/jquery/jquery-2.2.4.min.js"></script>
      <!-- Popper js -->
      <script src="/amado-master/js/popper.min.js"></script>
      <!-- Bootstrap js -->
      <script src="/amado-master/js/bootstrap.min.js"></script>
      <!-- Plugins js -->
      <script src="/amado-master/js/plugins.js"></script>
      <!-- Active js -->
      <script src="/amado-master/js/active.js"></script>
      <!-- dataTable -->

      <!-- DataTable -->

      <script src="//cdn.datatables.net/1.13.1/js/jquery.dataTables.min.js"></script>

      <script type="text/javascript" charset="utf8"
        src="https://cdn.datatables.net/1.13.2/js/jquery.dataTables.js"></script>
      <script>
        $(function () {
          var currentUser;
          //??????????????????????????????????????????????????? 
          $.ajax({
            type: "get",
            url: "/getCurrentUser.do",
            success: function (member) {
              currentUser = member;
            }
          });

          if ($('#showShopSideBar1').hide()) {
            $('#showShopSideBar2').show();
          } else if ($('#showShopSideBar2').show()) {
            $('#showShopSideBar1').hide();
          }

          $('#openShopSideBar1').mouseover(function () {
            $('#showShopSideBar1').show();
          })

          $('#openShopSideBar1').mouseout(function () {
            $('#showShopSideBar1').hide();
          })

          $('#showShopSideBar1').mouseover(function () {
            $(this).show();
          })

          $('#showShopSideBar1').mouseout(function () {
            $(this).hide();
          })

          $('#openShopSideBar2').mouseover(function () {
            $('#showShopSideBar2').show();
          })

          $('#openShopSideBar2').mouseout(function () {
            $('#showShopSideBar2').hide();
          })

          $('#showShopSideBar2').mouseover(function () {
            $(this).show();
          })

          $('#showShopSideBar2').mouseout(function () {
            $(this).hide();
          })


          // $.ajax({
          //   type: "post",
          //   url: "ImgMaintain.controller",
          //   success: function (result) {
          //     console.log(result)
          //   }
          // })


          $(document).ready(function () {
            $('#myTable').DataTable({
              "ajax": {
                "url": "/admin/showalltotal.controller",
                "type": "GET",
                "dataFilter": function (data) {
                  var json = JSON.parse(data);
                  json = json.filter(function (row) {
                    return row.fraction !== null;
                  });
                  return JSON.stringify(json);
                },
                "dataSrc": function (data) {
                  totalData = data;
                  return data;
                }
              },
              lengthMenu: [5, 10, 15, 20],

              "columns": [
                {
                  "data": 'id'
                  , "title": "??????"
                }, {
                  "data": 'memberId'
                  , "title": "?????????(??????)"
                  , "render": function (
                    data, type,
                    row, meta) {
                    return data
                  }
                }, {
                  "data": 'inputRadio'
                  , "title": "????????????"
                }, {
                  "data": 'fraction'
                  , "title": "??????"
                }
              ],

              columnDefs: [
                {
                  targets: [0],
                  width: "30%",
                },

              ],
              language: {
                url: "https://cdn.datatables.net/plug-ins/1.11.3/i18n/zh_Hant.json"
              }
            });
          });
        })
      </script>

    </body>

    </html>