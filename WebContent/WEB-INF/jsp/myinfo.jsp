<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="itcast" uri="http://itcast.cn/common/"%>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
            + path + "/";
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="">
<meta name="author" content="">

<title>记事本</title>

<link href="<%=basePath%>css/bootstrap.min.css" rel="stylesheet">
<link href="<%=basePath%>css/metisMenu.min.css" rel="stylesheet">
<link href="<%=basePath%>css/dataTables.bootstrap.css" rel="stylesheet">
<link href="<%=basePath%>css/sb-admin-2.css" rel="stylesheet">
<link href="<%=basePath%>css/font-awesome.min.css" rel="stylesheet"
	type="text/css">
<link href="<%=basePath%>css/boot-crm.css" rel="stylesheet"
	type="text/css">

</head>

<body>

	<div id="wrapper">

		<!-- Navigation -->
		<nav class="navbar navbar-default navbar-static-top" role="navigation"
			style="margin-bottom: 0">
		<div class="navbar-header">
			<button type="button" class="navbar-toggle" data-toggle="collapse"
				data-target=".navbar-collapse">
				<span class="sr-only">Toggle navigation</span> <span
					class="icon-bar"></span> <span class="icon-bar"></span> <span
					class="icon-bar"></span>
			</button>
			<a class="navbar-brand" href="index.html">记事本 v1.0</a>
		</div>
		<!-- /.navbar-header -->

		<ul class="nav navbar-top-links navbar-right">




			<!-- /.dropdown -->
			<li class="dropdown"><a class="dropdown-toggle"
				data-toggle="dropdown" href="#"> 欢迎您：${admin.name }</a>
				<ul class="dropdown-menu dropdown-user">
					<li><a
						href="${pageContext.request.contextPath }/transit/myinfo">密码修改</a></li>
					<li><a href="#"> 系统设置</a></li>
					<li class="divider"></li>
					<li><a href="${pageContext.request.contextPath }/admin/out">退出登录</a></li>
				</ul> <!-- /.dropdown-user --></li>
			<!-- /.dropdown -->
		</ul>
		<!-- /.navbar-top-links -->

		<div class="navbar-default sidebar" role="navigation">
			<div class="sidebar-nav navbar-collapse">
				<ul class="nav" id="side-menu">
					<li class="sidebar-search">
						<div class="input-group custom-search-form">
							<input type="text" class="form-control" placeholder="查询内容...">
							<span class="input-group-btn">
								<button class="btn btn-default" type="button">
									<i class="fa fa-search" style="padding: 3px 0 3px 0;"></i>
								</button>
							</span>
						</div> <!-- /input-group -->
					</li>
					<li><a href="${pageContext.request.contextPath }/select/list"
						class="active"><i class="fa fa-edit fa-fw"></i> 事件列表</a></li>
					<li><a href="${pageContext.request.contextPath }/transit/add"><i
							class="fa fa-dashboard fa-fw"></i> 事件记录</a></li>
				</ul>
			</div>
			<!-- /.sidebar-collapse -->
		</div>
		<!-- /.navbar-static-side --> </nav>

		<div id="page-wrapper">
			<div class="row">
				<div class="col-lg-12">
					<h1 class="page-header">密码修改</h1>
				</div>
				<!-- /.col-lg-12 -->
			</div>
			<!-- /.row -->

			<div class="row">
				<div class="col-lg-12">
					<div class="panel panel-default">

						<!-- /.panel-heading -->
						<form
							action="${pageContext.request.contextPath }/admin/updatePassword"
							method="post">
							<div class="input-group input-group-lg">
								<span class="input-group-addon" id="sizing-addon1">原密码</span> <input
									type="password" class="form-control" placeholder="原密码"
									aria-describedby="sizing-addon1" name="password"/>

							</div>

							<div class="input-group input-group-lg">
								<span class="input-group-addon" id="sizing-addon1">新密码</span> <input
									type="password" class="form-control" placeholder="新密码"
									aria-describedby="sizing-addon1" name = "password" id = "password"/>
							</div>
							<div class="input-group input-group-lg">
								<span class="input-group-addon" id="sizing-addon1">新密码</span>
								 <input	type="password" class="form-control" placeholder="确认密码"
									aria-describedby="sizing-addon1" name="newPassword" id="newPassword" onblur="check()"/>
							</div>
							<div class="input-group input-group-lg">
								<span class="input-group-addon" id="sizing-addon1">
									${updateMsg }</span>
							</div>
							<button type="submit" class="btn btn-primary"
								style="float: right;">添加</button>
						</form>
					</div>
				</div>
			</div>
		</div>
		<!-- jQuery -->
		<script src="<%=basePath%>js/jquery.min.js"></script>

		<!-- Bootstrap Core JavaScript -->
		<script src="<%=basePath%>js/bootstrap.min.js"></script>

		<!-- Metis Menu Plugin JavaScript -->
		<script src="<%=basePath%>js/metisMenu.min.js"></script>

		<!-- DataTables JavaScript -->
		<script src="<%=basePath%>js/jquery.dataTables.min.js"></script>
		<script src="<%=basePath%>js/dataTables.bootstrap.min.js"></script>

		<!-- Custom Theme JavaScript -->
		<script src="<%=basePath%>js/sb-admin-2.js"></script>
		<script type="text/javascript">
		
		function check(){
			
			var oldPassword = document.getElementById("password").value;
			var newPassword = document.getElementById("newPassword").value;
			
			if(oldPassword == newPassword){
				
			}else{
				alert("密码不一致");
			}
			
		}
		
		
		</script>
</body>

</html>