<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
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
    String basePath = request.getScheme() + "://" + request.getServerName()
            + ":" + request.getServerPort() + path + "/";
%>
<!DOCTYPE html>
<html lang="zh-CN">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- 上述3个meta标签*必须*放在最前面，任何其他内容都*必须*跟随其后！ -->
    <title>编辑操作</title>

    <link rel="stylesheet" href="<%=basePath%>css/default.css">
    <!-- 新 Bootstrap 核心 CSS 文件 -->
    <link rel="stylesheet" href="//cdn.bootcss.com/bootstrap/3.3.5/css/bootstrap.min.css">

    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
    <script src="//cdn.bootcss.com/html5shiv/3.7.2/html5shiv.min.js"></script>
    <script src="//cdn.bootcss.com/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->
    <script type="text/javascript">
        $(document).ready(function () {
            $('a#sub').click(function () {
//                alert("23");
                <%--$.ajax(--%>
                <%--{--%>
                <%--type: "POST",--%>
                <%--url: "/HRDeploySystem/add",--%>
                <%--contentType: "application/json", //必须有--%>
                <%--dataType: "json",--%>
                <%--data: JSON.stringify({--%>
                <%--id: $("#id").val(),--%>
                <%--name: $("#name").val(),--%>
                <%--sex: $("#sex").val(),--%>
                <%--birth: $("#birth").val(),--%>
                <%--nation: $("#nation").val(),--%>
                <%--locate: $("#locate").val(),--%>
                <%--iDnum: $("#iDnum").val(),--%>
                <%--tel: $("#tel").val()--%>
                <%--}),--%>
                <%--success: function () {--%>
                <%--alert("数据添加成功！");--%>
                <%--},--%>
                <%--error: function () {--%>
                <%--alert("数据添加失败！");--%>
                <%--}--%>
                <%--}--%>
                <%--)--%>
            })
        })
    </script>
</head>
<body>
<div class="container">
    <h1>编辑员工信息</h1>
    <form:form action="ud" method="post">
        <div class="form-group">
            <label for="id">员工工号</label>
            <input type="text" class="form-control" id="id" name="id" placeholder="${staff.id}"/>
        </div>
        <div class="form-group">
            <label for="name">员工姓名</label>
            <input type="text" class="form-control" id="name" name="name" placeholder="${staff.name}"/>
        </div>
        <div class="form-group">
            <label for="sex">员工性别</label>
            <input type="text" class="form-control" id="sex" name="sex" placeholder="${staff.sex}"/>
        </div>
        <div class="form-group">
            <label>出生年月</label>
            <br/>
            <select id="year">
                <%
                    for (int i = 1950; i < 2010; i++) {
                %>
                <option><%=i%>
                </option>
                <%
                    }
                %>
            </select>年
            <select id="month">
                <%
                    for (int i = 1; i < 13; i++) {
                %>
                <option><%=i%>
                </option>
                <%
                    }
                %>
            </select>月
            <select id="date">
                <%
                    for (int i = 1; i < 32; i++) {
                %>
                <option><%=i%>
                </option>
                <%
                    }
                %>
            </select>日
        </div>

        <input type="hidden" id="birth" name="birth" value="1950-1-1 00:00:00"/>
        <div class="form-group">
            <label for="nation">民族</label>
            <input type="text" class="form-control" id="nation" name="nation" placeholder="${staff.nation}"/>
        </div>
        <div class="form-group">
            <label for="locate">籍贯</label>
            <input type="text" class="form-control" id="locate" name="locate" placeholder="${staff.locate}"/>
        </div>

        <div class="form-group">
            <label for="iDnum">身份证号</label>
            <input type="text" class="form-control" id="iDnum" name="iDnum" placeholder="${staff.iDnum}"/>
        </div>
        <div class="form-group">
            <label for="tel">手机号</label>
            <input type="text" class="form-control" id="tel" name="tel" placeholder="${staff.tel}"/>
        </div>
        <div class="form-group">
            <button type="submit" id="sub" class="btn btn-sm btn-success">提交</button>
        </div>
    </form:form>
</div>
</body>

</html>
