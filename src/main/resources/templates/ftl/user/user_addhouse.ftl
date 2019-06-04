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
		<title>发布房源</title>

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
			.layui-form-label{
				width: 100px;
			}
			.layui-input-block{
				margin-left: 130px;
			}
			.layui-form{
				margin-right: 30%;
			}
		</style>

	</head>

	<body>
		<div class="cBody">
			<form id="addForm" class="layui-form" action="">
				<div class="layui-form-item">
					<label class="layui-form-label">房间类型</label>
	                <div class="layui-input-inline">
	                    <select name="hType" id="provid" lay-filter="provid">
	                        <option value="">--请选择--</option>
					        <option value="0">三室一厅</option>
					        <option value="1">二室一厅</option>
	                    </select>
	                </div>
				</div>
				<div class="layui-form-item">
					<label class="layui-form-label">出租方式</label>
					<div class="layui-input-block">
						<input type="radio" name="rentType" value="1" title="整租">
						<input type="radio" name="rentType" value="2" title="合租" checked>
					</div>
				</div>
				<div class="layui-form-item">
					<label class="layui-form-label">房间编号</label>
					<div class="layui-input-block">
						<input type="text" name="room" required lay-verify="required" autocomplete="off" class="layui-input">
					</div>
				</div>
				<div class="layui-form-item">
					<label class="layui-form-label">上线日期</label>
					<div class="layui-input-block">
						<input type="date" name="addDate" required lay-verify="required" autocomplete="off" class="layui-input">
					</div>
				</div>
				<div class="layui-form-item">
					<label class="layui-form-label">面积</label>
					<div class="layui-input-block">
						<input type="text" name="area" required lay-verify="required|number" autocomplete="off" class="layui-input">
					</div>
				</div>
				<div class="layui-form-item">
					<label class="layui-form-label">朝向</label>
					<div class="layui-input-block">
						<input type="text" name="direction" required lay-verify="required" autocomplete="off" class="layui-input">
					</div>
				</div>
				
				<div class="layui-form-item">
					<label class="layui-form-label">押金</label>
					<div class="layui-input-block">
						<input type="text" name="yajin" required lay-verify="required|number" autocomplete="off" class="layui-input">
					</div>
				</div>
				<div class="layui-form-item">
					<label class="layui-form-label">地址</label>
					<div class="layui-input-block">
						<input type="text" name="address" required lay-verify="required" autocomplete="off" class="layui-input">
					</div>
				</div>
				<div class="layui-form-item">
					<label class="layui-form-label">电梯</label>
					<div class="layui-input-block">
						<input type="radio" name="isHaveLift" value="1" title="是">
						<input type="radio" name="isHaveLift" value="0" title="否" checked>
					</div>
				</div>
				<div class="layui-form-item">
					<label class="layui-form-label">车位</label>
					<div class="layui-input-block">
						<input type="radio" name="isCar" value="1" title="是">
						<input type="radio" name="isCar" value="0" title="否" checked>
					</div>
				</div>
				<div class="layui-form-item">
					<label class="layui-form-label">家具</label>
					<div class="layui-input-block">
						<input type="radio" name="isFur" value="1" title="是">
						<input type="radio" name="isFur" value="0" title="否" checked>
					</div>
				</div>
				<div class="layui-form-item">
					<label class="layui-form-label">空调</label>
					<div class="layui-input-block">
						<input type="radio" name="isAir" value="1" title="是">
						<input type="radio" name="isAir" value="0" title="否" checked>
					</div>
				</div>
				<div class="layui-form-item">
					<label class="layui-form-label">电视</label>
					<div class="layui-input-block">
						<input type="radio" name="isTV" value="1" title="是">
						<input type="radio" name="isTV" value="0" title="否" checked>
					</div>
				</div>
				<div class="layui-form-item">
					<label class="layui-form-label">冰箱</label>
					<div class="layui-input-block">
						<input type="radio" name="isIce" value="1" title="是">
						<input type="radio" name="isIce" value="0" title="否" checked>
					</div>
				</div>
				<div class="layui-form-item">
					<label class="layui-form-label">无线网络</label>
					<div class="layui-input-block">
						<input type="radio" name="isWifi" value="1" title="是">
						<input type="radio" name="isWifi" value="0" title="否" checked>
					</div>
				</div>
				
				
				
				<div class="layui-form-item">
					<label class="layui-form-label">商品图片</label>
					<div class="layui-upload-drag" id="goodsPic" >
					  <i class="layui-icon"></i>
					  <p >点击上传，或将文件拖拽到此处</p>
					</div>
				</div>
				
				
				<div class="layui-form-item">
					<label class="layui-form-label">业务员</label>
	                <div class="layui-input-inline">
	                    <select required="required" name="emp" id="provid" lay-filter="provid">
	                        <option value="">--请选择--</option>
					        <option value="0">张三</option>
					        <option value="1">李四</option>
	                    </select>
	                </div>
				</div>																	
				<div class="layui-form-item">
					<label class="layui-form-label">需求备注</label>
					<div class="layui-input-block">
						<textarea name="read" class="layui-textarea"></textarea>
					</div>
				</div>
				
				<div class="layui-form-item">
					<div class="layui-input-block">
						<button class="layui-btn" lay-submit lay-filter="submitBut">提交申请</button>
						<button type="reset" class="layui-btn layui-btn-primary">重置</button>
					</div>
				</div>
			</form>
			
			
			<script>
				layui.use(['upload','form'], function() {
					var form = layui.form;
					var upload = layui.upload;
					var layer = layui.layer;
					//监听提交
					form.on('submit(submitBut)', function(data) {
						return false;
					});
					form.verify({
						//数组的两个值分别代表：[正则匹配、匹配不符时的提示文字]
					  	ZHCheck: [
						    /^[\u0391-\uFFE5]+$/
						    ,'只允许输入中文'
					  	] 
					});
					//拖拽上传
					upload.render({
						elem: '#goodsPic',
						url: '/upload/',
						done: function(res) {
						  	console.log(res)
						}
					});
				});
			</script>

		</div>
	</body>

</html>