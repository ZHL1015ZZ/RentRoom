﻿<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml" xmlns:th="http://www.thymeleaf.org"
      xmlns:sec="http://www.thymeleaf.org/thymeleaf-extras-springsecurity3">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <title>展示</title>

    <!-- Styles -->
    <link href="https://fonts.googleapis.com/css?family=Montserrat:400,700|Poppins:400,600" rel="stylesheet">


    <!-- favicon and touch icons -->
    <link rel="shortcut icon" href="assets/images/favicon.png" >

    <!-- Bootstrap -->
    <link href="plugins/font-awesome/css/font-awesome.min.css" rel="stylesheet">
    <link href="plugins/slick/slick.css" rel="stylesheet">
    <link href="plugins/slick-nav/slicknav.css" rel="stylesheet">
    <link href="plugins/wow/animate.css" rel="stylesheet">
    <link href="assets/css/bootstrap.css" rel="stylesheet">
    <link href="assets/css/theme.css" rel="stylesheet">
    <script type="text/javascript">
        $(function(){
            $("[name='order']").click(function(){
                var  v = $(this).val();
                window.location='single-property.html';
            })
        })
    </script>
</head>
<body class="">
<div id="page-loader">
    <div class="loaders">
        <img src="assets/images/loader/3.gif" alt="First Loader">
        <img src="assets/images/loader/4.gif" alt="First Loader">
    </div>
</div>
<header id="site-header">
    <div id="site-header-top">
        <div class="container">
            <div class="row">
                <div class="col-md-5">
                    <div class="clearfix">
                        <button class="btn btn-warning btn-lg header-btn visible-sm pull-right">List your Property for Free</button>
                        <p class="timing-in-header">客户服务时间 早8:00至晚22:00</p>
                    </div>
                </div>
                <div class="col-md-7">
                    <div class="clearfix">
                          <#if "${user.name}" == '' >
                              <a href="/user/login-user"> <button class="btn btn-warning btn-lg header-btn hidden-sm">立即登录</button></a>
                          <#else >
                           <a href="/toLogin"> <button class="btn btn-warning btn-lg header-btn hidden-sm">${user.name}</button></a>
                          </#if>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="container">
        <div class="row">
            <div class="col-md-3">
                <figure id="site-logo">
                    <a href="/toIndex"><img src="assets/images/logo.png" alt="Logo"></a>
                </figure>
            </div>
            <div class="col-md-6 col-sm-8">
                <nav id="site-nav" class="nav navbar-default">
                    <ul class="nav navbar-nav">
                        <li><a href="/toIndex">首页</a></li>
                        <li><a href="/topropertylisting">租房</a></li>
                        <li><a href="/toSidebar">热门</a></li>
                        <li><a href="/tosingleproperty">详情</a></li>
                        <li><a href="/toGallery">展示</a></li>
                        <#if "${user.name}" == '' >
                        <li>
                            <a href="">个人中心</a>
                            <ul>
                                <li><a href="/indexToUser?flag=1">完善个人资料</a></li>
                                <li><a href="/indexToUser?flag=2">修改密码</a></li>
                                <li><a href="/indexToUser?flag=3">已租房源</a></li>
                                <li><a href="/indexToUser?flag=4">发布房源信息</a></li>
                                <li><a href="/indexToUser?flag=5">注销</a></li>
                            </ul>
                        </li>
                        </#if>
                    </ul>
                </nav>
            </div>
            <div class="col-md-3 col-sm-4">
                <div class="contact-in-header clearfix">
                    <i class="fa fa-mobile"></i>
                    <span>
                        联系电话
                        <br>
                    <strong>111 222 333 444</strong>
                    </span>
                </div>
            </div>
        </div>
    </div>
</header>    <div id="site-banner" class="text-center clearfix">
        <div class="container">
            <h1 class="title">展示</h1>
            <ol class="breadcrumb">
                <li><a href="index.html">首页</a></li>
                <li class="active">展示</li>
            </ol>
        </div>
    </div>
    <div id="blog-listing" class="grid-style">
        <header class="section-header text-center">
            <div class="container">
                <div class="controls text-center pull-left" data-wow-duration="1s">
                    <span class="control active" data-filter="all">所有</span>
                    <span class="control" data-filter=".a1">三室一厅</span>
                    <span class="control" data-filter=".a2">别墅</span>
                    <span class="control" data-filter=".a3">二室一厅</span>
                    <span class="control" data-filter=".a4">复式</span>
                </div>
                <div class="pull-right">
                    <p class="pull-left layout-view"> View as: <i class="fa fa-th selected" data-layout="4"></i> <i class="fa fa-th-large" data-layout="6"></i></p>
                </div>
            </div>
        </header>
        <div class="container">
            <div class="row">
                <div id="filter-container">
                    <div class='col-md-4 col-sm-6 layout-item-wrap mix a1'><article class="gallery-item property layout-item clearfix wow slideInUp">
        <a class="clearfix zoom" href="single-property.html"><img data-action="zoom" src="assets/images/property/1.jpg" alt="Property Image"></a>
        <span class="btn btn-warning btn-sale">收藏</span>
</article>
</div><div class='col-md-4 col-sm-6 layout-item-wrap mix a2'><article class="gallery-item property layout-item clearfix wow slideInUp">
        <a class="clearfix zoom" href="single-property.html"><img data-action="zoom" src="assets/images/property/2.jpg" alt="Property Image"></a>
        <span class="btn btn-warning btn-sale">for sale</span>
</article>
</div><div class='col-md-4 col-sm-6 layout-item-wrap mix a3'><article class="gallery-item property layout-item clearfix wow slideInUp">
        <a class="clearfix zoom" href="single-property.html"><img data-action="zoom" src="assets/images/property/3.jpg" alt="Property Image"></a>
        <span class="btn btn-warning btn-sale">for sale</span>
</article>
</div><div class='col-md-4 col-sm-6 layout-item-wrap mix a4'><article class="gallery-item property layout-item clearfix wow slideInUp">
        <a class="clearfix zoom" href="single-property.html"><img data-action="zoom" src="assets/images/property/4.jpg" alt="Property Image"></a>
        <span class="btn btn-warning btn-sale">for sale</span>
</article>
</div><div class='col-md-4 col-sm-6 layout-item-wrap mix a5'><article class="gallery-item property layout-item clearfix wow slideInUp">
        <a class="clearfix zoom" href="single-property.html"><img data-action="zoom" src="assets/images/property/5.jpg" alt="Property Image"></a>
        <span class="btn btn-warning btn-sale">for sale</span>
</article>
</div><div class='col-md-4 col-sm-6 layout-item-wrap mix a6'><article class="gallery-item property layout-item clearfix wow slideInUp">
        <a class="clearfix zoom" href="single-property.html"><img data-action="zoom" src="assets/images/property/6.jpg" alt="Property Image"></a>
        <span class="btn btn-warning btn-sale">for sale</span>
</article>
</div><div class='col-md-4 col-sm-6 layout-item-wrap mix a7'><article class="gallery-item property layout-item clearfix wow slideInUp">
        <a class="clearfix zoom" href="single-property.html"><img data-action="zoom" src="assets/images/property/7.jpg" alt="Property Image"></a>
        <span class="btn btn-warning btn-sale">for sale</span>
</article>
</div><div class='col-md-4 col-sm-6 layout-item-wrap mix a8'><article class="gallery-item property layout-item clearfix wow slideInUp">
        <a class="clearfix zoom" href="single-property.html"><img data-action="zoom" src="assets/images/property/8.jpg" alt="Property Image"></a>
        <span class="btn btn-warning btn-sale">for sale</span>
</article>
</div><div class='col-md-4 col-sm-6 layout-item-wrap mix a9'><article class="gallery-item property layout-item clearfix wow slideInUp">
        <a class="clearfix zoom" href="single-property.html"><img data-action="zoom" src="assets/images/property/9.jpg" alt="Property Image"></a>
        <span class="btn btn-warning btn-sale">for sale</span>
</article>
</div>                </div>
            </div>
            <ul id="pagination" class="text-center clearfix">
                <li class="disabled"><a href="#">Previous</a></li>
                <li><a href="#">1</a></li>
                <li><a href="#">3</a></li>
                <li><a href="#">4</a></li>
                <li><a href="#">Next</a></li>
            </ul>
        </div>
    </div>
<footer id="footer">
<div class="site-footer">
    <div class="container">
        <div class="row">
            <div class="col-md-4 col-sm-6">
                <section class="widget about-widget clearfix">
                    <h4 class="title hide">关于我们</h4>
                    <a class="footer-logo" href="#"><img src="assets/images/footer-logo.png" alt="Footer Logo"></a>
                    <p>提供房地产评估、经纪、咨询等服务</p>
                </section>
            </div>
            <div class="col-md-4 col-sm-6">
                <section class="widget address-widget clearfix">
                    <h4 class="title">营业时间</h4>
                    <ul>
                        <li><i class="fa fa-map-marker"></i>地址：北京市朝阳区松榆里小区</li>
                        <li><i class="fa fa-clock-o"></i> Mon - Sat: 9:00 - 18:00</li>
                    </ul>
                </section>
            </div>
            <div class="col-md-4 col-sm-6">
                <section class="widget address-widget clearfix">
                    <h4 class="title">联系方式</h4>
                    <ul>
                        <li><i class="fa fa-phone"></i> (123) 45678910</li>
                        <li><i class="fa fa-envelope"></i> huycoi.art@gmail.com</li>
                    </ul>
                </section>
            </div>
        </div>
    </div>
</div>
</footer>
<a href="#top" id="scroll-top"><i class="fa fa-angle-up"></i></a>
<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
<script src="assets/js/jquery.min.js"></script>
<script src="assets/js/jquery.migrate.js"></script>
<script src="assets/js/bootstrap.min.js"></script>
<script src="plugins/slick-nav/jquery.slicknav.min.js"></script>
<script src="plugins/slick/slick.min.js"></script>
<script src="plugins/jquery-ui/jquery-ui.min.js"></script>
<script src="plugins/tweetie/tweetie.js"></script>
<script src="plugins/forms/jquery.form.min.js"></script>
<script src="plugins/forms/jquery.validate.min.js"></script>
<script src="plugins/modernizr/modernizr.custom.js"></script>
<script src="plugins/wow/wow.min.js"></script>
<script src="plugins/zoom/zoom.js"></script>
<script src="plugins/mixitup/mixitup.min.js"></script>
<script src="http://ditu.google.cn/maps/api/js?key=AIzaSyD2MtZynhsvwI2B40juK6SifR_OSyj4aBA&libraries=places"></script>
<script src="plugins/whats-nearby/source/WhatsNearby.js"></script>
<script src="assets/js/theme.js"></script>
</body>
</html>