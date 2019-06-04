<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml" xmlns:th="http://www.thymeleaf.org"
      xmlns:sec="http://www.thymeleaf.org/thymeleaf-extras-springsecurity3">

	<head>
		<meta charset="UTF-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge,Chrome=1">
		<!-- Google Chrome Frame也可以让IE用上Chrome的引擎: -->
		<meta name="renderer" content="webkit">
		<!--国产浏览器高速模式-->
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<meta name="author" content="穷在闹市" />
		<!-- 作者 -->
		<meta name="revised" content="穷在闹市.v3, 2019/05/01" />
		<!-- 定义页面的最新版本 -->
		<meta name="description" content="网站简介" />
		<!-- 网站简介 -->
		<meta name="keywords" content="搜索关键字，以半角英文逗号隔开" />
		<title>个人中心</title>		
		<!-- 公共样式 开始 -->
		<link rel="shortcut icon" href="/images/favicon.ico"/>
		<link rel="bookmark" href="/images/favicon.ico"/>
		<link rel="stylesheet" type="text/css" href="/css/base.css">
		<link rel="stylesheet" type="text/css" href="/css/iconfont.css">
		<script type="text/javascript" src="/framework/jquery-1.11.3.min.js" ></script>
		<link rel="stylesheet" type="text/css" href="/layui/css/layui.css">
	    <!--[if lt IE 9]>
	      	<script src="/framework/html5shiv.min.js"></script>
	      	<script src="/framework/respond.min.js"></script>
	    <![endif]-->
		<script type="text/javascript" src="/layui/layui.js"></script>
		<!-- 滚动条插件 -->
		<link rel="stylesheet" type="text/css" href="/css/jquery.mCustomScrollbar.css">
		<script src="/framework/jquery-ui-1.10.4.min.js"></script>
		<script src="/framework/jquery.mousewheel.min.js"></script>
		<script src="/framework/jquery.mCustomScrollbar.min.js"></script>
		<script src="/js/jquery-1.12.4.js"></script>
		<script src="/framework/cframe.js"></script><!-- 仅供所有子页面使用 -->
		<!-- 公共样式 结束 -->
		
		<link rel="stylesheet" type="text/css" href="/css/frameStyle.css">
		<script type="text/javascript" src="/framework/frame.js" ></script>
        <script type="text/javascript" src="/js/jquery-1.12.4.js"></script>
		<script type="text/javascript" >
			$(function(){
			    // 1 完善个人资料 2.修改密码  3.已租房源  4.发布房源信息
                var a = "${flag}";
				if(a !== ''){
				    $("#${flag}").click();
				}
			})
		</script>
	</head>
	<body >
		<!-- 左侧菜单 - 开始 -->
		<div class="frameMenu">
		    <div class="logo">
		        <img src="/assets/images/logo1.png"/>
		        <div class="logoText">
		            <h1>个人中心</h1>
		            <p>personal</p>
		        </div>	
		    </div>
		    <div class="menu">
		        <ul>
		        	<li>		               
		                 <a href="javascript:void(0)" onclick="menuCAClick('/touserDetail',this)"><i class="iconfont icon-yonghu1 left"></i>个人资料<i class="iconfont icon-dajiantouyou right"></i></a>
		            </li>
		            
		            <li >
		                 <a  href="javascript:void(0)" onclick="menuCAClick('/touserUpdate',this)"><i class="iconfont icon-yonghu" id="1" ></i>&nbsp;&nbsp;完善信息<i class="iconfont icon-dajiantouyou right"></i></a>
		            </li>

		            <li>		               
		                 <a  href="javascript:void(0)" onclick="menuCAClick('/toUserListRent',this)"><i class="iconfont icon-dingdan"></i>&nbsp;&nbsp;预约信息<i class="iconfont icon-dajiantouyou right"></i></a>
		            </li>
		            <li>		               
		                 <a href="javascript:void(0)" onclick="menuCAClick('/toUserCollection',this)"><i class="iconfont icon-shangpin"></i>&nbsp;&nbsp;收藏<i class="iconfont icon-dajiantouyou right"></i></a>
		            </li>
		            <li>		               
		                 <a href="javascript:void(0)" onclick="menuCAClick('/toUserToListRent',this)"><i class="iconfont icon-biaodanwancheng"  id="3"></i>&nbsp;&nbsp;已租房屋<i class="iconfont icon-dajiantouyou right"></i></a>
		            </li>
		            <li>		               
		                 <a href="javascript:void(0)" onclick="menuCAClick('/toUserHouse',this)"><i class="iconfont icon-liuliangyunpingtaitubiao03"></i>&nbsp;&nbsp;我的房源<i class="iconfont icon-dajiantouyou right"></i></a>
		            </li>
		            <li>		               
		                 <a  href="javascript:void(0)" onclick="menuCAClick('/toUseraddhouse',this)"><i class="iconfont icon-tubiao-" id="4"></i>&nbsp;&nbsp;发布房源<i class="iconfont icon-dajiantouyou right"></i></a>
		            </li>
		            
		            
		        </ul>
		    </div>
		</div>
		<!-- 左侧菜单 - 结束 -->
		
		<div class="main">
			<!-- 头部栏 - 开始 -->
			<div class="frameTop">
				<img class="jt" src="/images/top_jt.png"/>
				<div class="topMenu">
					<ul>
						<li><a href="index.html" ><i class="iconfont icon-shouye"></i>返回首页</a></li>
						<li><a  href="javascript:void(0)" onclick="menuCAClick('toUserPassword',this)" id="2" ><i class="iconfont icon-xiugaimima"></i>修改密码</a></li>
						
						<li><a href="/tologin-user"><i class="iconfont icon-084tuichu"></i>注销</a></li>
					</ul>
				</div>
			</div>
			<!-- 头部栏 - 结束 -->
			
			<!-- 核心区域 - 开始 -->
			<div class="frameMain">
				<div class="title" id="frameMainTitle">
					<span><i class="iconfont icon-xianshiqi"></i>欢迎***光临</span>
				</div>
				<div class="con">
					<iframe id="mainIframe"  src="/touserDetail" scrolling="no"></iframe>
				</div>
			</div>
			<!-- 核心区域 - 结束 -->
		</div>
	</body>
    <script>
      

    </script>

</html>