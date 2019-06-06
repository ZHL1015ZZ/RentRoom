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
		<title>房产中介</title>		
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
		<script src="/framework/cframe.js"></script><!-- 仅供所有子页面使用 -->
		<!-- 公共样式 结束 -->
		
		<link rel="stylesheet" type="text/css" href="/css/frameStyle.css">
		<script type="text/javascript" src="/framework/frame.js" ></script>
		<script type="text/javascript">
			//$(function(){
                alert("你是谁");
                alert("${empp}");
                alert("我的名字"+"${empp.name}");
                alert("我的权限"+"${empp.grade}");
			alert("我的权限"+"${empp.empId}");
			//});


		</script>
	</head>

	<body>
		<!-- 左侧菜单 - 开始 -->
		<div class="frameMenu">
		    <div class="logo">
		        <img src="/assets/images/logo1.png"/>
		        <div class="logoText">
		            <h1>房屋中介后台系统</h1>
		            <p>background system</p>
		        </div>	
		    </div>
		    <div class="menu">
		        <ul>
					<#if "${empp.grade}"=="1">
		             <li>
		                <a class="menuFA" href="javascript:void(0)"><i class="iconfont icon-wodeyewuyuan left"></i>员工资料维护<i class="iconfont icon-dajiantouyou right"></i></a>
		                <dl>
		               		<dt><a href="javascript:void(0)" onclick="menuCAClick('/emp/toempList',this)">员工信息</a></dt>
		                	<dt><a href="javascript:void(0)" onclick="menuCAClick('/emp/toempAdd',this)">新增员工</a></dt>
		                </dl>
		            </li>
						</#if>
		            <li>
		                <a class="menuFA" href="javascript:void(0)"><i class="iconfont icon-gongyingshang left"></i>客户资料维护<i class="iconfont icon-dajiantouyou right"></i></a>
		                <dl>
		               		<dt><a href="javascript:void(0)" onclick="menuCAClick('/emp/toMaintainUser_list',this)">查询客户信息</a></dt>
		                </dl>
		            </li>
		            
                    <li>
		                <a class="menuFA" href="javascript:void(0)"><i class="iconfont icon-yunying"></i>&nbsp;&nbsp;待审批业务<i class="iconfont icon-dajiantouyou right"></i></a>
		                <dl>
		               		<dt><a href="javascript:void(0)" onclick="menuCAClick('/addHouse/toReferendumHouseList',this)">待审核房源审批</a></dt>
		               		<dt><a href="javascript:void(0)" onclick="menuCAClick('/toReferendunRentList',this)">待审核租房审批</a></dt>
							<#if "${empp.grade}"== '1'>
                            <dt><a href="javascript:void(0)" onclick="menuCAClick('/toReferendunempUptate',this)">待审核更换业务员审批</a></dt>
							</#if>
		                </dl>
		            </li>
					<#if "${empp.grade}"== '1'>
                    <li>
                        <a class="menuFA" href="javascript:void(0)"><i class="iconfont icon-icon"></i>&nbsp;&nbsp;数据统计查询<i class="iconfont icon-dajiantouyou right"></i></a>
                        <dl>
                            <dt><a href="javascript:void(0)" onclick="menuCAClick('/queryByEmpPerformance',this)">查询员工绩效</a></dt>
                            <dt><a href="javascript:void(0)" onclick="menuCAClick('/emp/queryEmpUserList',this)">查询员工客户数量</a></dt>
                            <dt><a href="javascript:void(0)" onclick="menuCAClick('/queryHouseList',this)">查询房源状态信息</a></dt>
                        </dl>
                    </li>
					</#if>
		        <#--	<li>
		                <a class="menuFA" href="javascript:void(0)"><i class="iconfont icon-icon left"></i>打印模板<i class="iconfont icon-dajiantouyou right"></i></a>
		                <dl>
		                	<dt><a href="javascript:void(0)" onclick="menuCAClick('tgls/print/outPrintData.html',this)">入库单打印模版</a></dt>
		                </dl>
		           	</li>
		        	<li>
		                <a class="menuFA" href="javascript:void(0)"><i class="iconfont icon-caiwu left"></i>财务管理</a>
		           	</li>
		        	<li>
		                <a class="menuFA" href="javascript:void(0)"><i class="iconfont icon-icon left"></i>报表模块<i class="iconfont icon-dajiantouyou right"></i></a>
		                <dl>
		                	<dt><a href="javascript:void(0)" onclick="menuCAClick('tgls/reportForm/reportForm1.html',this)">订单统计报表</a></dt>
		                </dl>
		           	</li>-->
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
						<li><a href="javascript:void(0)" ><i class="iconfont icon-yonghu1"></i>${员工姓名}</a></li>
						<li><a href="javascript:void(0)" onclick="menuCAClick('/toempPassword',this)"><i class="iconfont icon-xiugaimima"></i>修改密码</a></li>
						<li><a href="/tologin"><i class="iconfont icon-084tuichu"></i>注销</a></li>
					</ul>
				</div>
			</div>
			<!-- 头部栏 - 结束 -->
			
			<!-- 核心区域 - 开始 -->
			<div class="frameMain">
				<div class="title" id="frameMainTitle">
					<span><i class="iconfont icon-xianshiqi"></i>后台首页</span>
				</div>
				<div class="con">
					<iframe id="mainIframe" src="/emp/toqdAPI" scrolling="no"></iframe>
				</div>
			</div>
			<!-- 核心区域 - 结束 -->
		</div>
	</body>

</html>