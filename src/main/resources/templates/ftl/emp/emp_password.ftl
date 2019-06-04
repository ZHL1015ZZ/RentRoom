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
		<title>员工修改密码</title>

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
		<script type="text/javascript">
		    var validityPwd = function(){
		    	var Pwd = document.getElementById('Pwd');
		        var newPwd = document.getElementById('newPwd');		        
		        var newPwdConfirm = document.getElementById('newPwdConfirm');
		       if(Pwd.value == newPwd.value){
		       		 newPwd.setCustomValidity('不能跟原密码一致');
		       }else if(newPwd.value != newPwdConfirm.value){
		      	 	newPwd.setCustomValidity('');
		            newPwdConfirm.setCustomValidity('两次密码输入不一致');
		       }else{
		            newPwdConfirm.setCustomValidity('');
		        }
		    }
		</script>

	</head>

	<body>
		<div class="cBody">
			<form id="addForm" class="layui-form" action="">
				<div class="layui-form-item">
					<label class="layui-form-label">原始密码</label>
					<div class="layui-input-inline shortInput">
						<input id="Pwd" type="password" name="oldpassword" oninput="validityPwd()"  required lay-verify="required" autocomplete="off" class="layui-input">
					</div>
				</div>
				<div class="layui-form-item">
					<label class="layui-form-label">新密码</label>
					<div class="layui-input-inline shortInput">
						<input id="newPwd" type="password" oninput="validityPwd()"  name="pwd" required lay-verify="required" autocomplete="off" class="layui-input">
					</div>
				</div>
				<div class="layui-form-item">
					<label class="layui-form-label">确认新密码</label>
					<div class="layui-input-inline shortInput">
						<input id="newPwdConfirm" type="password" oninput="validityPwd()"  name="password2" required lay-verify="required" autocomplete="off" class="layui-input">
					</div>
				</div>
				
				<div class="layui-form-item">
					<div class="layui-input-block">
						<input type="submit"  class="layui-btn" value="确认修改" />
						<button type="reset" class="layui-btn layui-btn-primary">重置</button>
					</div>
				</div>
			</form>
			
			<script>
				layui.use('form', function() {
					var form = layui.form;
					//监听提交
					form.on('submit(submitBut)', function(data) {
						layer.msg(JSON.stringify(data.field));
						return false;
					});
				});
			</script>

		</div>
	</body>

</html>