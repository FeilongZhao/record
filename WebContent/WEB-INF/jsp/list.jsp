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
                data-toggle="dropdown" href="#"> <i class="fa fa-user fa-fw"></i>
                    <i class="fa fa-caret-down" >欢迎您：${admin.cardNumber }</i>
            </a>
                <ul class="dropdown-menu dropdown-user">
                    <li><a href="#"><i class="fa fa-user fa-fw"></i> 用户设置</a></li>
                    <li><a href="#"><i class="fa fa-gear fa-fw"></i> 系统设置</a></li>
                    <li class="divider"></li>
                    <li><a href="${pageContext.request.contextPath }/admin/out"><i class="fa fa-sign-out fa-fw"></i>
                            退出登录</a></li>
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
                    <li><a href="#" class="active"><i
                            class="fa fa-edit fa-fw"></i> 事件列表</a></li>
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
                    <form class="form-inline" action="${pageContext.request.contextPath }/#n" method="post">
                        <div class="form-group">
                            <label for="projectName">项目名称</label> 
                            <input type="text" class="form-control" id="admin" value="${projectName }" name="projectName">
                        </div>
                        <div class="form-group">
                            <label for="companyName">公司</label> 
                            <select class="form-control" id="companyFrom" placeholder="公司选择" name="companySource">
                                <option value="">--请选择--</option>
                                <c:forEach items="${companys}" var="item">
                                    <option value="${item.id}"<c:if test="${item.id == companySource}"> selected</c:if>>${item.companyName }</option>
                                </c:forEach>
                            </select>
                        </div>
                        <div class="form-group">
                            <label for="persion">人员</label> 
                            <select class="form-control" id="persionId"  name="persionId">
                                <option value="">--请选择--</option>
                                <c:forEach items="${persions}" var="item">
                                    <option value="${item.id}"<c:if test="${item.id == persionId}"> selected</c:if>>${item.name }</option>
                                </c:forEach>
                            </select>
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
                                    <th>ID</th>
                                    <th>项目名称</th>
                                    <th>所属公司</th>
                                    <th>项目内容</th>
                                    <th>参加人员</th>
                                    <th>时间</th>
                                    <th></th>
                                    
                                </tr>
                            </thead>
                            <tbody>
                                <c:forEach items="${lists}" var="lists">
                                    <tr>
                                        <td>${lists.projectName}</td>
                                        <td>${lists.company}</td>
                                        <td>${lists.contest}</td>
                                        <td>${lists.persion}</td>
                                        <td>${lists.date}</td>
                                        
                                        
                                        <td>
                                          <!-- 格式 -->  
                                        </td>
                                        <td>
                                            <a href="#" class="btn btn-primary btn-xs" data-toggle="modal" data-target="#customerEditDialog" onclick="editCustomer(${row.cust_id})">修改</a>
                                            <a href="#" class="btn btn-danger btn-xs" onclick="#">删除</a>
                                        </td>
                                    </tr>
                                </c:forEach>
                            </tbody>
                        </table>
                        <div class="col-md-12 text-right">
                            <itcast:page url="#" />
                        </div>
                        
                    </div>
                    
                </div>
            
            </div>
        </div>
        

    </div>
    <!-- 事件编辑对话框 -->
    <div class="modal fade" id="testEditDialog" tabindex="-1" role="dialog"
        aria-labelledby="myModalLabel">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                    <h4 class="modal-title" id="myModalLabel">修改记录信息</h4>
                </div>
                <div class="modal-body">
                    <form class="form-horizontal" id="edit_customer_form">
                        <input type="hidden" id="edit_cust_id" name="cust_id"/>
                        <div class="form-group">
                            <label for="edit_projectName" class="col-sm-2 control-label">项目名称</label>
                            <div class="col-sm-10">
                                <input type="text" class="form-control" id="edit_projectrName" placeholder="項目名称" name="projectName">
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="edit_customerFrom" style="float:left;padding:7px 15px 0 27px;">所属公司</label> 
                            <div class="col-sm-10">
                                <select class="form-control" id="edit_company" placeholder="所属公司" name="companys">
                                    <option value="">--请选择--</option>
                                    <c:forEach items="${companys}" var="item">
                                    <option value="${item.id}"<c:if test="${item.id == companySource}"> selected</c:if>>${item.companyName }</option>
                                    </c:forEach>
                                </select>
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="edit_custIndustry" style="float:left;padding:7px 15px 0 27px;">项目内容</label>
                            <div class="col-sm-10"> 
                                <select class="form-control" id="edit_custIndustry"  name="cust_industry">
                                    <option value="">--请选择--</option>
                                    <c:forEach items="${industryType}" var="item">
                                        <option value="${item.dict_id}"<c:if test="${item.dict_id == custIndustry}"> selected</c:if>>${item.dict_item_name }</option>
                                    </c:forEach>
                                </select>
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="edit_custLevel" style="float:left;padding:7px 15px 0 27px;">参加人员</label>
                            <div class="col-sm-10">
                                <select class="form-control" id="edit_persion" name="persionId">
                                    <option value="">--请选择--</option>
                                    <c:forEach items="${contest}" var="item">
                                        <option value="${item.id}"<c:if test="${item.id == persionId}"> selected</c:if>>${item.persionName }</option>
                                    </c:forEach>
                                </select>
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="edit_date" class="col-sm-2 control-label">时间</label>
                            <div class="col-sm-10">
                                <input type="text" class="form-control" id="date" placeholder="时间" name="date">
                            </div>
                        </div>
                        
                    
                    </form>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
                    <button type="button" class="btn btn-primary" onclick="#">保存修改</button>
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
        function editCustomer(id) {
            $.ajax({
                type:"get",
                url:"<%=basePath%>customer/edit.action",
                data:{"id":id},
                success:function(data) {
                    $("#edit_cust_id").val(data.cust_id);
                    $("#edit_customerName").val(data.cust_name);
                    $("#edit_customerFrom").val(data.cust_source)
                    $("#edit_custIndustry").val(data.cust_industry)
                    $("#edit_custLevel").val(data.cust_level)
                    $("#edit_linkMan").val(data.cust_linkman);
                    $("#edit_phone").val(data.cust_phone);
                    $("#edit_mobile").val(data.cust_mobile);
                    $("#edit_zipcode").val(data.cust_zipcode);
                    $("#edit_address").val(data.cust_address);
                    
                }
            });
        }
        function updateCustomer() {
            $.post("<%=basePath%>customer/update.action",$("#edit_customer_form").serialize(),function(data){
                alert("客户信息更新成功！");
                window.location.reload();
            });
        }
        
        function deleteCustomer(id) {
            if(confirm('确实要删除该客户吗?')) {
                $.post("<%=basePath%>customer/delete.action",{"id":id},function(data){
                    alert("客户删除更新成功！");
                    window.location.reload();
                });
            }
        }
    </script>

</body>

</html>
