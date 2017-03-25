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
            font-family: STFangSong, Helvetica, Arial, Vernada, Tahoma, STXihei, "Microsoft YaHei", "Songti SC", SimSun, Heiti, sans-serif;!important;
        }
    </style>
    <script src="<%=basePath%>js/sweetalert.min.js"></script>
    <link rel="stylesheet" type="text/css" href="<%=basePath%>css/sweetalert.css">
    <script type="application/javascript">
        $("#here").click(function () {
            swal({
                title: "chl科技有限公司",
                text: '我劝你停止装逼，你也不看看这是谁的天下',
                imageUrl: "<%=basePath%>images/zhuangbi.jpg",
                html: true,
                timer: 5000,
                showConfirmButton: false
            });
        });
    </script>
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
                <button id="here">点这里，教你怎么用</button>
            </p>
        </div>
    </div>
</div>

</body>
</html>
