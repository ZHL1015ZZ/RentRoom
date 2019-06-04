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
		<title>订单新增页面</title>

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
	</head>

	<body>
		<div class="cBody">
			<form id="addForm" class="layui-form" action="">
				<div class="layui-form-item">
					<label class="layui-form-label">订单编号</label>
					<div class="layui-input-inline shortInput">
						<input value="1"  type="text" name="empId"   autocomplete="off" class="layui-input">
					</div>
            		<i class="iconfont icon-huaban bt"></i>
				</div>

				<div class="layui-form-item">
					<label class="layui-form-label">房子编号</label>
					<div class="layui-input-inline shortInput">
						<input value="1"  type="text" name="name"   autocomplete="off" class="layui-input">
					</div>
            		<i class="iconfont icon-huaban bt"></i>
				</div>
                <div class="layui-form-item">
                    <label class="layui-form-label">姓名</label>
                    <div class="layui-input-inline shortInput">
                        <input  value="张三"  type="text" name="name"   autocomplete="off" class="layui-input">
                    </div>
                    <i class="iconfont icon-huaban bt"></i>
                </div>
                <div class="layui-form-item">
                    <label class="layui-form-label">性别</label>
                    <div class="layui-input-inline shortInput">
                        <input  value="男"  type="text" name="name"  autocomplete="off" class="layui-input">
                    </div>
                    <i class="iconfont icon-huaban bt"></i>
                </div>

				<div class="layui-form-item">
					<label class="layui-form-label">租用月数</label>
					<div class="layui-input-inline shortInput">
						<input value="180天"  type="text" name="idCard"  autocomplete="off" class="layui-input">
					</div>
					<i class="iconfont icon-huaban bt"></i>
				</div>
                <div class="layui-form-item">
                    <label class="layui-form-label">手机号</label>
                    <div class="layui-input-inline shortInput">
                        <input  value="13100000000" type="text" name="phone" autocomplete="off" class="layui-input">
                    </div>
                    <i class="iconfont icon-huaban bt"></i>
                </div>
                <div class="layui-form-item">
                    <label class="layui-form-label"></label>
                    <div class="layui-input-inline">
                        <select name="state" id="state" lay-filter="provid">请审批
                            <option value="">通过</option>
                            <option value="">拒绝</option>
                            <option value="">取消</option>
                        </select>
                    </div>
                </div>
                <div class="layui-form-item">
                    <label class="layui-form-label">租户留言</label>
                    <div class="layui-input-block">
                        <textarea name="read" class="layui-textarea"></textarea>
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