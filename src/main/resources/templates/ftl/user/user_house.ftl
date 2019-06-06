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
		<title>我的房源</title>

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
        <script type="text/javascript">

            $(function(){
                <!-- 获得更换业务员申请按钮单击事件 -->
                $("[name='update']").click(function(){
                    var a = $(this).val();
                    alert(a);
                    window.location="/toUserUpdetaHouseEmp";
                });
                $("[name='state']").val("${state}");
            })
        </script>
	</head>

	<body>
		<div class="cBody">
			<div class="console">
				<form class="layui-form" action="/userHouse/toUserHouse">
                    <input type="hidden" name="uid" value="${user.id}">
					<div class="layui-form-item">
						<div class="layui-input-inline">
		                    <select name="state" id="provid" lay-filter="provid">
		                    	 <option value="">全部</option>
		                        <option value="2">已出租</option>
		                        <option value="1">待出租</option>
		                    </select>
		                </div>
						<button class="layui-btn" lay-submit >检索</button>
					</div>
				</form>

				<script>
					layui.use('form', function() {
						var form = layui.form;
				
						//监听提交
						form.on('submit(formDemo)', function(data) {
							layer.msg(JSON.stringify(data.field));
							return false;
						});
					});
				</script>
			</div>
			
			<table class="layui-table">
				<thead>
					<tr>
						<th>上线时间</th>
						<th>房间类型</th>					
						<th>出租类型</th>
						<th>房间编号</th>
						<th>月租金</th>
						<th>出租状态</th>
						<th>地址</th>
						<th>业务员</th>
						<th>业务员电话</th>						
						<th>操作</th>
					</tr>
				</thead>
                <tbody>
					<#if pageInfo.list?? && (pageInfo.list?size>0)>
						<#list pageInfo.list as house>

                    <tr>

                        <td>${house.addDate?string("yyyy-MM-dd")}</td>
                        <td>
							${house.houseType.tName}
                        </td>
                        <td>
							<#if "${house.rentType}" =='1'>
                                整租
							<#else >
								合租
							</#if>
                        </td>
                        <td>
							<#if "${house.room}" =='1'>
                                整间
							<#elseif "${house.room}" =='2'>
								主卧
							<#else>
								次卧
							</#if>
                        </td>
                        <td>${house.priceMonth}</td>
                        <td>
							<#if "${house.rentState}" =='1'>
                                待出租
							<#else >
									已出租
							</#if>


                        </td>
                        <td>${house.address}</td>
                        <td>${house.emp.name}</td>
                        <td>${house.emp.phone}</td>
                        <td>
                            <button  name="update" value="${house.id}" class="layui-btn layui-btn-xs">更换业务员申请</button>
                        </td>
                    </tr>

						</#list>
						<#else >
					<tr >
                        <td colspan="10" align="center" style="color: red; font-size: larger"> 您还没有出租房屋</td>
                    </tr>
					</#if>

           	 </tbody>

			</table>
			
				<!--          分页        -->
            <div>
                <p>当前 <span >${pageInfo.pageNum}</span> 页,
                    总 <span >${pageInfo.pages}</span> 页,
                    共 <span >${pageInfo.total}</span> 条记录
                    <span><a href="/userHouse/toUserHouse?uid=${uid}&state=${state}">首页</a>
                            <span>&nbsp;<a href="/userHouse/toUserHouse?uid=${uid}&state=${state}&pageNo=
                            <#if (pageInfo.pageNum-1)==0>1
                            <#else >${pageInfo.pageNum-1}
                            </#if>">上一页</a>&nbsp;</span>

                            <a href="/userHouse/toUserHouse?uid=${uid}&state=${state}&pageNo=
                                <#if (pageInfo.pageNum+1)  gt pageInfo.pages>

                                        ${pageInfo.pages}

                                       <#else>${pageInfo.pageNum+1}
                                 </#if>">
                                下一页</a>&nbsp;
                            <a href="/userHouse/toUserHouse?uid=${uid}&state=${state}&pageNo=${pageInfo.pages}">尾页</a></span></p>
            </div>

		</div>
	</body>

</html>