<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<!doctype html>
<html lang="zh">
<head>
    <%
        String path = request.getContextPath();
        String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
    %>
    <script src="<%=basePath%>js/sweetalert.min.js"></script>
    <link rel="stylesheet" type="text/css" href="<%=basePath%>css/sweetalert.css">
    <script type="text/javascript" src="<%=basePath%>js/jquery-3.1.1.min.js"></script>

    <link rel="shortcut icon" href="<%=basePath%>images/hello/logo.png">
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
    <script type="text/javascript">
        function register() {
            var userName = document.getElementById("username").value;
            var pwd = document.getElementById("password").value;
            var repwd = document.getElementById("passwordAgain").value;
            var address = document.getElementById("email").value;
            var matchResult = true;
            if (userName == "" || pwd == "" || repwd == "" || address == "") {
                swal("请确认是否有空缺项！");
                matchResult = false;
            } else if (userName.length < 3 || userName.length > 20) {
                alert("用户名长度应在3到20个字符之间！");
                matchResult = false;
            } else if (userName == pwd || userName == repwd) {
                alert("密码或重复密码不能和用户名相同！");
                matchResult = false;
            } else if (pwd.length < 6 || pwd.length > 20 || repwd.length < 6 || repwd.length > 20) {
                alert("密码或重复密码长度应在6到20个字符之间！");
                matchResult = false;
            } else if (pwd != repwd) {
                alert("密码和重复密码不同，请重新输入！");
                matchResult = false;
            } else if (userName.length < 6 || userName.length > 20) {
                alert("用户名长度应在6到20个字符之间！");
                matchResult = false;
            }
            if (matchResult == true) {
                var mailreg = /^\w+@\w+(\.\w+)+$/;
                if (!address.match(mailreg)) {
                    alert("邮箱格式不正确");
                    matchResult = false;
                }
            }
            if (matchResult == true) {
                if (userName.charAt(0) >= 0 && userName.charAt(0) <= 9) {
                    alert("用户名不能以数字字符开始！");
                    matchResult = false;
                }
            }

            return matchResult;
        }
    </script>
    <!--[if IE]>
    <script src="http://libs.useso.com/js/html5shiv/3.7/html5shiv.min.js"></script>
    <![endif]-->
</head>
<body>
<div id="login-page" class="row">
    <div class="col s12 z-depth-6 card-panel">
        <form class="login-form" action="addUser" onsubmit="return register();"
              method="post">
            <div class="row">
                <div class="input-field col s12 center">
                    <img src="images/hello/logo.png" alt="" class="responsive-img valign profile-image-login">
                    <h5 class="center login-form-text">人力资源智能分配管理信息系统</h5>

                    <div class="htmleaf-links">
                        <a class="htmleaf-icon icon-htmleaf-home-outline" href="readme.jsp" title="查看主页"
                           target="_blank">
                            <span> </span></a>
                        <a class="htmleaf-icon icon-htmleaf-arrow-forward-outline" href="login.jsp"
                           title="返回上一页" target="_blank"><span> 返回</span></a>
                    </div>
                </div>
            </div>
            <div class="row margin">
                <div class="input-field col s12">
                    <i class="mdi-social-person-outline prefix"></i>
                    <input id="username" type="text" class="validate" name="username" value="${user.username}"
                           placeholder="Username">
                </div>
            </div>
            <div class="row margin">
                <div class="input-field col s12">
                    <i class="mdi-communication-email prefix"></i>
                    <input id="email" type="email" class="validate" name="email" value="${user.email}"
                           placeholder="Email">
                </div>
            </div>
            <div class="row margin">
                <div class="input-field col s12">
                    <i class="mdi-action-lock-outline prefix"></i>
                    <input id="password" type="password" class="validate" name="password" value="${user.password}"
                           placeholder="Password">
                </div>
            </div>
            <div class="row margin">
                <div class="input-field col s12">
                    <i class="mdi-action-lock-outline prefix"></i>
                    <input id="passwordAgain" type="password" name="passwordAgain" placeholder="Re-type password">
                </div>
            </div>
            <div class="row">
                <div class="input-field col s12">
                    <button class="btn waves-effect waves-light col s12">立刻注册</button>
                </div>
                <div class="input-field col s12">
                    <p class="margin center medium-small sign-up">已经有了账号? <a href="login.jsp">登录</a></p>
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