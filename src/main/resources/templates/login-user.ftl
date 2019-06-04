<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml" xmlns:th="http://www.thymeleaf.org"
      xmlns:sec="http://www.thymeleaf.org/thymeleaf-extras-springsecurity3">
<!--[if lt IE 7 ]> <html lang="en" class="no-js ie6 lt8"> <![endif]-->
<!--[if IE 7 ]>    <html lang="en" class="no-js ie7 lt8"> <![endif]-->
<!--[if IE 8 ]>    <html lang="en" class="no-js ie8 lt8"> <![endif]-->
<!--[if IE 9 ]>    <html lang="en" class="no-js ie9"> <![endif]-->
<!--[if (gt IE 9)|!(IE)]><!--> <html lang="en" class="no-js"> <!--<![endif]-->
    <head>
        <meta charset="UTF-8" />
        <!-- <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">  -->
        <title>登录</title>
        <link rel="stylesheet" type="text/css" href="/css/demo.css" />
        <link rel="stylesheet" type="text/css" href="/css/style.css" />
		<link rel="stylesheet" type="text/css" href="/css/animate-custom.css" />
        <script src="/js/jquery-1.12.4.js"></script>
    </head>

<script type="text/javascript">
    var validityPwd = function(){
        var newPwd = document.getElementById('newPwd');
        var newPwdConfirm = document.getElementById('newPwdConfirm');
        if(newPwd.value != newPwdConfirm.value){
            newPwdConfirm.setCustomValidity('两次密码输入不一致');
        }else{
            newPwdConfirm.setCustomValidity('');
        }
    }
</script>

    <body>
        <div class="container">
            <header>
                <h1><span>欢迎光临</span></h1>
				<nav class="codrops-demos">
					<span>点击<strong>"立即注册"</strong>进行注册</span>
					<a href="/tologin-user" class="current-demo">用户登录</a>
					<a href="index.html">返回主页</a>
									
					 <!-- <a href="index.html" class="current-demo">Demo 1</a> -->
				</nav>
            </header>
            <section>				
                <div id="container_demo" >
                    <!-- hidden anchor to stop jump http://www.css3create.com/Astuce-Empecher-le-scroll-avec-l-utilisation-de-target#wrap4  -->
                    <a class="hiddenanchor" id="toregister"></a>
                    <a class="hiddenanchor" id="tologin"></a>
                    <div id="wrapper">
                        <div id="login" class="animate form">
                            <form  action="/dologin" autocomplete="on" method="post"  >
                                <h1>用户登录</h1>
                                <p>
                                    <label for="username" class="uname" data-icon="u" >您的电子邮件或手机号</label>
                                    <input id="username" name="user" required="required" pattern="(\w[-\w.+]*@([A-Za-z0-9][-A-Za-z0-9]+\.)+[A-Za-z]{2,14})|(0?(13|14|15|18|17)[0-9]{9})" type="text" placeholder="请输入您的电子邮件或手机号"/>
                                </p>
                                <p> 
                                    <label for="password" class="youpasswd" data-icon="p">密码</label>
                                    <input id="password" name="pwd" required="required" type="password" placeholder="请输入您的密码" />
                                </p>
                                <p class="keeplogin"> 
									<input type="checkbox" name="loginkeeping" id="loginkeeping" value="loginkeeping" /> 
									<label for="loginkeeping">记住登录状态</label>
								</p>
                                <p class="login button"> 
                                    <input type="submit" value="登录" /> 															
								</p>
                                <p class="change_link">
									还不是用户？
									<a href="#toregister" class="to_register">立即注册</a>
								</p>
                            </form>						
                        </div>							
                        <div id="register" class="animate form">
                            <form  action="mysuperscript.php" autocomplete="on"  method="post">
                                <h1>用户注册</h1> 
                                <p> 
                                    <label for="usernamesignup" class="phone" data-icon="u">手机号</label>
                                    <input id="usernamesignup" name="phone"  required pattern="0?(13|14|15|18|17)[0-9]{9}" type="tel"   placeholder="请输入11位手机号" />
                                </p>
                                <p>
                                    <label for="emailsignup" class="youmail" data-icon="u" >姓名</label>
                                    <input id="emailsignup" name="name" required="required" type="text" pattern="^[A-Za-z\u4e00-\u9fa5]+$" placeholder="请输入您的姓名(中文或英文)"/>
                                </p>
                                <p>
                                    <label for="emailsignup" class="youmail" data-icon="u" >身份证号</label>
                                    <input id="emailsignup" name="idCard" required="required" type="text" pattern="/(^\d{15}$)|(^\d{18}$)|(^\d{17}(\d|X|x)$)/" placeholder="请输入18位身份证号码"/>
                                </p>
                                <p>
                                    <label for="emailsignup" class="youmail" data-icon="e" >电子邮件</label>
                                    <input id="emailsignup" name="email" required="required" type="email" placeholder="请输入正确格式的电子邮件"/>
                                </p>
                                <p>
                                    <label for="passwordsignup" class="youpasswd" data-icon="p">密码</label>
                                    <input  id="newPwd" name="pwd" required="required" type="password" oninput="validityPwd()" placeholder="请输入密码"/>
                                </p>
                                <p> 
                                    <label for="passwordsignup_confirm" class="youpasswd" data-icon="p">确认密码</label>
                                    <input id="newPwdConfirm"  name="pwdconfirm" oninput="validityPwd()"  required="required" type="password" placeholder="请输入确认密码"/>
                                </p>
                                <p class="signin button"> 
									<input type="submit" value="提交"/> 
								</p>
                                <p class="change_link">  
									已经注册?
									<a href="#tologin" class="to_register">返回登录</a>
								</p>
                            </form>
                        </div>
						
                    </div>
                </div>  
            </section>
<div style="text-align:center;clear:both">
</div>	
        </div>
    </body>
</html>