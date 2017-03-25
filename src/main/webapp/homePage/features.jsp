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
        <li class="active">系统功能</li>
    </ul>
</div>

<div class="container-fluid" style="margin-right: 20px;margin-left: 20px">
    <div class="row">
        <div class="col-md-12" style="background-color: #f0f8ff;padding: 40px 40px 50px 50px">
            <p>
                模块简介
            </p>
            <p>1、	信息查询模块</p>
            <p>2、	信息增加模块</p>
            <p>3、	信息删除模块</p>
            <p>4、	信息修改模块</p>
            <p>5、	智能匹配模块</p>
            <p>（1）、企业新员工的智能匹配</p>
            <p>（2）、企业老员工的评估与升迁</p>

            <br/>
            <p>公司部门信息表：</p>
            <table class="table">
                <thead>
                <tr id="tHead">
                    <th>
                        部门编号
                    </th>
                    <th>
                        部门名称
                    </th>
                    <th>
                        描述
                    </th>
                </tr>
                </thead>
                <tbody>
                <c:forEach items="${deptList}" var="dept">
                    <tr>
                        <td>${dept.id}</td>
                        <td>${dept.deptname}</td>
                        <td>${dept.deptid}</td>
                    </tr>
                </c:forEach>
                </tbody>
            </table>
        </div>
    </div>
</div>

</body>
</html>
