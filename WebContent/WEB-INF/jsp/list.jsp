<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="itcast" uri="http://itcast.cn/common/"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

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

<!-- Bootstrap Core CSS -->
<link href="<%=basePath%>css/bootstrap.min.css" rel="stylesheet">

<!-- MetisMenu CSS -->
<link href="<%=basePath%>css/metisMenu.min.css" rel="stylesheet">

<!-- DataTables CSS -->
<link href="<%=basePath%>css/dataTables.bootstrap.css" rel="stylesheet">

<!-- Custom CSS -->
<link href="<%=basePath%>css/sb-admin-2.css" rel="stylesheet">

<!-- Custom Fonts -->
<link href="<%=basePath%>css/font-awesome.min.css" rel="stylesheet"
	type="text/css">
<link href="<%=basePath%>css/boot-crm.css" rel="stylesheet"
	type="text/css">

<!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
<!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
        <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->

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
				data-toggle="dropdown" href="#"> 欢迎您：${admin.name }</i>
			</a>
				<ul class="dropdown-menu dropdown-user">
					<li><a
						href="${pageContext.request.contextPath }/transit/myinfo"><i
							class="fa fa-user fa-fw"></i> 密码修改</a></li>
					<li><a href="#"><i class="fa fa-gear fa-fw"></i> 系统设置</a></li>
					<li class="divider"></li>
					<li><a href="${pageContext.request.contextPath }/admin/out"><i
							class="fa fa-sign-out fa-fw"></i> 退出登录</a></li>
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
					<li><a href="${pageContext.request.contextPath }/select/list" class="active"><i class="fa fa-edit fa-fw"></i>
							事件列表</a></li>
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
					<h1 class="page-header">事件统计</h1>
				</div>
				<!-- /.col-lg-12 -->
			</div>
			<!-- /.row -->
			<div class="panel panel-default">
				<div class="panel-body">
					<form class="form-inline"
						action="${pageContext.request.contextPath }/select/list"
						method="post">
						<div class="form-group">
							<label for="projectName">项目名称</label> <input type="text"
								class="form-control" id="projectName" value="${projectName }"
								name="projectName">
						</div>
						<div class="form-group">
							<label for="companyName">公司</label> <select class="form-control"
								id="company" placeholder="公司选择" name="company">
								<option value="">--请选择--</option>
								<c:forEach items="${companys}" var="item">
									<option value="${item.name}"
										<c:if test="${item.name == company}"> selected</c:if>>${item.name }</option>
								</c:forEach>
							</select>
						</div>
						<div class="form-group">
							<label for="persion">人员</label> <input type="text"
								class="form-control" id="persion" value="${persion }"
								name="persion">
						</div>

						<button type="submit" class="btn btn-primary">查询</button>
					</form>
				</div>
			</div>
			<div class="row">
				<div class="col-lg-12">
					<div class="panel panel-default">
						<div class="panel-heading">事件列表</div>
						<!-- /.panel-heading -->
						<table class="table table-bordered table-striped">
							<thead>
								<tr>

									<th>项目名称</th>
									<th>所属公司</th>
									<th>项目内容</th>
									<th>参加人员</th>
									<th>时间</th>
									<th></th>

								</tr>
							</thead>
							<tbody>
								<c:forEach items="${page.rows}" var="row">
									<tr>
										<td>${row.projectName}</td>
										<td>${row.company}</td>
										<td>${row.contest}</td>
										<td>${row.persion}</td>
										<td>${row.hours}</td>

										<td>
											<!-- 格式 -->
										</td>
										<td><a href="#" class="btn btn-primary btn-xs"
											data-toggle="modal" data-target="#EditDialog"
											onclick="editList(${row.id})">修改</a> <a href="#"
											class="btn btn-danger btn-xs" onclick="deleteText(${row.id})">删除</a>
										</td>
									</tr>
								</c:forEach>
							</tbody>
						</table>
						<div class="col-md-12 text-right">
							<itcast:page
								url="${pageContext.request.contextPath }/select/list" />
						</div>

					</div>

				</div>

			</div>
		</div>


	</div>
	<!-- 事件编辑对话框 -->
	<div class="modal fade" id="EditDialog" tabindex="-1" role="dialog"
		aria-labelledby="myModalLabel">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
					<h4 class="modal-title" id="myModalLabel">修改记录信息</h4>
				</div>
				<div class="modal-body">
					<form class="form-horizontal" id="edit_list_form">
						<input type="hidden" id="edit_id" name="id" />
						<div class="form-group">
							<label for="projectName" class="col-sm-2 control-label">项目名称</label>
							<div class="col-sm-10">
								<input type="text" class="form-control" id="edit_projectName"
									placeholder="项目名称" name="projectName">
							</div>
						</div>
						<div class="form-group">
							<label for="company"
								style="float: left; padding: 7px 15px 0 27px;">所属公司</label>

							<div class="col-sm-10">
								<input type="text" class="form-control" id="edit_company"
									placeholder="所属公司" name="company">
							</div>
						</div>
						<div class="form-group">
							<label for="contest"
								style="float: left; padding: 7px 15px 0 27px;">项目内容</label>
							<div class="col-sm-10">
								<input type="text" class="form-control" id="edit_contest"
									placeholder="项目内容" name="contest">
							</div>
						</div>
						<div class="form-group">
							<label for="persion"
								style="float: left; padding: 7px 15px 0 27px;">参加人员</label>
							<div class="col-sm-10">
								<input type="text" class="form-control" id="edit_persion"
									placeholder="参加人员" name="persion">
							</div>
						</div>
						<div class="form-group">
							<label for="date" class="col-sm-2 control-label">时间</label>
							<div class="col-sm-10">
									<input type="text"  class="form-control" id="edit_date" placeholder="时间"  name="hours" >
							</div>
						</div>


					</form>
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
					<button type="button" class="btn btn-primary"
						onclick="updateList()">保存修改</button>
				</div>
			</div>
		</div>
	</div>
	<!-- /#wrapper -->

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
        function editList(id) {
        	
        	
            $.ajax({
                type:"get",
                url:"<%=basePath%>text/edit",
                data:{"id":id},
                success:function(data) {
       
                	$("#edit_id").val(data.id);
                    $("#edit_projectName").val(data.projectName);
                    $("#edit_company").val(data.company);
                    $("#edit_contest").val(data.contest);
                    $("#edit_persion").val(data.persion);
                    $("#edit_date").val(data.hours);           
                }
            });
        }
        function updateList() {
            $.post("<%=basePath%>text/update",$("#edit_list_form").serialize(),function(data){
                alert("客户信息更新成功！");
                window.location.reload();
            });
        }
        
        function deleteText(id) {
            if(confirm('确实要删除该客户吗?')) {
                $.post("<%=basePath%>/text/delete",{"id":id},function(data){
                    alert("客户删除更新成功！");
                    window.location.reload();
                });
            }
        }
    </script>

</body>

</html>
