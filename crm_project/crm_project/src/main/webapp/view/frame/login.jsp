<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<!DOCTYPE html>
<html>
<head>
<base href="<%=basePath%>" />
<meta charset="UTF-8">
<title>CRM管理系统</title>
<script src="http://libs.baidu.com/jquery/2.0.0/jquery.min.js"></script>

<script type="text/javascript">
	function login() {
		var usernameV = $("#username").val();
		var passwordV = $("#password").val();
		console.log(usernameV);
		$.ajax({
			type : "post",
			url : "http://localhost:8080/crm_project/userController/login.do",
			data : {
				userName : usernameV,
				password : passwordV
			},
			success : function(data) {
				//alert(data);
				window.location.href = data;
				/* var flag = JSON.parse(data);
				if (flag) {
					window.location.href = "view/frame/main.jsp";
				} else {
					$("#info2").css("display", "block");
				} */
			},
			error : function() {
				$("#info").css("display", "block");
				alert("ajax请求失败:login");
				window.location.href = "view/frame/500.jsp";
			}

		});
	}
</script>



<!--
	作者：2897250580@qq.com
	时间：2019-11-20
	描述：以下是网页粒子特效
-->
<meta name="author" content="DeathGhost" />
<link rel="stylesheet" type="text/css" href="css/style.css" />
<style>
body {
	height: 100%;
	background: #16a085;
	overflow: hidden;
}

canvas {
	z-index: -1;
	position: absolute;
}
</style>
<script src="js/jquery.js"></script>
<script src="js/verificationNumbers.js"></script>
<script src="js/Particleground.js"></script>

<script>
	$(document).ready(function() {
		//粒子背景特效
		$('body').particleground({
			dotColor : '#5cbdaa',
			lineColor : '#5cbdaa'
		});
		createCode();
	});
</script>
</head>
<body>

	<div style="text-align: right" class="ver_btn" >
		<h1 ><a href="view/frame/register.jsp"  class="ver_btn">
		<span style="color:white">立即注册&nbsp&nbsp&nbsp&nbsp</span>
		</a></h1>

	</div>

	<dl class="admin_login">
		<dt>
			<strong>CRM管理系统</strong> <em>
    Customer Relationship Management </em>
		</dt>
		<dd class="user_icon">
			<input type="text" placeholder="账号" class="login_txtbx"
				name="userName" id="username" />
		</dd>
		<dd class="pwd_icon">
			<input type="password" placeholder="密码" class="login_txtbx"
				name="password" id="password" />
		</dd>
		<dd class="val_icon">
			<div class="checkcode">
				<input type="text" id="J_codetext" placeholder="验证码" maxlength="4"
					class="login_txtbx">
				<canvas class="J_codeimg" id="myCanvas" onclick="createCode()">对不起，您的浏览器不支持canvas，请下载最新版浏览器!</canvas>
			</div>
			<input type="button" value="验证码核验" class="ver_btn"
				onClick="validate();">
		</dd>
		<dd>
			<font color="red" id="info2" style="display: none;">密码错误</font> <font
				color="red" id="info" style="display: none;">用户名或者密码错误</font>
		</dd>
		<dd>
			<input type="button" value="立即登录" class="submit_btn"
				onclick="login()" />
		</dd>

		<p>但晓峰 黎鸿 杨丽荣 张涛 姚锐 版权所有</p>
		<p>J19091 hqyj crm_project</p>
		</dd>
	</dl>
</body>
</html>