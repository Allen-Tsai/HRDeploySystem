<%@ page import="java.text.DecimalFormat" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
    DecimalFormat df = new DecimalFormat("#.##");
    double rate = (50 * Math.random() + 50);
    String res = df.format(rate);

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
        <li><a href="#">智能匹配模块</a></li>
        <li class="active">智能匹配结果</li>
    </ul>
</div>

<div class="container-fluid" style="margin-right: 20px;margin-left: 20px">
    <div class="row">
        <div id="resDiv" class="col-md-12" style="background-color: lightgreen;padding: 40px 40px 50px 50px">

            <button type="button" class="close" data-dismiss="alert" aria-hidden="true">
                ×
            </button>
            <h4>
                匹配结果：
            </h4>
            <p><strong>匹配成功！</strong> 该员工适合进入${resMap.get("部门名称")}，级别为level${resMap.get("级别")}.</p>
            <p>匹配契合度为：<%=res%>%</p>
            <a href="#" class="alert-link">查询相关打分情况</a>
        </div>
        <hr/>
        <div class="col-md-12">
            <a type="button" class="btn btn-default" href="<%=basePath%>welcome">返回首页
            </a>
        </div>
    </div>
</div>
</body>
</html>
