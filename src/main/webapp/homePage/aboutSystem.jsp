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
<body>

<div class="col-mod-12">
    <ul class="breadcrumb" style="background-color: floralwhite">
        <li><a href="#">关于系统</a></li>
        <li class="active">系统介绍</li>
    </ul>
</div>

<div class="container-fluid" style="margin-right: 20px;margin-left: 20px">
    <div class="row">
        <div class="col-md-12" style="background-color: #f0f8ff;padding: 40px 40px 50px 50px">
            <p>
                系统实现的功能是：基于一般人力资源管理信息系统，强调对企业新应聘的员工进行智能岗位分配；强调对企业老员工进行能力与业绩评估，
                以此决定老员工的升降离职与薪资水平。</p>
            <p> 一般人力资源信息系统：</p>
            <p>（1）人员信息管理：对企业所有员工的基础信息管理，包括信息的录入、修改与删除（离职）。基本信息：包括工号、姓名、性别、出生年月、籍贯、联系方式等。
                学历信息：包括学历类别、学历、专业、毕业院校、获得时间等。岗位信息：具体岗位、定岗时间、薪资待遇。</p>
            <p>（2）人员异动管理:记录人员调动情况，将员工之前所属单位、岗位、级别、职务等所有个人信息保存至数据库、以便将来需要查询。
                在应用层应显示员工最新的单位等个人信息。</p>
            <p>（3）学历管理：记录员工的学历状况，在获得新的学历后可以更新员工的学历状况，并将原学历保存至数据库保存，方便查询员工各时期的学历状况。

            </p>
            <br/>
            <p>本系统新增模块：智能匹配模块</p>
            <p>（1）、企业新员工的智能匹配</p>
            <p>（2）、企业老员工的评估与升迁</p>

        </div>
    </div>
</div>

</body>
</html>
