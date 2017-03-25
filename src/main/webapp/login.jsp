<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2017/1/26
  Time: 23:33
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
%>
<!doctype html>

<html lang="zh">
<head>

    <link rel="shortcut icon" href="<%=basePath%>images/hello/logo.png">
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1.0, user-scalable=no">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>人力资源智能分配管理信息系统</title>
    <!-- <link rel="stylesheet" type="text/css" href="css/normalize.css" /> -->
    <link rel="stylesheet" type="text/css" href="css/default.css">
    <link rel="stylesheet" type="text/css" href="css/private.css">
    <link rel="stylesheet" type="text/css" href="css/normalize.css">
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
    <script src="<%=basePath%>js/sweetalert.min.js"></script>
    <link rel="stylesheet" type="text/css" href="<%=basePath%>css/sweetalert.css">
    <script type="text/javascript" src="<%=basePath%>js/jquery-3.1.1.min.js"></script>

    <script type="text/javascript">
        function validate_required(field, alerttxt) {
            with (field) {
                if (value == null || value == "") {
                    swal(alerttxt);
                    return false
                }
                else {
                    return true
                }
            }
        }
        function login(thisform) {
            with (thisform) {
                if (validate_required(email, "邮箱不能为空！") == false
                    || validate_required(password, "密码不能为空！") == false) {
                    email.focus();
                    return false
                }
            }
        }
    </script>
    <!--[if IE]>
    <script src="http://libs.useso.com/js/html5shiv/3.7/html5shiv.min.js"></script>
    <![endif]-->
</head>
<body>

<div id="login-page" class="row">
    <div class="col s12 z-depth-6 card-panel">
        <form class="login-form" action="welcome" method="post" onsubmit="return login(this)">
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
                    <input class="validate" id="email" type="email" name="email" value=""
                           placeholder="Email">
                </div>
            </div>
            <div class="row margin">
                <div class="input-field col s12">
                    <i class="mdi-action-lock-outline prefix"></i>
                    <input id="password" type="password" name="password" value=""
                           placeholder="Password">
                </div>
            </div>
            <div class="row">
                <div class="input-field col s12 m12 l12  login-text">
                    <input type="checkbox" id="remember-me"/>
                    <label for="remember-me">记住我</label>
                </div>
            </div>
            <div class="row">
                <div class="input-field col s12">
                    <button class="btn waves-effect waves-light col s12">登　录</button>
                </div>
            </div>
            <div class="row">
                <div class="input-field col s6 m6 l6">
                    <p class="margin medium-small"><a href="register.jsp">现在注册!</a></p>
                </div>
                <div class="input-field col s6 m6 l6">
                    <p class="margin right-align medium-small"><a href="forgot-password.jsp">忘记密码?</a></p>
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
