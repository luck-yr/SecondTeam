<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%
	String path =request.getContextPath();
	String basePath = request.getScheme() +"://"+request.getServerName()+":"
	+request.getServerPort() + path + "/" ;
%>

<!-- 引用shiro标签的使用 -->
<%@ taglib prefix="shiro" uri="http://shiro.apache.org/tags" %>

<!DOCTYPE html>
<html>
<head>
<base href="<%=basePath%>" />
<meta charset="UTF-8">
<title>ERP 系统主页</title>
<meta name="keywords" content="">
    <meta name="description" content="">

    <!--[if lt IE 9]>
    <meta http-equiv="refresh" content="0;ie.html" />
    <![endif]-->

    <link rel="shortcut icon" href="favicon.ico"> <link href="css/bootstrap.min.css?v=3.3.6" rel="stylesheet">
    <link href="css/font-awesome.min.css?v=4.4.0" rel="stylesheet">
    <link href="css/animate.css" rel="stylesheet">
    <link href="css/style2.css?v=4.1.0" rel="stylesheet">
    
    <!-- ajax操作 -->
    <script type="text/javascript">
	function logout() {
		$.ajax({
			type : "post",
			url : "http://localhost:8080/Maven_project_SSM_1_1/userController/userLogout.do",
			success : function(date) {
				alert(date);
				alert("将退出到登录界面！");
				window.location.href = date;
			},
			error : function() {
				window.location.href = "view/frame/500.jsp";
			}

		});
	}
</script>
    
    
    
    
</head>
<body class="fixed-sidebar full-height-layout gray-bg" style="overflow:hidden">
    <div id="wrapper">
        <!--左侧导航开始-->
        <nav class="navbar-default navbar-static-side" role="navigation">
            <div class="nav-close"><i class="fa fa-times-circle"></i>
            </div>
            <div class="sidebar-collapse">
                <ul class="nav" id="side-menu">
                    <li class="nav-header">
                        <div class="dropdown profile-element">
                            <a data-toggle="dropdown" class="dropdown-toggle" href="#">
                                <span class="clear">
                                    <span class="block m-t-xs" style="font-size:20px;">
                                        <i class="fa fa-area-chart"></i>
                                        <strong class="font-bold">CRM管理系统</strong>
                                    </span>
                                </span>
                            </a>
                        </div>
                        <div class="logo-element">ERP
                        </div>
                    </li>
                    <li class="hidden-folded padder m-t m-b-sm text-muted text-xs">
                        <span class="ng-scope">管理系统引擎</span>
                    </li>
                    <li>
                        <a class="J_menuItem" href="view/frame/index.jsp">
                            <i class="fa fa-home"></i>
                            <span class="nav-label">系统首页</span>
                        </a>
                    </li>
                    
                    
	                    <li>
	                   
	                        <a href="#">
	                            <i class="fa fa fa-bar-chart-o"></i>
	                           
	                            
	                            	<span class="nav-label">管理</span>
	                            
	                            	<span class="fa arrow"></span>
	                           
	                        </a>
	                   
	                        
	                        
	                        
	                        <ul class="nav nav-second-level">
	                            <li>
	                                <a class="J_menuItem" href="">客户管理</a>
	                            </li>
	                            <li>
	                                <a class="J_menuItem" href="graph_flot.html">用户管理</a>
	                            </li>
	                            <li>
	                                <a class="J_menuItem" href="graph_morris.html">权限管理</a>
	                            </li>
	                            <li>
	                                <a class="J_menuItem" href="graph_rickshaw.html">订单管理</a>
	                            </li>
	                        </ul>
	                    </li>
                    
                    


                </ul>
            </div>
        </nav>
        <!--左侧导航结束-->
        
        <!--右侧部分开始-->
        <div id="page-wrapper" class="gray-bg dashbard-1">
            <div class="row border-bottom">
                <nav class="navbar navbar-static-top" role="navigation" style="margin-bottom: 0">
                
                    <div class="navbar-header">
                   
                    <button class="navbar-minimalize minimalize-styl-2 btn btn-info ">M/S</button>
                    
                        <form role="search" class="navbar-form-custom" method="post" action="search_results.html">
                            <div class="form-group">
                                <input type="text" placeholder="欢迎使用CRM管理系统" class="form-control" name="top-search" id="top-search">
                            </div>
                            
                            <!-- 添加一个可以看到用户的名字   -->
                            
                        </form>
                    </div>
                    
                    
                    <ul class="nav navbar-top-links navbar-right">
                        <li class="dropdown">
                            <a class="dropdown-toggle count-info" data-toggle="dropdown" href="">
                                
                                <span class="label label-warning"></span>
                            </a>
                            
                        
                        <li class="dropdown">
                        <!-- 退出登录按钮 logout()-->
                             <a href="" onclick="logout()" class="nav navbar-top-links navbar-right" >退出登录</a>
                        </li>
                    </ul>
                   
                    
                </nav>
            </div>
            
            <div class="row J_mainContent" id="content-main">
                <iframe id="J_iframe" width="100%" height="100%" src="view/frame/index.jsp" frameborder="0" data-id="" seamless></iframe>
            </div>
        </div>
        <!--右侧部分结束-->
    </div>

    <!-- 全局js -->
    <script src="js/jquery.min.js?v=2.1.4"></script>
    <script src="js/bootstrap.min.js?v=3.3.6"></script>
    <script src="js/plugins/metisMenu/jquery.metisMenu.js"></script>
    <script src="js/plugins/slimscroll/jquery.slimscroll.min.js"></script>
    <script src="js/plugins/layer/layer.min.js"></script>

    <!-- 自定义js -->
    <script src="js/hAdmin.js?v=4.1.0"></script>
    <script type="text/javascript" src="js/index.js"></script>

    <!-- 第三方插件 -->
    <script src="js/plugins/pace/pace.min.js"></script>
<div style="text-align:center;">
<p>来源:<a href="http://www.mycodes.net/" target="_blank">源码之家</a></p>
</div>
</body>

</html>