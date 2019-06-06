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
		<link rel="stylesheet" type="text/css" href="../../css/base.css">
		<link rel="stylesheet" type="text/css" href="../../css/iconfont.css">
		<script type="text/javascript" src="../../framework/jquery-1.11.3.min.js"></script>
		<link rel="stylesheet" type="text/css" href="../../layui/css/layui.css">
		<script type="text/javascript" src="../../layui/layui.js"></script>
		<!-- 滚动条插件 -->
		<link rel="stylesheet" type="text/css" href="../../css/jquery.mCustomScrollbar.css">
		<script src="../../framework/jquery-ui-1.10.4.min.js"></script>
		<script src="../../framework/jquery.mousewheel.min.js"></script>
		<script src="../../framework/jquery.mCustomScrollbar.min.js"></script>
		<script src="../../framework/cframe.js"></script><!-- 仅供所有子页面使用 -->
		<script src="../../js/pages.js">			
		</script>
		<!-- 公共样式 结束 -->
        <script type="text/javascript" src="js/jquery-1.12.4.js"></script>
        <script type="text/javascript">
            $(function(){
                $("[name='delete']").click(function(){
                    var id=$(this).parents("tr").children("td").eq(0).text();
                    var ids=parseInt(id);
					location.href="/Rent/delRent?id="+ids;
                });


                $("[name='pageInpTo']").click(function(){
                    var num= $("[name='pageInp']").val();
                    var nums=parseInt(num);

                    if(nums<1||nums>${pageInfo.pages}){
                        alert("输入的页数不存在！");
					}else{
                        location.href="/Rent/query?pageNo="+nums;
					}
                });

            })
        </script>
        <STYLE>
            h1{margin-top:80px;font-size: 70px;font-weight: bolder;}
        </STYLE>
	</head>

	<body>

		<form action="student/query.action" method="get" id="q">
		   <input type="hidden" name="pageIndex" value="${pageIndex}"/>
		</form>


			<#if pageInfo.total gt 0>
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
					<#list  pageInfo.list as r>
						 <tr>
                             <td>${r.id}</td>
                             <td>
								 <#list hList as h>
									 <#if h.id==r.houseId>
										 <#list htList as ht>
											 <#if h.hType==ht.tId>
												 ${ht.tName}
												 <#break>
											 </#if>
										 </#list>
									 </#if>
								 </#list>
							 </td>
                             <td>
								  <#list hList as h>
									 <#if h.id==r.houseId>
										 ${h.priceMonth}元
										 <#break>
									 </#if>
								  </#list>
							 </td>
                             <td>${r.rentTime}</td>
                             <td>
								  <#list hList as h>
									 <#if h.id==r.houseId>
										 <#list eList as e>
											 <#if h.empId==e.id>
												 ${e.name}
												 <#break>
											 </#if>
										 </#list>
									 </#if>
								  </#list>
							 </td>
                             <td>${r.user.phone}</td>
                             <td>${r.user.email}</td>
                             <td>${r.dealDate?string("yyyy-MM-dd")}</td>
                             <td>
								 <#if r.state==1>
                                     未处理
								 <#elseif r.state==2>
									 	通过
								 <#elseif r.state==3>
									 	拒绝
								 <#else>
									 	取消
								 </#if>
							 </td>
                             <td>
                                 <button name="delete" value="1" class="layui-btn layui-btn-xs">删除</button>
                             </td>
                         </tr>

					</#list>
				</tbody>
			</table>


			
			<!--          分页        -->
			<div align="center">
                <p>
                    <span><a href="/Rent/query?pageNo=">首页</a>
                            <span>&nbsp;<a href="/Rent/query?pageNo=
                            <#if (pageInfo.pageNum-1)==0>1
                            <#else >${pageInfo.pageNum-1}
                            </#if>">上一页</a>&nbsp;</span>
						<span >第${pageInfo.pageNum}页/共${pageInfo.pages}页</span>
                            <a href="/Rent/query?pageNo=
                                <#if (pageInfo.pageNum+1)  gt pageInfo.pages>

                                        ${pageInfo.pages}

                                       <#else>${pageInfo.pageNum+1}
                                 </#if>">
                                下一页</a>&nbsp;
                            <a href="/Rent/query?pageNo=${pageInfo.pages}">尾页</a></span>
                    <input type="text" size="2" name="pageInp"/><input type="button" name="pageInpTo" value="go"/>
                </p>
    		</div>
			<#else>
			<h1 align="center">无相关信息！</h1>
			</#if>
		</div>
	</body>

</html>