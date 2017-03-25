<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2017/3/17
  Time: 15:03
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
%>

<html>
<head>
    <title>能力考核</title>
    <script src="<%=basePath%>js/sweetalert.min.js"></script>
    <link rel="stylesheet" type="text/css" href="<%=basePath%>css/sweetalert.css">
    <script type="text/javascript" src="<%=basePath%>js/jquery-3.1.1.min.js"></script>

    <script type="application/javascript">
        $(document).ready(function () {
            $("#2").addClass("active");
            $("#1").removeClass("active");
            $("#3").removeClass("active");
            $("#subOld2").click(function () {
                $.post("<%=basePath%>addOld2", {score2: $("#dafen2").val()},
                    function () {
                        swal("员工能力考核数据提交成功！");
                        $("#tableDiv").load("<%=basePath%>intellJPattern/pro.jsp");
                    }, "text");

            });
        });

    </script>
</head>
<body>

<span class="label label-default">绩效考核因素表2（能力考核）：</span>
<div class="form-group">
    <label>任务次数</label>
    <br/>
    <input type="text" class="form-control" placeholder="次"/>
</div>
<br/>
<br/>
<div class="form-group">
    <label>一次任务难度<span style="color:red;"> * </span></label>
    <br/>
    <input type="text" class="form-control" placeholder="输入0-100之间的值"/>
</div>
<br/>
<br/>
<div class="form-group">
    <label>一次任务产品达成率<span style="color:red;"> * </span></label>
    <br/>
    <input type="text" class="form-control" placeholder="输入0%-100%之间的值"/>
</div>
<br/>
<br/>
<div class="form-group">
    <label>一次任务时间成本<span style="color:red;"> * </span></label>
    <br/>
    <input type="text" class="form-control" placeholder="元"/>
</div>
<br/>
<br/>
<div class="form-group">
    <label>一次任务金钱成本<span style="color:red;"> * </span></label>
    <br/>
    <input type="text" class="form-control" placeholder="元"/>
</div>

<br/>
<br/>
<div class="form-group">
    <label for="dafen2">相关领导打分<span style="color:red;">*</span></label>
    <br/>
    <input type="text" class="form-control" id="dafen2" name="dafen2" placeholder="请输入1-10之间的分数"/>
</div>
<br/><br/>
<hr/>
<p>注：打“<span style="color:red;"> * </span>”的信息为必填项</p>
<div class="form-group">
    <a href="#" type="button" id="subOld2" class="btn btn-sm btn-success">提交</a>
</div>
</body>
</html>
