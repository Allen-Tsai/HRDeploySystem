<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2017/1/26
  Time: 23:33
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
%>
<!doctype html>
<html lang="zh">
<head>
    <script src="<%=basePath%>js/sweetalert.min.js"></script>
    <link rel="stylesheet" type="text/css" href="<%=basePath%>css/sweetalert.css">
    <script type="text/javascript" src="<%=basePath%>js/jquery-3.1.1.min.js"></script>

    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1.0, user-scalable=no">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>出错啦</title>
    <!-- <link rel="stylesheet" type="text/css" href="css/normalize.css" /> -->
    <link rel="stylesheet" type="text/css" href="<%=basePath%>css/default.css">
    <link rel="stylesheet" type="text/css" href="<%=basePath%>css/private.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/materialize/0.97.1/css/materialize.min.css">
    <style type="text/css">
        html,
        body {
            height: 100%;
        }

        html {
            display: table;
            margin: auto;
        }

        body {
            display: table-cell;
            vertical-align: middle;
            background: url("<%=basePath%>images/hello/ban3.jpg") top center no-repeat;
            background-size: cover;
        }

        .margin {
            margin: 0 !important;
        }
    </style>
    <link rel="shortcut icon" href="<%=basePath%>images/hello/logo.png">

    <!--[if IE]>
    <script src="http://libs.useso.com/js/html5shiv/3.7/html5shiv.min.js"></script>
    <![endif]-->

</head>
<body>

<div id="login-page" class="row">
    <div class="col s12 z-depth-6 card-panel">
        <div class="row">
            <div class="input-field col s12 center">
                <img src="<%=basePath%>images/hello/logo.png" alt=""
                                     class="responsive-img valign profile-image-login">
                <h5 class="center login-form-text">抱歉！你访问的页面不存在！</h5>
                <div class="htmleaf-links">
                    <a class="htmleaf-icon icon-htmleaf-home-outline" href="<%=basePath%>readme.jsp" title="查看主页"
                       target="_blank">
                        <span> 查看主页</span></a>
                    <a class="htmleaf-icon icon-htmleaf-arrow-forward-outline" href="<%=basePath%>register.jsp"
                       title="返回上一页"
                       target="_blank">
                        <span> 返回</span></a>
                </div>
            </div>
        </div>
        <div class="demo_1">
            <a href="#"><img src="<%=basePath%>images/hello/404.png" height="220" width="300" alt="找不到页面！"/></a></div>
        <div class="row">
            <div class="input-field col s12">
                <a href="<%=basePath%>login.jsp" class="btn waves-effect waves-light col s12">返回首页</a>
            </div>
        </div>
        <div class="row">
            <div class="input-field col s6 m6 l6">
                <p class="margin medium-small"><a href="<%=basePath%>register.jsp">现在注册!</a></p>
            </div>
            <div class="input-field col s6 m6 l6">
                <p class="margin right-align medium-small"><a href="<%=basePath%>forgot-password.jsp">忘记密码?</a></p>
            </div>
        </div>
    </div>
</div>
<script>
    $(function () {
        $(".demo_1 a").click(function () {
            swal("错误噢!");
        });
    });
</script>
<script>window.jQuery || document.write('<script src="<%=basePath%>js/jquery-3.1.1.min.js"><\/script>')</script>
<!--materialize js-->
<script src="https://cdnjs.cloudflare.com/ajax/libs/materialize/0.97.1/js/materialize.min.js"></script>
</body>
</html>
