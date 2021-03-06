<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
            + path + "/";
%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title></title>
    <link rel="stylesheet" href="<%=basePath%>css/reset.css" />
    <link rel="stylesheet" href="<%=basePath%>css/login.css" />
    <script type="text/javascript" src="<%=basePath%>js/jquery.min.js"></script>
    <script type="text/javascript" src="<%=basePath%>js/login.js"></script>
    <script type="text/javascript" src="<%=basePath%>js/canvas-particle.js"></script>
</head>
<body>
<div class="page">
    <div class="loginwarrp">
   
        <div class="logo">管理员登陆</div>
        <div class="login_form">
            <form id="Login" name="Login" method="post" onsubmit="" action="${pageContext.request.contextPath }/admin/login">
                <li class="login-item">
                    <span>用户名：</span>
                    <input type="text" id="cardNumber" name="cardNumber" class="login_input" >
                    <span id="count-msg" class="error"></span>
                </li>
                <li class="login-item">
                    <span>密　码：</span>
                    <input type="password" id="password" name="password" class="login_input" >
                    <span id="password-msg" class="error"></span>
                </li>  
                 <span style="color: #F00">${errorMsg }</span>
                 
                <li class="login-sub">
                    <input type="submit" name="Submit" value="登录" />
                    <input type="reset" name="Reset" value="重置" />
                </li>                      
           </form>
        </div>
    </div>
</div>
<script type="text/javascript">
        window.onload = function() {
            var config = {
                vx : 4,
                vy : 4,
                height : 2,
                width : 2,
                count : 100,
                color : "121, 162, 185",
                stroke : "100, 200, 180",
                dist : 6000,
                e_dist : 20000,
                max_conn : 10
            }
            CanvasParticle(config);
        }
    </script>    
</body>
</html>