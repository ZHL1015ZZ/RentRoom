	$("#pageP .shouye").click(function(){//首页
	    			if("${pageIndex}"=="1"){//第一页不能再点首页和上一页（也可以直接隐藏）
	    				return;
	    			}
	    			$("[name='pageIndex']").val("1");
	    			$("#q").submit();
	    		});
    			$("#pageP .shangyiye").click(function(){//上一页
	    			if("${pageIndex}"=="1"){
	    				return;
	    			}
	    			var tmp = $("[name='pageIndex']").val();
	    			tmp = parseInt(tmp);
	    			$("[name='pageIndex']").val(tmp-1);
	    			$("#q").submit();
	    		});
	    		
	    		$("#pageP .xiayiye").click(function(){//下一页
	    			if("${pageIndex}"=="${totalPage}"){
	    				return;
	    			}
	    			var tmp = $("[name='pageIndex']").val();
	    			tmp = parseInt(tmp);
	    			$("[name='pageIndex']").val(tmp+1);
	    			$("#q").submit();
	    		});
	    		
	    		$("#pageP .weiye").click(function(){//尾页
	    			if("${pageIndex}"=="${totalPage}"){
	    				return;
	    			}
	    			$("[name='pageIndex']").val("${totalPage}");
	    			$("#q").submit();
	    		});
	    		
	    		$("[value='go']").click(function(){//立即跳转
	    			var tmp = $("[name='pageInp']").val();
	    			tmp = parseInt(tmp);
	    			var totalPage = "${totalPage}";
	    			if(tmp<1||tmp>totalPage){
	    				alert("页码不对，请输入1-${totalPage}");
	    				return;
	    			}
	    			$("[name='pageIndex']").val(tmp);
	    			$("#q").submit();
	    		});
