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
		<title>客户信息维护解约</title>

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
			<!-- 解约 -->
			$("[name='update']").click(function(){
				var a = $(this).val();
				alert(a);
			});
			$("[name='name']").val("${name}");
			$("[name='isDel']").val("${isDel}");
		})
	</script>

	<body>

		<div class="cBody">
			<div class="console">
				<form class="layui-form" action="/emp/toMaintainUser_list">
					<div class="layui-form-item">
						<div class="layui-input-inline">
							<input type="text" name="name"  placeholder="客户姓名" autocomplete="off" class="layui-input">
						</div>
						<div class="layui-input-inline">
		                    <select name="isDel" id="isDel" lay-filter="provid">
		                    	<option value="0">状态</option>
		                        <option value="2">已解约</option>
		                        <option value="1">合同中</option>
		                    </select>
		                </div>
						<button class="layui-btn" lay-submit lay-filter="formDemo">检索</button>
					</div>
				</form>

				<script>
					layui.use(['form','laydate'], function() {
						var form = layui.form;
						var laydate = layui.laydate;
				
										
					});
				</script>
			</div>
			
			<table class="layui-table">
				<thead>
					<tr align="center">
						<th>姓名</th>
						<th>性别</th>
						<th>身份证号</th>
						<th>联系方式</th>
						<th>邮箱</th>
						<th>生日</th>
						<th>状态</th>
						<th>再租房源数量</th>
                        <th>出租房源数量</th>
						<th>操作</th>
					</tr>
				</thead>
				<tbody>
					<#list pageInfo.list as s >
					<tr align="center">
						<td>${s.name}</td>
						<td>
						<#if "${s.gender}"=="1">
							男
						<#else >
							女
						</#if>
						</td>
                        <td>${s.idCard}</td>
                        <td>${s.phone}</td>
                        <td>${s.email}</td>
                        <td>${s.birthday?string("yyyy-MM-dd")}</td>
                        <td>
							<#if "${s.isDel}"=="1">
								合同中
							<#else >
								已解约
							</#if>
						</td>
						<td>1</td>
                        <td>0</td>
						<td>														
							<button  name="update" class="layui-btn layui-btn-xs" value="1">解约</button>
						</td>
					</tr>

					</#list>
				</tbody>
			</table>
			<!--          分页        -->
			<div>
				<p>当前 <span >${pageInfo.pageNum}</span> 页,
					总 <span >${pageInfo.pages}</span> 页,
					共 <span >${pageInfo.total}</span> 条记录
					<span><a href="/emp/toMaintainUser_list?isDel=${isDel}&name=${name}&empId=${empId}">首页</a>
                            <span>&nbsp;<a href="/emp/toMaintainUser_list?pageNo=
                            <#if (pageInfo.pageNum-1)==0>1
                            <#else >${pageInfo.pageNum-1}
                            </#if>&isDel=${isDel}&name=${name}&empId=${empId}">上一页</a>&nbsp;</span>

                            <a href="/emp/toMaintainUser_list?pageNo=
                                <#if (pageInfo.pageNum+1)  gt pageInfo.pages>

                                        ${pageInfo.pages}

                                       <#else>${pageInfo.pageNum+1}
                                 </#if>&isDel=${isDel}&name=${name}&empId=${empId}">


                                下一页</a>&nbsp;
                            <a href="/emp/toMaintainUser_list?pageNo=${pageInfo.pages}&isDel=${isDel}&name=${name}&empId=${empId}">尾页</a></span></p>
			</div>
		
		</div>
	</body>

</html>