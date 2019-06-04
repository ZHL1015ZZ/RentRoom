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
		<title>员工客户页面</title>

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

	<body>

		<div class="cBody">
			<div class="console">
				<form class="layui-form" action="/emp/queryEmpUserList">
					<div class="layui-form-item">
						<div class="layui-input-inline">
							<input type="text" name="name"  placeholder="员工姓名" autocomplete="off" class="layui-input">
						</div>
						<div class="layui-input-inline">
							<input type="text" name="empId" placeholder="员工工号" autocomplete="off" class="layui-input">
						</div>
                        <div class="layui-input-inline">
                            <select name="grade" id="grade" lay-filter="cityid">
                                <option value="">排名</option>
                                <option value="">升序</option>
                                <option value="">降序</option>
                            </select>
                        </div>
						<button class="layui-btn" lay-submit lay-filter="formDemo">检索</button>
					</div>
				</form>

				<script type="text/javascript">
					$(function(){

						$("[name='name']").val("${name}");
						$("[name='empId']").val("${empId}");
						alert("${empId}");
					})
				</script>
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
						<th>日期</th>
						<th>工号</th>
						<th>职务</th>
						<th>姓名</th>
						<th>性别</th>
						<th>联系方式</th>
						<th>客户数量</th>
					</tr>
				</thead>
				<tbody>
				<#list pageInfo.list as e >
					<tr>
                        <td>${cTime?string("yyyy-MM-dd HH:mm")}</td>
						<td>${e.empId}</td>
						<td><#if "${e.grade}"=="1">
								经理
							<#else >
								业务员
							</#if></td>
						<td>${e.name}</td>
						<td><#if "${e.gender}"=="1">
								男
							<#else >
								女
							</#if></td>
						<td>${e.phone}</td>
						<td>${e.userNum}</td>
				</tr>
				</#list>
				</tbody>
			</table>
			<!--          分页        -->
			<div>
				<p>当前 <span >${pageInfo.pageNum}</span> 页,
					总 <span >${pageInfo.pages}</span> 页,
					共 <span >${pageInfo.total}</span> 条记录
					<span><a href="/emp/queryEmpUserList?empId=${empId}&name=${name}">首页</a>
                            <span>&nbsp;<a href="/emp/queryEmpUserList?pageNo=
                            <#if (pageInfo.pageNum-1)==0>1
                            <#else >${pageInfo.pageNum-1}
                            </#if>&empId=${empId}&name=${name}">上一页</a>&nbsp;</span>

                            <a href="/emp/queryEmpUserList?pageNo=
                                <#if (pageInfo.pageNum+1)  gt pageInfo.pages>

                                        ${pageInfo.pages}

                                       <#else>${pageInfo.pageNum+1}
                                 </#if>&empId=${empId}&name=${name}">


                                下一页</a>&nbsp;
                            <a href="/emp/queryEmpUserList?pageNo=${pageInfo.pages}&empId=${empId}&name=${name}">尾页</a></span></p>
			</div>
		
		</div>
	</body>

</html>