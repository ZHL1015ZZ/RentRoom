<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml" xmlns:th="http://www.thymeleaf.org"
      xmlns:sec="http://www.thymeleaf.org/thymeleaf-extras-springsecurity3">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <title>详情</title>

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
	  <!-- 轮播图 -->
	<link rel="stylesheet" href="assets/css/DB_gallery.css" type="text/css"></link>
    <script type="text/javascript"  src="assets/js/jquery-1.7.1.min.js"></script>
    <script type="text/javascript">
        $(function(){
            $("[name='order']").click(function(){
                var  v = $(this).val();
                window.location='single-property.html';
            })
        })
    </script>
    <!-- 弹框租房-->
    <link href="css/style5.css" type="text/css" rel="stylesheet" />
    <script src="js/jquery.js"></script>
    <script src="js/popup.mini.js"></script>
    <script>

        $(function () {

            var elm = $('#foot');

            var startPos = 500;

            $.event.add(window, "scroll", function () {

                var p = $(window).scrollTop();

                if (p > startPos) {

                    $("#w-scrol").show();

                } else {

                    $("#w-scrol").hide();

                }

            });

        });

    </script>


</head>
<body class="">


<!--租房弹出框-->


<div class="popup-renting">
    <form action="/blog.html#sidebar" method="post">

        <div class="popup-close"></div>

        <div class="popup-title">

            <span>预约看房</span>

            <P>线上线下精准租金估价，准客定向推广及专业经济人推荐</P>

        </div>

        <ul class="popup-menu">

            <li style="padding-top: 25px;">

                <span>您的姓名:</span>

                <input name="name" type="text" class="w-name" disabled="disabled" />

            </li>

            <li>

                <span>联系电话:</span>

                <input name="phone" type="text" class="w-name" disabled="disabled" />

            </li>
            <li>

                <span>房间类型:</span>

                <input name="hType"  type="text" class="w-name" disabled="disabled" />

            </li>
            <li>

                <span>详细地址:</span>

                <input name="address" type="text" class="w-name" disabled="disabled" />

            </li>
            <li>

                <span>月租价格:</span>

                <input name="priceMonth" type="number" class="popup-zx"  disabled="disabled" value="100" />元

            </li>
            <li>

                <span>押金:</span>

                <input name="yajin" type="number" class="popup-zx"  disabled="disabled" value="500"  />元

            </li>
            <li>

                <span><i>*</i>租用天数:</span>

                <input name="rentTime" type="number" class="popup-zx" required="required"  />天

            </li>
            <li>

            <span>租户留言:</span>
            <textarea name="words" class="w-name" ></textarea>
            </li>

            <li>
                <input type="submit" value="提交" class="w-subbtn" />
            </li>

        </ul>
    </form>
</div>

<!--租房弹出框-->





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
</header>    <div id="property-single">
        <div id="main-slider">
            <div class="slide"><img src="assets/images/slider/1.jpg" alt="Slide"></div>
            <div class="slide"><img src="assets/images/slider/2.jpg" alt="Slide"></div>
            <div class="slide"><img src="assets/images/slider/3.jpg" alt="Slide"></div>
            <div class="slide"><img src="assets/images/slider/4.jpg" alt="Slide"></div>
        </div>
        <div class="container">
            <div class="row">
                <div class="col-lg-8 col-md-7">
                    <section class="property-meta-wrapper common">
                        <h3 class="entry-title">房间展示</h3>
                        <div class="property-single-meta">
                            <ul class="clearfix">
                                <li><span>出租方式:</span> 2560 Sq Ft</li>
                                <li><span>房间类型:</span> #223a23</li>
                                <li><span>房间:</span> 03 Room</li>
                                <li><span>朝向:</span> 05 Room</li>
                                <li><span>面积:</span> Yes - 200 SqFt </li>
                                <li><span>卧室:</span> 2016-01-09</li>
                                <li><span>月租金:</span> $97,000</li>
                                <li><span>地址:</span> 14 Tottenham Road, London</li>
                            </ul>
                        </div>
                    </section>
                    <section class="property-contents common">
                        <div class="entry-title clearfix">
                            <h4 class="pull-left">入住要求：</h4>
                        </div>
                        <p>挖到宝</p>
                    </section>
                    <section class="property-single-features common clearfix">
                        <h4 class="entry-title">Property Features</h4>
                        <ul class="property-single-features-list clearfix">
                            <li>电梯</li>
                            <li>车位</li>
                            <li>电视</li>
                            <li class="disabled">空调	</li>
                            <li>冰箱</li>
                            <li>家具</li>
                            <li无</li>                           
                        </ul>
                    </section>
				    <section class="property-nearby-places common">
                        <h4 class="entry-title">Near By Places</h4>
							
							
							<center>
								<div id="DB_gallery">

									<div class="DB_imgSet">

										<div class="DB_imgWin"><img src="assets/img/img1.jpg" alt=""/></div>

										<div class="DB_page"><span class="DB_current">0</span>-<span class="DB_total">0</span></div>

										<div class="DB_prevBtn"><img src="assets/img/prev_off.png" alt="jquery相册"/></div>

										<div class="DB_nextBtn"><img src="assets/img/next_off.png" alt="图片相册"/></div>

									</div>

									<div class="DB_thumSet">

										<ul class="DB_thumMove">

											<li><a href="assets/img/img1.jpg"><img src="assets/img/thum1.jpg" alt="图片相册"/></a></li>

											<li><a href="assets/img/img2.jpg"><img src="assets/img/thum2.jpg" alt="jquery相册"/></a></li>

											<li><a href="assets/img/img3.jpg"><img src="assets/img/thum3.jpg" alt="图片相册"/></a></li>

											<li><a href="assets/img/img4.jpg"><img src="assets/img/thum4.jpg" alt="jquery相册"/></a></li>

											<li><a href="assets/img/img5.jpg"><img src="assets/img/thum5.jpg" alt="图片相册"/></a></li>

											<li><a href="assets/img/img6.jpg"><img src="assets/img/thum6.jpg" alt="http://www.kaiwo123.com/"/></a></li>

											<li><a href="assets/img/img1.jpg"><img src="assets/img/thum1.jpg" alt="jquery相册"/></a></li>

											<li><a href="assets/img/img2.jpg"><img src="assets/img/thum2.jpg" alt=""/></a></li>

											<li><a href="assets/img/img3.jpg"><img src="assets/img/thum3.jpg" alt=""/></a></li>
									
											<li><a href="assets/img/img4.jpg"><img src="assets/img/thum4.jpg" alt=""/></a></li>

											<li><a href="assets/img/img5.jpg"><img src="assets/img/thum5.jpg" alt="网页特效"/></a></li>

											<li><a href="assets/img/img6.jpg"><img src="assets/img/thum6.jpg" alt=""/></a></li>

										</ul>
									</div>
								</div>
								</center>																					                 
                    </section>
                    <section class="property-agent common">
                        <h4 class="entry-title">Contact Agent</h4>
                        <div class="row">
                            <div class="col-lg-7">
                                <div class="agent-box clearfix">
                                   <div class="row">
                                       <div class="col-sm-5 col-xs-5">
                                           <a href="#" class="agent-image"><img src="assets/images/agents/2.jpg" alt="Agent Image"></a>
                                       </div>
                                       <div class="col-sm-7 col-xs-7">
                                           <cite class="agent-name">员工姓名：</cite>
                                           <small class="designation">员工编号：</small>
                                           <a class="w-renting btn btn-warning" href="javascript:;">预约看房</a>
                                       </div>
                                   </div>
                                </div>
                                <div class="widget address-widget clearfix">
                                </div>
                            </div>
                            <div class="col-lg-5">
                                <div class="agent-contact-form">
                                  <ul>
                                        <li><i class="fa fa-map-marker"></i>&nbsp;公司地址：</li>
										<br/>
                                        <li><i class="fa fa-phone"></i>&nbsp;手机：</li>
										<br/> 
                                        <li><i class="fa fa-envelope"></i>&nbsp;邮件：</li>
										<br/>
                                        <li><i class="fa fa-fax"></i>&nbsp;公司电话：</li>
										<br/>
                                        <li><i class="fa fa-clock-o"></i>&nbsp;24小时</li>
										<br/>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </section>
                </div>
                <div class="col-lg-4 col-md-5">
                    <div id="property-sidebar">
    <section class="widget adv-search-widget clearfix">
        <h5 class="title hide">Search your Place</h5>
        <div id="advance-search-widget" class="clearfix">   	
		</div>    
    </section>
    <section class="widget recent-properties clearfix">
        <h5 class="title">猜您喜欢</h5>
        <div class="property clearfix">
            <a href="#" class="feature-image zoom"><img data-action="zoom" src="assets/images/property/1.jpg" alt="Property Image"></a>
            <div class="property-contents">
                <h6 class="entry-title"><a href="single-property.html">去看看</a></h6>
                <span class="btn-price">整租</span>
                <div class="property-meta clearfix">
                    <span><i class="fa fa-area-chart" aria-hidden="true"></i>50㎡</span>
		            <span><i class="fa fa-jpy"></i> 2000元/月</span>
		            <span><i class="fa fa-upload"></i> yes</span>
		            <span><i class="fa fa-cab"></i> yes</span>
                </div>
            </div>
        </div>
        <div class="property clearfix">
            <a href="#" class="feature-image zoom"><img data-action="zoom" src="assets/images/property/2.jpg" alt="Property Image"></a>
            <div class="property-contents">
                <h6 class="entry-title"><a href="single-property.html">Luxury family home</a></h6>
                <span class="btn-price">$389.000</span>
                <div class="property-meta clearfix">
                    <span><i class="fa fa-arrows-alt"></i> 3060 SqFt</span>
                    <span><i class="fa fa-bed"></i> 3 Beds</span>
                    <span><i class="fa fa-bathtub"></i> 3 Baths</span>
                    <span><i class="fa fa-cab"></i> Yes</span>
                </div>
            </div>
        </div>
        <div class="property clearfix">
            <a href="#" class="feature-image zoom"><img data-action="zoom"  src="assets/images/property/3.jpg" alt="Property Image"></a>
            <div class="property-contents">
                <h6 class="entry-title"><a href="single-property.html">Luxury family home</a></h6>
                <span class="btn-price">$389.000</span>
                <div class="property-meta clearfix">
                    <span><i class="fa fa-arrows-alt"></i> 3060 SqFt</span>
                    <span><i class="fa fa-bed"></i> 3 Beds</span>
                    <span><i class="fa fa-bathtub"></i> 3 Baths</span>
                    <span><i class="fa fa-cab"></i> Yes</span>
                </div>
            </div>
        </div>
    </section>
    
</div>                </div>
            </div>
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
  <!-- 轮播图 -->
<script type="text/javascript" src="assets/js/jquery-1.7.1.min.js"></script> 
<script type="text/javascript" src="assets/js/jquery.DB_gallery.js"></script>
</body>


								<script type="text/javascript">

									$('#DB_gallery').DB_gallery({

										thumWidth:110,            

										thumGap:5,                

										thumMoveStep:4,           

										moveSpeed:300,            

										fadeSpeed:500            

									});

								</script>

<script type='text/javascript'>

    (function(){

        new PopUp_api({el:'.w-buyhouse',html:'.popup-buy'});

        new PopUp_api({el:'.w-sellhouse',html:'.popup-sell'});

        new PopUp_api({el:'.w-renthouse',html:'.popup-rent'});

        new PopUp_api({el:'.w-renting',html:'.popup-renting'});

    })()

</script>

</html>