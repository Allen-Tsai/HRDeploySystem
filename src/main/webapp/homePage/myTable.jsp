<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2017/3/5
  Time: 13:35
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
%>
<html>
<head>
    <title>Title</title>
    <link href="<%=basePath%>css/mainPage/bootstrap.css" rel="stylesheet">
    <link href="<%=basePath%>css/mainPage/style.css" rel="stylesheet">
    <style type="text/css">
        body {
            font-family: STFangSong, Helvetica, Arial, Vernada, Tahoma, STXihei, "Microsoft YaHei", "Songti SC", SimSun, Heiti, sans-serif;!important;
        }
    </style>
<!-- Loading Stylesheets -->
    <script>
        $(document).ready(function () {
            $('#myPage').load('<%=basePath%>homePage/staffs');
            $('#mySelect').change(function () {
                switch (this.selectedIndex){
                    case 0:
                        $('#myPage').load('<%=basePath%>homePage/staffs');
                        break;
                    case 1:
                        $('#myPage').load('<%=basePath%>homePage/staffEdu');
                        break;
                    case 2:
                        $('#myPage').load('<%=basePath%>homePage/staffPost');
                        break;
                }
            });
//            $('.field').change(function () {
//                alert(123);
//                if( $('#staff').selected){
//                    alert(123)
//                    $('#myPage').load('tables/staff.jsp');
//                }
//                $('#staffedu').selected(function () {
//                    $('#myPage').load('tables/staffEdu.jsp');
//                });
//                $('#staffpost').selected(function () {
//                    $('#myPage').load('tables/staffPost.jsp');
//                });
//            });
        });
    </script>
</head>
<body>
<div class="col-mod-12">
    <ul class="breadcrumb" style="background-color: floralwhite">
        <li><a href="#">基本模块</a></li>
        <li class="active">数据浏览</li>
        <span style="margin-left: 730px">请选择数据表：
            <select id="mySelect">
                <option value="1">员工基本信息表</option>
                <option value="2">员工学历信息表</option>
                <option value="3">员工岗位信息表</option>
            </select></span>
    </ul>
</div>
<div id="myPage">
</div>
</body>
</html>
