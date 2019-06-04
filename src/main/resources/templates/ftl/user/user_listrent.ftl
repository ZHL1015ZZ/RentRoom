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
		<title>预约信息</title>

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
		<script src="/js/pages.js">
		</script>
		<!-- 公共样式 结束 -->


        <script type="text/javascript">

            $(function(){
                <!-- 获得删除按钮单击事件 -->
                $("[name='delete']").click(function(){
                    var a = $(this).val();
                    alert(a);
                   // window.location="/toempUptate";
                });
            })
        </script>

	</head>

	<body>
		
		<form action="student/query.action" method="get" id="q">
		   <input type="hidden" name="pageIndex" value="${pageIndex}"/>
		</form>


			
			<table class="layui-table">
				<thead>
					<tr>
						<th>订单编号</th>
						<th>房子类型</th>
						<th>月租金</th>						
						<th>租用月数</th>
						<th>业务员</th>
						<th>联系方式</th>
						<th>邮箱</th>
						<th>下单时间</th>
						<th>订单状态</th>
						<th>操作</th>
						
					</tr>
				</thead>
				<tbody>
					<tr>
						<td>1</td>
						<td>三室一厅</td>
						<td>2700</td>
						<td>90天</td>
						<td>张三</td>
						<td>18600001111</td>
						<td>123456789@qq.com</td>
						<td>2019-10-12</td>
						<td>待处理</td>
						<td>
							<button name="delete" value="1" class="layui-btn layui-btn-xs">删除</button>
						</td>
					</tr>
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