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
    <script src="<%=basePath%>js/sweetalert.min.js"></script>
    <link rel="stylesheet" type="text/css" href="<%=basePath%>css/sweetalert.css">
    <script type="text/javascript" src="<%=basePath%>js/jquery-3.1.1.min.js"></script>

    <title>态度考核</title>
    <script type="application/javascript">
        $(document).ready(function () {
            $("#1").addClass("active");
            $("#2").removeClass("active");
            $("#3").removeClass("active");

            $("#subOld1").click(function () {
                if ($('#id').val() == "" || $("#dafen1").val() == "") {
                    swal("请检查是否有空缺项");
                } else {
                    $.post("<%=basePath%>addOld1",
                        {
                            id: $('#id').val(),
                            score1: $("#dafen1").val()
                        },
                        function (data) {
                            swal("员工态度考核数据提交成功！")
                            $("#tableDiv").load("<%=basePath%>intellJPattern/abb.jsp");
                        });
                }
            });
        });
    </script>
</head>
<body>

<span class="label label-default">绩效考核因素表1（态度考核）：</span>
<div class="form-group">
    <label for="id">员工工号<span style="color:red;"> * </span></label>
    <br/>
    <input type="text" class="form-control" id="id" name="id" placeholder="请输入员工工号"/>
</div>
<br/>
<br/>
<div class="form-group">
    <label for="name">员工姓名</label>
    <br/>
    <input type="text" class="form-control" id="name" name="name" placeholder="请输入员工姓名"/>
</div>
<br/>
<br/>
<div class="form-group">
    <label>延期上交产品次数</label>
    <br/>
    <select id="yanqi">
        <option>0</option>
        <option>1-5</option>
        <option>6-10</option>
        <option>>10</option>
    </select>
</div>
<div class="form-group">
    <label>未上交产品次数</label>
    <br/>
    <select id="wei">
        <option>0</option>
        <option>1-5</option>
        <option>6-10</option>
        <option>>10</option>
    </select>
</div>

<div class="form-group">
    <label for="a">考勤违纪总次数</label>
    <br/>
    <input type="text" class="form-control" id="a" name="a" placeholder="次"/>
</div>
<br/>
<br/>
<div class="form-group">
    <label for="dafen1">相关领导打分<span style="color:red;">*</span> </label>
    <br/>
    <input type="text" class="form-control" id="dafen1" name="dafen1" placeholder="请输入1-10之间的分数"/>
</div>
<br/><br/>
<hr/>
<p>注：打“<span style="color:red;"> * </span>”的信息为必填项</p>
<div class="form-group">
    <a href="#" type="button" id="subOld1" class="btn btn-sm btn-success">提交</a>
</div>
</body>
</html>
