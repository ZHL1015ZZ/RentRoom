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
		<title>审核房源信息展示</title>

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
		    $("[name=name]").val("${name}");
		    $("[name=phone]").val("${phone}");
		    $("[name=tid]").val("${tid}");
			<!-- 去查看页面 -->
			$("[name='detail']").click(function(){
				var a = $(this).val();
				alert(a);
				window.location="/addHouse/toReferendumAddHouse";
			});
		})
	</script>

	<body>

		<div class="cBody">
			<div class="console">
				<form class="layui-form" action="/addHouse/toReferendumHouseList">
					<div class="layui-form-item">
						<div class="layui-input-inline">
							<input type="text" name="name"  placeholder="客户姓名" autocomplete="off" class="layui-input">
						</div>
						<div class="layui-input-inline">
							<input type="text" name="phone" placeholder="手机号" autocomplete="off" class="layui-input">
						</div>
						<div class="layui-input-inline">
		                    <select name="tid" id="isDel" lay-filter="provid">
                                <option value="0">出租类型</option>
								<#list houseType as h >
									<option value="${h.tId}">${h.tName}</option>
								</#list>
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
						<th>房东姓名</th>
						<th>房间类型</th>
						<th>卧室</th>
						<th>地址</th>
						<th>申请时间</th>
						<th>处理状态</th>
						<th>房东电话</th>
						<th>业务员</th>
						<th>操作</th>
					</tr>
				</thead>
				<tbody>
				<#if pageInfo.list?? && (pageInfo.list?size>0)>
						<#list pageInfo.list as add >
                        <tr>
                            <td>${add.id}</td>
                            <td>${add.user.name}</td>
                            <td>${add.houseType.tName}</td>
                            <td>${add.room}</td>
                            <td>${add.address}</td>
                            <td>${(add.addDate?string("yyyy-MM-dd"))!"未设置"}</td>
                            <td>
								<#if add.addState == 1  >
                                          待处理
								</#if>
							</td>
                            <td>${add.user.phone}</td>
                            <th>${add.emp.name}</th>
                            <td>
                                <button name="detail" class="layui-btn layui-btn-xs" value="${add.id}">订单详情</button>
                            </td>
                        </tr>
						</#list>
						<#else >
							<tr >
								<td colspan="10" align="center" style="color: red; font-size: larger">没有符合条件的待审核房源信息</td>
							</tr>
				</#if>
				</tbody>
			</table>
            <!--          分页        -->
           <div>
                <p>当前 <span >${pageInfo.pageNum}</span> 页,
                    总 <span >${pageInfo.pages}</span> 页,
                    共 <span >${pageInfo.total}</span> 条记录
                    <span><a href="/addHouse/toReferendumHouseList?name=${name}&phone=${phone}&tid=${tid}&empId=${empp.id}&grade=${empp.grade}">首页</a>
                            <span>&nbsp;<a href="/addHouse/toReferendumHouseList?name=${name}&phone=${phone}&tid=${tid}&empId=${empp.id}&grade=${empp.grade}&pageNo=
                            <#if (pageInfo.pageNum-1)==0>1
                            <#else >${pageInfo.pageNum-1}
                            </#if>">上一页</a>&nbsp;</span>

                            <a href="/addHouse/toReferendumHouseList?name=${name}&phone=${phone}&tid=${tid}&empId=${empp.id}&grade=${empp.grade}&pageNo=
                                <#if (pageInfo.pageNum+1)  gt pageInfo.pages>

                                        ${pageInfo.pages}

                                       <#else>${pageInfo.pageNum+1}
                                 </#if>">
                                下一页</a>&nbsp;
                            <a href="/addHouse/toReferendumHouseList?name=${name}&phone=${phone}&tid=${tid}&empId=${empp.id}&grade=${empp.grade}&pageNo=${pageInfo.pages}">尾页</a></span></p>
            </div>
		
		</div>
	</body>

</html>