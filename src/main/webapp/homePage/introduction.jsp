<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <title>人力资源智能分配管理信息系统</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <%--加入jquery文件--%>
    <script type="text/javascript" src="<%=basePath%>js/jquery-3.1.1.min.js"></script>
    <link href="<%=basePath%>css/private.css" rel="stylesheet">
    <link href="<%=basePath%>css/default.css" rel="stylesheet">
    <!-- Loading Bootstrap -->
    <link href="<%=basePath%>css/mainPage/bootstrap.css" rel="stylesheet">
    <!-- Loading Stylesheets -->
    <link href="<%=basePath%>css/mainPage/style.css" rel="stylesheet">
    <style type="text/css">
        body {
            font-family: STFangSong, Helvetica, Arial, Vernada, Tahoma, STXihei, "Microsoft YaHei", "Songti SC", SimSun, Heiti, sans-serif;
        !important;
        }
    </style>
<body>

<div class="col-mod-12">
    <ul class="breadcrumb" style="background-color: floralwhite">
        <li><a href="#">帮助</a></li>
        <li class="active">使用指南</li>
    </ul>
</div>

<div class="container-fluid" style="margin-right: 20px;margin-left: 20px">
    <div class="row">
        <div class="col-md-12" style="background-color: #f0f8ff;padding: 40px 40px 50px 50px">
            <p>
                欢迎登录<a href="http://101.37.35.221">gossip</a>了解作者的详细信息！
            </p>
            <p>qq:1622546034</p>
            <p>tel:15094315696</p>
        </div>
    </div>
</div>

</body>
</html>
