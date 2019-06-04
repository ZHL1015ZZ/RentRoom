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
		<title>待审核租房审批</title>

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
			<!-- 去查看页面 -->
			$("[name='detail']").click(function(){
				var a = $(this).val();
				alert(a);
				window.location="/toUpdateRent";
			});
		})
	</script>

	<body>
		
		<form action="student/query.action" method="get" id="q">
		   <input type="hidden" name="pageIndex" value="${pageIndex}"/>
		</form>
		
		<div class="cBody">
			<div class="console">
				<form class="layui-form" action="">
					<div class="layui-form-item">
						<div class="layui-input-inline">
							<input type="text" name="name"  placeholder="客户姓名" autocomplete="off" class="layui-input">
						</div>
						<div class="layui-input-inline">
							<input type="text" name="empId" placeholder="手机号" autocomplete="off" class="layui-input">
						</div>
						<div class="layui-input-inline">
		                    <select name="isDel" id="isDel" lay-filter="provid">
		                    	<option value="0">出租类型</option>
		                        <option value="1">整租</option>
		                        <option value="2">合租</option>
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
					<tr>
						<th>订单编号</th>
						<th>租户姓名</th>
						<th>房子编号</th>
						<th>租用月数</th>
						<th>下单时间</th>
						<th>订单状态</th>
						<th>联系方式</th>
						<th>操作</th>
					</tr>
				</thead>
				<tbody>
					<tr>
						<td>1</td>
						<td>张三</td>
						<td>1</td>
						<td>6</td>
						<td>2019-04-10</td>
						<td>待审批</td>
						<td>130100032120</td>
						<td>
							<button name="detail" class="layui-btn layui-btn-xs" value="a">订单详情</button>
						</td>

				</tbody>
			</table>
			<!--          分页        -->
			<div>
    			<p id="pageP" align="center">
			    	<a href="javascript:void(0)" class="shouye">首页</a> &nbsp; &nbsp;
			    	<a href="javascript:void(0)" class="shangyiye">上一页</a>&nbsp; &nbsp;
			    	${pageIndex}/${totalPage}&nbsp; &nbsp;
			    	<a href="javascript:void(0)" class="xiayiye">下一页</a>&nbsp; &nbsp;
			    	<a href="javascript:void(0)" class="weiye">尾页</a>&nbsp; &nbsp;
			    	<input type="text" size="2" name="pageInp"/><input type="button" value="go"/>
			    </p>
    		</div>
		
		</div>
	</body>

</html>