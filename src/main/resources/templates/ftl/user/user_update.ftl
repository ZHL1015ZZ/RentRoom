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
		<title>完善信息</title>

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
		<!-- 公共样式 结束 -->

			
				
		<style>
			.layui-form{
				margin-right: 30%;
			}
		</style>
        <script type="text/javascript">
            <!-- 隐藏按钮  input标签添加不可修改属性  -->
            $(function(){
                $("input[type=radio][value='${user.gender}']").attr("checked",true);

            });

        </script>

	</head>

	<body>
		<div class="cBody">
			<form id="addForm" class="layui-form" action="/user/doUserUpdate" method="post">
				<div class="layui-form-item">
					<label class="layui-form-label">姓名</label>
					<div class="layui-input-inline shortInput">
						<input value="${user.name}"  type="text" name="name" required lay-verify="required|ZHCheck" placeholder="只允许输入中文" autocomplete="off" class="layui-input">
                        <input type="hidden" name="id" value="${user.id}">
					</div>
            		<i class="iconfont icon-huaban bt"></i>
				</div>
				<div class="layui-form-item">
					<label class="layui-form-label">性别</label>
					<div class="layui-input-block">
						<input type="radio" name="gender" value="1" title="男">
						<input type="radio" name="gender" value="2" title="女">
					</div>
				</div>
				
		
				<div class="layui-form-item">
					<label class="layui-form-label">身份证号</label>
					<div class="layui-input-inline shortInput">
						<input value="${user.idCard}" type="text" name="idCard" required lay-verify="required|identity" autocomplete="off" class="layui-input" placeholder="请输入18位身份证号">
					</div>
					<i class="iconfont icon-huaban bt"></i>
				</div>
				
				<div class="layui-form-item">
					<label class="layui-form-label">手机号</label>
					<div class="layui-input-inline shortInput">
						<input value="${user.phone}" type="text" name="phone" required lay-verify="required|phone" placeholder="例：13000000000" autocomplete="off" class="layui-input">
					</div>
					<i class="iconfont icon-huaban bt"></i>
				</div>
				
				<div class="layui-form-item">
					<label class="layui-form-label">邮箱</label>
					<div class="layui-input-inline shortInput">
						<input value="${user.email}" type="text" name="email" autocomplete="off" class="layui-input">
					</div>
				</div>
				<div class="layui-form-item">
					<label class="layui-form-label">生日</label>
					<div class="layui-input-inline shortInput">
						<input value="${(user.birthday?string("yyyy-MM-dd"))!"未设置"}" type="date" name="birthday1" autocomplete="off" class="layui-input">
					</div>
				</div>								
				<div class="layui-form-item">
					<div class="layui-input-block">
						<button name="tijiao" class="layui-btn" lay-submit lay-filter="submitBut">立即提交</button>
						<button name="chongzhi" class="layui-btn layui-btn-primary">重置</button>
					</div>
				</div>
			</form>
		</div>
	</body>

</html>