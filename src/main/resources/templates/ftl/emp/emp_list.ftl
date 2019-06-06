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
		<title>员工信息</title>

		<!-- 公共样式 开始 -->
		<link rel="stylesheet" type="text/css" href="/css/base.css">
		<link rel="stylesheet" type="text/css" href="/css/iconfont.css">
		<script type="text/javascript" src="/framework/jquery-1.11.3.min.js"></script>
		<link rel="stylesheet" type="text/css" href="/layui/css/layui.css">
		<script type="text/javascript" src="/layui/layui.js"></script>
		<!-- 滚动条插件 -->
		<link rel="stylesheet" type="text/css" href="/css/jquery.mCustomScrollbar.css">

		<script src="/framework/jquery-ui-1.10.4.min.js"></script>
		<script src="/framework/jquery.mousewheel.min.js"></script>
		<script src="/framework/jquery.mCustomScrollbar.min.js"></script>
		<script src="/framework/cframe.js"></script><!-- 仅供所有子页面使用 -->
        <script src="/js/pages.js"></script>
            <!-- 公共样式 结束 -->

	</head>
	<script type="text/javascript">
		
		$(function(){
			<!-- 去修改页面 -->
			$("[name='update']").click(function(){
				var a = $(this).val();
				window.location="/toempUptate";
			});
			<!-- 去查看页面 -->
			$("[name='detail']").click(function(){
				var a = $(this).val();
				window.location="/toempDetail";
			});
			$("[name='name']").val("${name}");
			$("[name='isDel]'").val("${isDel}");
			$("[name='empId']").val("${empId}");
			$("[name='grade']").val("${grade}");


		})
	</script>

	<body>
		<div class="cBody">
			<div class="console">
				<form class="layui-form" action="/emp/toempList">

					<div class="layui-form-item">
						<div class="layui-input-inline">
							<input type="text" name="name"  placeholder="员工姓名" autocomplete="off" class="layui-input">
						</div>
						<div class="layui-input-inline">
							<input type="text" name="empId" placeholder="员工工号" autocomplete="off" class="layui-input">
						</div>
						<div class="layui-input-inline">
		                    <select name="isDel" id="isDel" lay-filter="provid">
		                    	<option value="0">状态</option>
		                        <option value="1">在职</option>
		                        <option value="2">离职</option>
		                    </select>
		                </div>
		                <div class="layui-input-inline">
		                    <select name="grade" id="grade" lay-filter="cityid">
		                        <option value="0">职务</option>
		                        <option value="1">经理</option>
		                        <option value="2">业务员</option>
		                    </select>
		                </div>
						<button class="layui-btn" lay-submit lay-filter="formDemo">检索</button>
					</div>
				<#--</form>-->

				<script>
					layui.use(['form','laydate'], function() {
						var form = layui.form;
						var laydate = layui.laydate;
				
										
					});
				</script>
			</div>
			
			<table class="layui-table">
				<thead>
					<tr>
						<th>工号</th>
						<th>职务</th>
						<th>姓名</th>
						<th>性别</th>
						<th>身份证号</th>
						<th>联系方式</th>
						<th>邮箱</th>
						<th>生日</th>
						<th>状态</th>
						<th>操作</th>
					</tr>
				</thead>
				<tbody>
                    <#list pageInfo.list as e >
                    <tr>
                        <td>${e.empId}</td>
                        <td>
							<#if "${e.grade}"=="1">
								经理
							<#else >
								业务员
							</#if>
						</td>
                        <td>${e.name}</td>
                        <td>男</td>
                        <td>${e.idCard}</td>
                        <td>${e.phone}</td>
                        <td>${e.email}</td>
                        <td>${e.birthday?string("yyyy-MM-dd")}</td>
                        <td>
							<#if "${e.isDel}"=="1">
								在职
							<#else >
								离职
							</#if>
						</td>
                        <td>
                            <button name="update" class="layui-btn layui-btn-xs" value="1">修改</button>
                            <button name="detail" class="layui-btn layui-btn-xs" value="a">基本信息</button>
                        </td>
                    </tr>
                    </#list>

				</tbody>
			</table>
                <div>
                    <p>当前 <span >${pageInfo.pageNum}</span> 页,
                        总 <span >${pageInfo.pages}</span> 页,
                        共 <span >${pageInfo.total}</span> 条记录
                        <span><a href="/emp/toempList?isDel=${isDel}&grade=${grade}&name=${name}&empId=${empId}">首页</a>
                            <span>&nbsp;<a href="/emp/toempList?pageNo=
                            <#if (pageInfo.pageNum-1)==0>1
                            <#else >${pageInfo.pageNum-1}
                            </#if>&isDel=${isDel}&grade=${grade}&name=${name}&empId=${empId}">上一页</a>&nbsp;</span>

                            <a href="/emp/toempList?pageNo=
                                <#if (pageInfo.pageNum+1)  gt pageInfo.pages>

                                        ${pageInfo.pages}

                                       <#else>${pageInfo.pageNum+1}
                                 </#if>&isDel=${isDel}&grade=${grade}&name=${name}&empId=${empId}">


                                下一页</a>&nbsp;
                            <a href="/emp/toempList?pageNo=${pageInfo.pages}&isDel=${isDel}&grade=${grade}&name=${name}&empId=${empId}">尾页</a></span></p>
                </div>

		</div>
	</body>

</html>