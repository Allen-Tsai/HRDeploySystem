<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2017/3/5
  Time: 21:03
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
    <script src="<%=basePath%>js/sweetalert.min.js"></script>
    <link rel="stylesheet" type="text/css" href="<%=basePath%>css/sweetalert.css">
    <script type="text/javascript" src="<%=basePath%>js/jquery-3.1.1.min.js"></script>
    <script>
        $(document).ready(function () {
            $("#tHead").css("background-color", "#1da1f2");
            $("tr").attr("bgColor", "#f7f8fa");//为单数行表格设置背景颜色
            $("tr:even").css("background-color", "#bce8f1");//为双数行表格设置背颜色素
        });

    </script>
    <script type="application/javascript">
        $(document).ready(function () {
            $("#addStaff").click(function () {
                $('#myPage').load('<%=basePath%>homePage/tables/addStaff.jsp');
            })
        });
    </script>
</head>
<body>
<div id="myDiv">
    <div class="container-fluid">
        <div class="row">
            <div class="col-md-12">
                <table class="table">
                    <thead>
                    <tr id="tHead">
                        <th>
                            员工工号
                        </th>
                        <th>
                            姓名
                        </th>
                        <th>
                            性别
                        </th>
                        <th>
                            出生年月
                        </th>
                        <th>
                            民族
                        </th>
                        <th>
                            籍贯
                        </th>
                        <th>
                            身份证号
                        </th>
                        <th>
                            电话号码
                        </th>
                        <th>
                            修改
                        </th>
                        <th>
                            删除
                        </th>
                    </tr>
                    </thead>
                    <tbody>
                    <c:forEach items="${staffList}" var="staff">
                        <tr>
                            <td>${staff.id}</td>
                            <td>${staff.name}</td>
                            <td>${staff.sex}</td>
                            <td>${staff.birth.toLocaleString().replaceAll("0:00:00","")}</td>
                            <td>${staff.nation}</td>
                            <td>${staff.locate}</td>
                            <td>${staff.iDnum}</td>
                            <td>${staff.tel}</td>
                            <th>
                                <a href="update/${staff.id}">修改</a>
                            </th>
                            <th>
                                <a id="deleteStaff" href="delete/${staff.id}">删除</a>
                            </th>
                        </tr>
                    </c:forEach>
                    </tbody>
                </table>
                <div class="row" align="right" style="margin-right: 20px">
                    <div class="container-fluid">
                        <div class="row">
                            <div class="col-md-12">
                                <a href="#" id="addStaff" type="button"
                                   class="btn btn-default">
                                    添加
                                </a>
                                <a href="#" type="button" class="btn btn-default" onclick="return confirm('确认删除吗？')">
                                    批量删除
                                </a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
</body>

</html>
