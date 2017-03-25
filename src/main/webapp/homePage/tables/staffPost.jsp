<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2017/3/5
  Time: 21:03
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <%
        String path = request.getContextPath();
        String basePath = request.getScheme() + "://" + request.getServerName()
                + ":" + request.getServerPort() + path + "/";
    %>
    <script>
        $(document).ready(function () {
            $("#addPost").click(function () {
                $('#myPage').load('<%=basePath%>homePage/tables/addStaffPost.jsp');
            });
            $("tr").attr("bgColor", "#f7f8fa");//为单数行表格设置背景颜色
            $("tr:even").css("background-color", "#bce8f1");//为双数行表格设置背颜色素
        })
    </script>
</head>
<body>
<div class="container-fluid">
    <div class="row">
        <div class="col-md-12">
            <table class="table">
                <thead>
                <tr style="background-color: #1da1f2">
                    <th>
                        员工工号
                    </th>
                    <th>
                        岗位
                    </th>
                    <th>
                        级别
                    </th>
                    <th>
                        职务
                    </th>
                    <th>
                        入职时间
                    </th>
                    <th>
                        薪资
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
                <c:forEach items="${staffPostList}" var="staffPost">
                    <tr>
                        <td>${staffPost.id}</td>
                        <td>${staffPost.post}</td>
                        <td>${staffPost.rank}</td>
                        <td>${staffPost.payroll}</td>
                        <td>${staffPost.entrytime.toLocaleString().replaceAll("0:00:00","")}</td>
                        <td>${staffPost.salary}</td>
                        <th>
                            <a href="#">修改</a>
                        </th>
                        <th>
                            <a href="#">删除</a>
                        </th>
                    </tr>
                </c:forEach>
                </tbody>
            </table>
            <div class="row" align="right" style="margin-right: 20px">
                <div class="container-fluid">
                    <div class="row">
                        <div class="col-md-12">
                            <a href="#" id="addPost" type="button" class="btn btn-default">
                                添加
                            </a>
                            <button type="button" class="btn btn-default">
                                批量删除
                            </button>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
</body>

</html>
