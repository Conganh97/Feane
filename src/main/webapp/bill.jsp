<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: ADMIN
  Date: 7/8/2022
  Time: 5:59 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Admin</title>
    <!-- Basic -->
    <meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <!-- Mobile Metas -->
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
    <!-- Site Metas -->
    <meta name="keywords" content="" />
    <meta name="description" content="" />
    <meta name="author" content="" />
    <link rel="shortcut icon" href="images/favicon.png" type="">

    <!-- bootstrap core css -->
    <link rel="stylesheet" type="text/css" href="css/bootstrap.css" />

    <!--owl slider stylesheet -->
    <link rel="stylesheet" type="text/css" href="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.3.4/assets/owl.carousel.min.css" />
    <!-- nice select  -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/jquery-nice-select/1.1.0/css/nice-select.min.css" integrity="sha512-CruCP+TD3yXzlvvijET8wV5WxxEh5H8P4cmz0RFbKK6FlZ2sYl3AEsKlLPHbniXKSrDdFewhbmBK5skbdsASbQ==" crossorigin="anonymous" />
    <!-- font awesome style -->
    <link href="css/font-awesome.min.css" rel="stylesheet" />

    <!-- Custom styles for this template -->
    <link href="css/style.css" rel="stylesheet" />
    <!-- responsive style -->
    <link href="css/responsive.css" rel="stylesheet" />

</head>
<body>

<div class="hero_area">
    <div class="bg-box">
        <img src="images/hero-bg.jpg" alt="">
    </div>
    <!-- header section strats -->
    <header class="header_section">
        <div class="container">
            <nav class="navbar navbar-expand-lg custom_nav-container ">
                <a class="navbar-brand" href="admin">
            <span>
              Admin
            </span>
                </a>

                <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                    <span class=""> </span>
                </button>

                <div class="collapse navbar-collapse" id="navbarSupportedContent">
                    <ul class="navbar-nav  mx-auto ">
                        <li class="nav-item">
                            <a class="nav-link" href="/admin">Menu</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="/bill">Bill</a>
                        </li>
                    </ul>
                    <div class="user_option">
                        <a href="/admin?action=editUser" class="user_link">
                            <i class="fa fa-user" aria-hidden="true"></i>
                        </a>

                        <a href="/index?action=logout" class="btn btn-info btn-lg">
                            <span class="glyphicon glyphicon-log-out"></span> Log out
                        </a>
                    </div>

                </div>

            </nav>

        </div>


    </header>
    <!-- end header section -->
    <!-- slider section -->
    <section class="slider_section ">
        <div id="customCarousel1" class="carousel slide" data-ride="carousel">
            <div class="carousel-inner">
                <div class="carousel-item active">
                    <div class="container ">
                        <div class="row">
                            <div class="col-md-7 col-lg-6 ">
                                <div class="detail-box">
                                    <h1>
                                        Ngon nhất châu Âu - Tính tiền châu Á
                                    </h1>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="carousel-item ">
                    <div class="container ">
                        <div class="row">
                            <div class="col-md-7 col-lg-6 ">
                                <div class="detail-box">
                                    <h1>
                                        Rẻ như bèo - Nghèo cũng có tiền mua
                                    </h1>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="carousel-item">
                    <div class="container ">
                        <div class="row">
                            <div class="col-md-7 col-lg-6 ">
                                <div class="detail-box">
                                    <h1>
                                        Không ngon - Không tính tiền
                                    </h1>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="container">
                <ol class="carousel-indicators">
                    <li data-target="#customCarousel1" data-slide-to="0" class="active"></li>
                    <li data-target="#customCarousel1" data-slide-to="1"></li>
                    <li data-target="#customCarousel1" data-slide-to="2"></li>
                </ol>
            </div>
        </div>

    </section>
    <!-- end slider section -->
</div>
<br/>

<!-- food section -->
<section class="food_section layout_padding">
    <div class="container">
        <div class="heading_container heading_center">

        </div>
    </div>
    <div>
        <center>
            <h1 style="color: darkturquoise ">Turnover: ${doanhthu} </h1>
            <h1>--------------------------------------</h1>
            <h1>All Bills</h1>
            <h1></h1>
        </center>
            <table class="table table-dark table-striped">
                <tr>
                    <th>Number Bill</th>
                    <th>Invoice Date</th>
                    <th>Customer</th>
                    <th>Total Bill</th>
                    <th>Detail</th>
                </tr>
                <c:forEach var="hd" items="${billadmin}">
                    <tr>
                        <td><input type="text" name="idhd" id="idhd" value="${hd.idhd}" readonly></td>
                        <td><input type="text" name="ngxuathd" id="ngxuathd" value="${hd.ngxuathd}" readonly></td>
                        <td><input type="text" name="ten" id="ten" value="${hd.ten}" readonly></td>
                        <td><input type="text" name="trigia" id="trigia" value="${hd.trigia}" readonly></td>
                        <td>
                            <a class="btn btn-info btn-lg" size="30" style="color: white" style="color: white" href="/bill?order=detail&idhdct=${hd.idhd}">Detail</a>
                        </td>
                    </tr>
                </c:forEach>
                <tr>
                    <td colspan="5" align="center">
                        <%--                                <input type="submit" value="Thanh toan">--%>
                        <a class="btn btn-info btn-lg" style="color: white" style="color: white" href="/admin">Back</a>
                    </td>
                </tr>
            </table>
    </div>
</section>

<!-- end food section -->

<!-- footer section -->
<footer class="footer_section">
    <div class="container">
        <div class="row">
            <div class="col-md-4 footer-col">
                <div class="footer_contact">
                    <h4>
                        Contact Us
                    </h4>
                    <div class="contact_link_box">
                        <a href="">
                            <i class="fa fa-map-marker" aria-hidden="true"></i>
                            <span>
                  Location
                </span>
                        </a>
                        <a href="">
                            <i class="fa fa-phone" aria-hidden="true"></i>
                            <span>
                  Call +01 1234567890
                </span>
                        </a>
                        <a href="">
                            <i class="fa fa-envelope" aria-hidden="true"></i>
                            <span>
                  demo@gmail.com
                </span>
                        </a>
                    </div>
                </div>
            </div>
            <div class="col-md-4 footer-col">
                <div class="footer_detail">
                    <a href="" class="footer-logo">
                        Feane
                    </a>
                    <p>
                        Necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with
                    </p>
                    <div class="footer_social">
                        <a href="">
                            <i class="fa fa-facebook" aria-hidden="true"></i>
                        </a>
                        <a href="">
                            <i class="fa fa-twitter" aria-hidden="true"></i>
                        </a>
                        <a href="">
                            <i class="fa fa-linkedin" aria-hidden="true"></i>
                        </a>
                        <a href="">
                            <i class="fa fa-instagram" aria-hidden="true"></i>
                        </a>
                        <a href="">
                            <i class="fa fa-pinterest" aria-hidden="true"></i>
                        </a>
                    </div>
                </div>
            </div>
            <div class="col-md-4 footer-col">
                <h4>
                    Opening Hours
                </h4>
                <p>
                    Everyday
                </p>
                <p>
                    10.00 Am -10.00 Pm
                </p>
            </div>
        </div>
        <div class="footer-info">
            <p>
                &copy; <span id="displayYear"></span> All Rights Reserved By
                <a href="https://html.design/">Free Html Templates</a><br><br>
                &copy; <span id="displayYear1"></span> Distributed By
                <a href="https://themewagon.com/" target="_blank">ThemeWagon</a>
            </p>
        </div>
    </div>
</footer>
<!-- footer section -->

<!-- jQery -->
<script src="js/jquery-3.4.1.min.js"></script>
<!-- popper js -->
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous">
</script>
<!-- bootstrap js -->
<script src="js/bootstrap.js"></script>
<!-- owl slider -->
<script src="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.3.4/owl.carousel.min.js">
</script>
<!-- isotope js -->
<script src="https://unpkg.com/isotope-layout@3.0.4/dist/isotope.pkgd.min.js"></script>
<!-- nice select -->
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-nice-select/1.1.0/js/jquery.nice-select.min.js"></script>
<!-- custom js -->
<script src="js/custom.js"></script>
<!-- Google Map -->
<script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyCh39n5U-4IoWpsVGUHWdqB6puEkhRLdmI&callback=myMap">
</script>
<!-- End Google Map -->

</body>
</html>
