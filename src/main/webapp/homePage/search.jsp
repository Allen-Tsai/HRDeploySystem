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
    <script src="<%=basePath%>js/sweetalert.min.js"></script>
    <link rel="stylesheet" type="text/css" href="<%=basePath%>css/sweetalert.css">
    <script type="text/javascript" src="<%=basePath%>js/jquery-3.1.1.min.js"></script>

    <link href="<%=basePath%>css/mainPage/bootstrap.css" rel="stylesheet">
    <link href="<%=basePath%>css/mainPage/style.css" rel="stylesheet">
    <!-- Loading Stylesheets -->
    <style type="text/css">
        body {
            font-family: STFangSong, Helvetica, Arial, Vernada, Tahoma, STXihei, "Microsoft YaHei", "Songti SC", SimSun, Heiti, sans-serif;
        !important;
        }
    </style>
    <script type="application/javascript">
        $(document).ready(function () {
            $("#searchBtn").click(function () {
//                var id = $('#id').val();
                $.post("<%=basePath%>search", {id: $('#id').val()},
                    function (data) {
                        if (data) {
                            swal("操作成功!", "已成功查询到数据！", "success");
                            $("#myDiv").load("<%=basePath%>homePage/getResult");
                        } else {
                            swal("操作失败！", "未能查询到数据！", "error");
                            $("#myDiv").load("<%=basePath%>homePage/notFound.jsp");
                        }
                    }, "text");//这里返回的类型有：json,html,xml,text
            });
        });

        <%--$.ajax({--%>
        <%--url: '<%=basePath%>search',--%>
        <%--data: '{"id":"'+id+'"}' ,--%>
        <%--contentType: 'application/json;charset=utf-8',--%>
        <%--success: function (data) {--%>
        <%--if (data.result == null) {--%>
        <%--swal("查询失败！","未能找到查询数据！","error");--%>
        <%--$('#myDiv').load('<%=basePath%>homePage/notFound.jsp');--%>
        <%--} else {--%>
        <%--swal(data.result);--%>
        <%--$("#myDiv").load("<%=basePath%>homePage/getResult.jsp");--%>
        <%--}--%>
        <%--},--%>
        <%--error: function (XMLHttpRequest, textStatus, errorThrown) {--%>
        <%--swal(XMLHttpRequest.status + " " + XMLHttpRequest.readyState,--%>
        <%--"error code:" + textStatus + ", error msg:" + errorThrown, "error");--%>
        <%--$('#myDiv').load('<%=basePath%>homePage/notFound.jsp');--%>
        <%--}--%>
        <%--})--%>

    </script>
</head>
<body>
<div class="col-mod-12">
    <ul class="breadcrumb" style="background-color: floralwhite">
        <li><a href="#">基本模块</a></li>
        <li class="active">数据查询</li>
    </ul>
</div>
<div class="container-fluid">
    <div class="row">
        <div class="col-md-12">
            <nav class="navbar navbar-default" role="navigation">

                <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                    <ul class="nav navbar-nav">
                        <form class="navbar-form navbar-left" role="search">
                            <div class="form-group">
                                <input type="text" id="id" name="id" style="width: 200px;padding-left: 10px"
                                       class="form-control" placeholder="请输入员工工号以查询"/>
                            </div>
                            <button id="searchBtn" type="button" class="btn btn-default">查询</button>
                        </form>
                    </ul>
                </div>
            </nav>
        </div>
    </div>
</div>
</body>
</html>
