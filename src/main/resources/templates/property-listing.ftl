<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml" xmlns:th="http://www.thymeleaf.org"
      xmlns:sec="http://www.thymeleaf.org/thymeleaf-extras-springsecurity3">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <title>City Night</title>

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

<script type="text/javascript"  src="assets/js/jquery-1.7.1.min.js"></script>
	<script type="text/javascript">
		$(function(){
			$("[name='order']").click(function(){
				var  v = $(this).val();
				window.location='single-property.html';
			})
		})
	</script>
</head>
<body class="listing-template">
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
                    <a href="index.html"><img src="assets/images/logo.png" alt="Logo"></a>
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
</header><div id="site-banner" class="text-center clearfix">
   <div class="container">
       <h1 class="title wow slideInLeft">租房</h1>
       <ol class="breadcrumb wow slideInRight">
           <li><a href="index.html">首页</a></li>
           <li><a href="property-map-view.html">租房</a></li>
            <li><a href="property-map-view.html">热门</a></li>
       </ol>
   </div>
</div>
<div id="advance-search" class="main-page clearfix">
    <div class="container">
        <button class="btn top-btn">欢迎光临</button>
        <form action="#" id="adv-search-form" class="clearfix">
            <fieldset>
                <select name="location" id="main-location" style="text-align:center">
                    <option value="">城市</option>
                    <option value="chicago"> 北京</option>
                    <option value="los-angeles">河北</option>
                </select>
                <select name="sub-location" id="property-sub-location">
                    <option value="">区域</option>
                    <option value="brickell" > 朝阳区</option>
                    <option value="brickyard" > 海淀区</option>
                    <option value="bronx" > 通州区</option>
                </select>
                <select id="property-status" name="类型">
                    <option value="">出租方式</option>
                    <option value="for-rent">合租</option>
                    <option value="for-sale">整租</option>
                </select>
                <select id="property-type" name="type" >
                    <option value="">房间类型</option>
                    <option value="apartment">三室一厅</option>
                    <option value="condo">二室一厅</option>
                </select>
                <select name="bedrooms" id="property-beds">
                    <option value="">车位</option>
                    <option value="1">有</option>
                    <option value="2">无</option>
                </select>
                <select name="电梯" id="property-baths">
                    <option value="">电梯</option>
                    <option value="1">有</option>
                    <option value="2">无</option>
                </select>
               <select name="min-price" id="property-min-price">
                    <option value="any" selected="selected">租金价格</option>
                    <option value="">全部</option>
                    <option value="1"> ≤ 1500元</option>
                    <option value="2">1500-2000元</option>
                    <option value="3">3000-5000元</option>
                    <option value="4">5000元以上</option>
               </select>
            </fieldset>
            <button type="submit" class="btn btn-default btn-lg text-center">立即<br class="hidden-sm hidden-xs">查询</button>
        </form>
        
    </div>
</div>    <section id="property-listing">
        <header class="section-header text-center">
            <div class="container">
                <h2 class="pull-left">请选择您心意的“家”</h2>
                <div class="pull-right">
                    <div class="property-sorting pull-left">
                        <label for="property-sort-dropdown">排序</label>
                        <select name="property-sort-dropdown" id="property-sort-dropdown">
                            <option value="">默认</option>
                            <option value="by_date">上线时间</option>
                            <option value="by_price">价格</option>
                        </select>
                    </div>
                    <p class="pull-left layout-view"> 视图: <i class="fa fa-th selected" data-layout="4"></i> <i class="fa fa-th-large" data-layout="6"></i><i class="fa fa-list-ul" data-layout="12"></i> </p>
                </div>
            </div>
        </header>
        <div class="container section-layout">
            <div class="row">
                <div class="col-lg-4 col-sm-6 layout-item-wrap"><article class="property layout-item clearfix">
    <figure class="feature-image">
        <a class="clearfix zoom" href="single-property.html"><img data-action="zoom" src="assets/images/property/1.jpg" alt="Property Image"></a>
        <span class="btn btn-warning btn-sale">立 即 收 藏</span>
    </figure>
    <div class="property-contents clearfix">
        <header class="property-header clearfix">
            <div class="pull-left">
                 <h6 class="entry-title"><a href="single-property.html">出租方式：整租</a></h6>
                <span class="property-location"><i class="fa fa-map-marker"></i>地址</span>
            </div>
           <button class="btn btn-default btn-price pull-right btn-3d" value="id1" data-hover="详情" name="order"><strong>详情</strong></button>
        </header>
        <div class="property-meta clearfix">
            <span><i class="fa fa-area-chart" aria-hidden="true"></i>50㎡</span>
            <span><i class="fa fa-jpy"></i> 2000元/月</span>
            <span><i class="fa fa-upload"></i> yes</span>
            <span><i class="fa fa-cab"></i> yes</span>
        </div>
        <div class="contents clearfix">
            <p>房东要求 </p>
        </div>
        <div class="author-box clearfix">
            <a href="#" class="author-img"><img src="assets/images/agents/1.jpg" alt="Agent Image"></a>
            <cite class="author-name">业务员: <a href="#">张三</a></cite>
            <span class="phone"><i class="fa fa-phone"></i> 电话号码：13100000000</span>
        </div>
    </div>
</article>
</div><div class="col-lg-4 col-sm-6 layout-item-wrap"><article class="property layout-item clearfix">
    <figure class="feature-image">
        <a class="clearfix zoom" href="single-property.html"><img data-action="zoom" src="assets/images/property/2.jpg" alt="Property Image"></a>
        <span class="btn btn-warning btn-sale">for sale</span>
    </figure>
    <div class="property-contents clearfix">
        <header class="property-header clearfix">
            <div class="pull-left">
                <h6 class="entry-title"><a href="single-property.html">Guaranteed modern home</a></h6>
                <span class="property-location"><i class="fa fa-map-marker"></i> 14 Tottenham Road, London</span>
            </div>
            <button class="btn btn-default btn-price pull-right btn-3d" data-hover="$389.000"><strong>$389.000</strong></button>
        </header>
        <div class="property-meta clearfix">
            <span><i class="fa fa-arrows-alt"></i> 3060 SqFt</span>
            <span><i class="fa fa-bed"></i> 3 Beds</span>
            <span><i class="fa fa-bathtub"></i> 3 Baths</span>
            <span><i class="fa fa-cab"></i> Yes</span>
        </div>
        <div class="contents clearfix">
            <p>Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. </p>
        </div>
        <div class="author-box clearfix">
            <a href="#" class="author-img"><img src="assets/images/agents/1.jpg" alt="Agent Image"></a>
            <cite class="author-name">Personal Seller: <a href="#">Linda Garret</a></cite>
            <span class="phone"><i class="fa fa-phone"></i> 00894 692-49-22</span>
        </div>
    </div>
</article>
</div><div class="col-lg-4 col-sm-6 layout-item-wrap"><article class="property layout-item clearfix">
    <figure class="feature-image">
        <a class="clearfix zoom" href="single-property.html"><img data-action="zoom" src="assets/images/property/3.jpg" alt="Property Image"></a>
        <span class="btn btn-warning btn-sale">for sale</span>
    </figure>
    <div class="property-contents clearfix">
        <header class="property-header clearfix">
            <div class="pull-left">
                <h6 class="entry-title"><a href="single-property.html">Guaranteed modern home</a></h6>
                <span class="property-location"><i class="fa fa-map-marker"></i> 14 Tottenham Road, London</span>
            </div>
            <button class="btn btn-default btn-price pull-right btn-3d" data-hover="$389.000"><strong>$389.000</strong></button>
        </header>
        <div class="property-meta clearfix">
            <span><i class="fa fa-arrows-alt"></i> 3060 SqFt</span>
            <span><i class="fa fa-bed"></i> 3 Beds</span>
            <span><i class="fa fa-bathtub"></i> 3 Baths</span>
            <span><i class="fa fa-cab"></i> Yes</span>
        </div>
        <div class="contents clearfix">
            <p>Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. </p>
        </div>
        <div class="author-box clearfix">
            <a href="#" class="author-img"><img src="assets/images/agents/1.jpg" alt="Agent Image"></a>
            <cite class="author-name">Personal Seller: <a href="#">Linda Garret</a></cite>
            <span class="phone"><i class="fa fa-phone"></i> 00894 692-49-22</span>
        </div>
    </div>
</article>
</div><div class="col-lg-4 col-sm-6 layout-item-wrap"><article class="property layout-item clearfix">
    <figure class="feature-image">
        <a class="clearfix zoom" href="single-property.html"><img data-action="zoom" src="assets/images/property/4.jpg" alt="Property Image"></a>
        <span class="btn btn-warning btn-sale">for sale</span>
    </figure>
    <div class="property-contents clearfix">
        <header class="property-header clearfix">
            <div class="pull-left">
                <h6 class="entry-title"><a href="single-property.html">Guaranteed modern home</a></h6>
                <span class="property-location"><i class="fa fa-map-marker"></i> 14 Tottenham Road, London</span>
            </div>
            <button class="btn btn-default btn-price pull-right btn-3d" data-hover="$389.000"><strong>$389.000</strong></button>
        </header>
        <div class="property-meta clearfix">
            <span><i class="fa fa-arrows-alt"></i> 3060 SqFt</span>
            <span><i class="fa fa-bed"></i> 3 Beds</span>
            <span><i class="fa fa-bathtub"></i> 3 Baths</span>
            <span><i class="fa fa-cab"></i> Yes</span>
        </div>
        <div class="contents clearfix">
            <p>Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. </p>
        </div>
        <div class="author-box clearfix">
            <a href="#" class="author-img"><img src="assets/images/agents/1.jpg" alt="Agent Image"></a>
            <cite class="author-name">Personal Seller: <a href="#">Linda Garret</a></cite>
            <span class="phone"><i class="fa fa-phone"></i> 00894 692-49-22</span>
        </div>
    </div>
</article>
</div><div class="col-lg-4 col-sm-6 layout-item-wrap"><article class="property layout-item clearfix">
    <figure class="feature-image">
        <a class="clearfix zoom" href="single-property.html"><img data-action="zoom" src="assets/images/property/5.jpg" alt="Property Image"></a>
        <span class="btn btn-warning btn-sale">for sale</span>
    </figure>
    <div class="property-contents clearfix">
        <header class="property-header clearfix">
            <div class="pull-left">
                <h6 class="entry-title"><a href="single-property.html">Guaranteed modern home</a></h6>
                <span class="property-location"><i class="fa fa-map-marker"></i> 14 Tottenham Road, London</span>
            </div>
            <button class="btn btn-default btn-price pull-right btn-3d" data-hover="$389.000"><strong>$389.000</strong></button>
        </header>
        <div class="property-meta clearfix">
            <span><i class="fa fa-arrows-alt"></i> 3060 SqFt</span>
            <span><i class="fa fa-bed"></i> 3 Beds</span>
            <span><i class="fa fa-bathtub"></i> 3 Baths</span>
            <span><i class="fa fa-cab"></i> Yes</span>
        </div>
        <div class="contents clearfix">
            <p>Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. </p>
        </div>
        <div class="author-box clearfix">
            <a href="#" class="author-img"><img src="assets/images/agents/1.jpg" alt="Agent Image"></a>
            <cite class="author-name">Personal Seller: <a href="#">Linda Garret</a></cite>
            <span class="phone"><i class="fa fa-phone"></i> 00894 692-49-22</span>
        </div>
    </div>
</article>
</div><div class="col-lg-4 col-sm-6 layout-item-wrap"><article class="property layout-item clearfix">
    <figure class="feature-image">
        <a class="clearfix zoom" href="single-property.html"><img data-action="zoom" src="assets/images/property/6.jpg" alt="Property Image"></a>
        <span class="btn btn-warning btn-sale">for sale</span>
    </figure>
    <div class="property-contents clearfix">
        <header class="property-header clearfix">
            <div class="pull-left">
                <h6 class="entry-title"><a href="single-property.html">Guaranteed modern home</a></h6>
                <span class="property-location"><i class="fa fa-map-marker"></i> 14 Tottenham Road, London</span>
            </div>
            <button class="btn btn-default btn-price pull-right btn-3d" data-hover="$389.000"><strong>$389.000</strong></button>
        </header>
        <div class="property-meta clearfix">
            <span><i class="fa fa-arrows-alt"></i> 3060 SqFt</span>
            <span><i class="fa fa-bed"></i> 3 Beds</span>
            <span><i class="fa fa-bathtub"></i> 3 Baths</span>
            <span><i class="fa fa-cab"></i> Yes</span>
        </div>
        <div class="contents clearfix">
            <p>Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. </p>
        </div>
        <div class="author-box clearfix">
            <a href="#" class="author-img"><img src="assets/images/agents/1.jpg" alt="Agent Image"></a>
            <cite class="author-name">Personal Seller: <a href="#">Linda Garret</a></cite>
            <span class="phone"><i class="fa fa-phone"></i> 00894 692-49-22</span>
        </div>
    </div>
</article>
</div><div class="col-lg-4 col-sm-6 layout-item-wrap"><article class="property layout-item clearfix">
    <figure class="feature-image">
        <a class="clearfix zoom" href="single-property.html"><img data-action="zoom" src="assets/images/property/7.jpg" alt="Property Image"></a>
        <span class="btn btn-warning btn-sale">for sale</span>
    </figure>
    <div class="property-contents clearfix">
        <header class="property-header clearfix">
            <div class="pull-left">
                <h6 class="entry-title"><a href="single-property.html">Guaranteed modern home</a></h6>
                <span class="property-location"><i class="fa fa-map-marker"></i> 14 Tottenham Road, London</span>
            </div>
            <button class="btn btn-default btn-price pull-right btn-3d" data-hover="$389.000"><strong>$389.000</strong></button>
        </header>
        <div class="property-meta clearfix">
            <span><i class="fa fa-arrows-alt"></i> 3060 SqFt</span>
            <span><i class="fa fa-bed"></i> 3 Beds</span>
            <span><i class="fa fa-bathtub"></i> 3 Baths</span>
            <span><i class="fa fa-cab"></i> Yes</span>
        </div>
        <div class="contents clearfix">
            <p>Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. </p>
        </div>
        <div class="author-box clearfix">
            <a href="#" class="author-img"><img src="assets/images/agents/1.jpg" alt="Agent Image"></a>
            <cite class="author-name">Personal Seller: <a href="#">Linda Garret</a></cite>
            <span class="phone"><i class="fa fa-phone"></i> 00894 692-49-22</span>
        </div>
    </div>
</article>
</div><div class="col-lg-4 col-sm-6 layout-item-wrap"><article class="property layout-item clearfix">
    <figure class="feature-image">
        <a class="clearfix zoom" href="single-property.html"><img data-action="zoom" src="assets/images/property/8.jpg" alt="Property Image"></a>
        <span class="btn btn-warning btn-sale">for sale</span>
    </figure>
    <div class="property-contents clearfix">
        <header class="property-header clearfix">
            <div class="pull-left">
                <h6 class="entry-title"><a href="single-property.html">Guaranteed modern home</a></h6>
                <span class="property-location"><i class="fa fa-map-marker"></i> 14 Tottenham Road, London</span>
            </div>
            <button class="btn btn-default btn-price pull-right btn-3d" data-hover="$389.000"><strong>$389.000</strong></button>
        </header>
        <div class="property-meta clearfix">
            <span><i class="fa fa-arrows-alt"></i> 3060 SqFt</span>
            <span><i class="fa fa-bed"></i> 3 Beds</span>
            <span><i class="fa fa-bathtub"></i> 3 Baths</span>
            <span><i class="fa fa-cab"></i> Yes</span>
        </div>
        <div class="contents clearfix">
            <p>Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. </p>
        </div>
        <div class="author-box clearfix">
            <a href="#" class="author-img"><img src="assets/images/agents/1.jpg" alt="Agent Image"></a>
            <cite class="author-name">Personal Seller: <a href="#">Linda Garret</a></cite>
            <span class="phone"><i class="fa fa-phone"></i> 00894 692-49-22</span>
        </div>
    </div>
</article>
</div><div class="col-lg-4 col-sm-6 layout-item-wrap"><article class="property layout-item clearfix">
    <figure class="feature-image">
        <a class="clearfix zoom" href="single-property.html"><img data-action="zoom" src="assets/images/property/9.jpg" alt="Property Image"></a>
        <span class="btn btn-warning btn-sale">for sale</span>
    </figure>
    <div class="property-contents clearfix">
        <header class="property-header clearfix">
            <div class="pull-left">
                <h6 class="entry-title"><a href="single-property.html">Guaranteed modern home</a></h6>
                <span class="property-location"><i class="fa fa-map-marker"></i> 14 Tottenham Road, London</span>
            </div>
            <button class="btn btn-default btn-price pull-right btn-3d" data-hover="$389.000"><strong>$389.000</strong></button>
        </header>
        <div class="property-meta clearfix">
            <span><i class="fa fa-arrows-alt"></i> 3060 SqFt</span>
            <span><i class="fa fa-bed"></i> 3 Beds</span>
            <span><i class="fa fa-bathtub"></i> 3 Baths</span>
            <span><i class="fa fa-cab"></i> Yes</span>
        </div>
        <div class="contents clearfix">
            <p>Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. </p>
        </div>
        <div class="author-box clearfix">
            <a href="#" class="author-img"><img src="assets/images/agents/1.jpg" alt="Agent Image"></a>
            <cite class="author-name">Personal Seller: <a href="#">Linda Garret</a></cite>
            <span class="phone"><i class="fa fa-phone"></i> 00894 692-49-22</span>
        </div>
    </div>
</article>
</div>            </div>
            <ul id="pagination" class="text-center clearfix">
                <li class="disabled"><a href="#">当前第${pageInfo.pageNum}页</a></li>
                <li><a href="#">首页</a></li>
                <li><a href="<#--/toempList?pageNo=<#if (pageInfo.pageNum+1)  gt pageInfo.pages>
                                                 ${pageInfo.pages}
                                                <#else>${pageInfo.pageNum+1} </#if>-->
                            ">上一页</a></li>
                <li><a href="<#--/toempList?pageNo=
                                <#if (pageInfo.pageNum+1)  gt pageInfo.pages>

                                        ${pageInfo.pages}

                                       <#else>${pageInfo.pageNum+1}
                                 </#if>-->
                ">下一页</a></li>
                <li><a href="<#--/toempList?pageNo=${pageInfo.pages}-->">尾页</a></li>

            </ul>
            
            
            
            
            
            
            
            
        </div>
    </section>
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