<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2017/3/10
  Time: 23:32
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Spring MVC</title>
    <%
        String path = request.getContextPath();
        String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
    %>

    <script src="<%=basePath%>js/sweetalert.min.js"></script>
    <link rel="stylesheet" type="text/css" href="<%=basePath%>css/sweetalert.css">
    <script type="text/javascript" src="js/jquery-3.1.1.min.js"></script>
    <script type="text/javascript">
        function requestByJson() {
            var obj = {
                "email": $("#email").val(),
                "username": $("#username").val(),
                "password": $("#password").val()
            };
            <%--$.ajax({--%>
                <%--type: 'post',--%>
                <%--url: '<%=basePath%>jsonSource',--%>
                <%--//contentType: 'application/x-www-form-urlencoded;charset=utf-8',--%>
                <%--data: JSON.stringify(obj),--%>
                <%--success: function (data) {--%>
                    <%--alert("成功！！！" + data.email);--%>
                <%--},--%>
                <%--error: function (XMLHttpRequest, textStatus, errorThrown) {--%>
                    <%--alert(XMLHttpRequest.status + " " + XMLHttpRequest.readyState +--%>
                        <%--"error code:" + textStatus + ", error msg:" + errorThrown + "error");--%>
                <%--}--%>
            <%--});--%>
            $.post("<%=basePath%>jsonSource", {email: $('#email').val(),
                    username: $('#username').val(),password:$("#password").val()},
                function (data) {
                    //$('#msg').html("please enter the email!");
                    //alert(data);
                    alert(data);
                }, "text");//这里返回的类型有：json,html,xml,text
        }
    </script>
</head>
<body>
<%--<form>--%>
<%--<div id="info"></div>--%>
邮箱：<input type="text" id="email" name="email"/>
姓名：<input type="text" id="username" name="username"/>
密码：<input type="text" id="password" name="password"/>

<input type="button" value="提交" onclick="requestByJson()"/>
<%--</form>--%>
</body>
</html>