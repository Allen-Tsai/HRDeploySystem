<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<!doctype html>
<html lang="zh">
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
%>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1.0, user-scalable=no">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>人力资源智能分配管理信息系统</title>
    <!-- <link rel="stylesheet" type="text/css" href="css/normalize.css" /> -->
    <link rel="stylesheet" type="text/css" href="css/default.css">
    <link rel="stylesheet" type="text/css" href="css/private.css">
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
            background: url("images/hello/ban3.jpg") top center no-repeat;
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
<body class="yellow">
<div id="login-page" class="row">
    <div class="col s12 z-depth-6 card-panel">
        <form class="login-form">
            <div class="row">
                <div class="input-field col s12 center">
                    <img src="images/hello/logo.png" alt="" class="responsive-img valign profile-image-login">
                    <h5 class="center login-form-text">人力资源智能分配管理信息系统</h5>
                    <div class="htmleaf-links">
                        <a class="htmleaf-icon icon-htmleaf-home-outline" href="readme.jsp" title="查看主页"
                           target="_blank">
                            <span> 查看主页</span></a>
                        <a class="htmleaf-icon icon-htmleaf-arrow-forward-outline" href="register.jsp" title="返回上一页"
                           target="_blank">
                            <span> 返回</span></a>
                    </div>
                </div>
            </div>
            <div class="row margin">
                <div class="input-field col s12">
                    <i class="mdi-social-person-outline prefix"></i>
                    <input class="validate" id="email" type="email" placeholder="Email">
                </div>
            </div>
            <div class="row">
                <div class="input-field col s12">
                    <button class="btn waves-effect waves-light col s12">重置我的密码</button>
                </div>
            </div>
            <div class="row">
                <div class="input-field col s6 m6 l6">
                    <p class="margin medium-small"><a href="register.jsp">立刻注册!</a></p>
                </div>
                <div class="input-field col s6 m6 l6">
                    <p class="margin right-align medium-small"><a href="login.jsp">登录</a></p>
                </div>
            </div>

        </form>
    </div>
</div>

<script type="text/javascript" src="http://libs.useso.com/js/jquery/1.11.0/jquery.min.js"></script>
<script>window.jQuery || document.write('<script src="js/jquery-2.1.1.min.js"><\/script>')</script>
<!--materialize js-->
<script src="https://cdnjs.cloudflare.com/ajax/libs/materialize/0.97.1/js/materialize.min.js"></script>
</body>
</html>