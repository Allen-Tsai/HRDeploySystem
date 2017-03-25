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
    <title>产品考核</title>
    <script src="<%=basePath%>js/sweetalert.min.js"></script>
    <link rel="stylesheet" type="text/css" href="<%=basePath%>css/sweetalert.css">
    <script type="text/javascript" src="<%=basePath%>js/jquery-3.1.1.min.js"></script>

    <script type="application/javascript">
        $(document).ready(function () {
            $("#3").addClass("active");
            $("#2").removeClass("active");
            $("#subOld3").click(function () {
                if ($("#dafen3").val() == "") {
                    swal("情检查是否有空缺项");
                } else {
                    $.post("<%=basePath%>addOld3", {
                            score3: $("#dafen3").val()
                        },
                        function (data) {
                            if (data) {
                                swal("智能匹配成功!", "已成功匹配到适配该员工的岗位和评级！", "success");
                                $("#myDiv").load("<%=basePath%>getRes2");
                            } else {
                                swal("智能匹配失败！", "系统未能查询到该员工！", "error");
                                <%--$("#myDiv").load("<%=basePath%>homePage/notFound.jsp");--%>
                            }
                        }, "text");
                }
            });
        });
    </script>
</head>
<body>

<span class="label label-default">绩效考核因素表3（产品考核）：</span>
<div class="form-group">
    <label>一次任务产品满意度</label>
    <br/>
    <input type="text" class="form-control" placeholder="请输入0%-100%之间的值"/>
</div>
<br/>
<br/>

<div class="form-group">
    <label for="dafen3">相关领导打分<span style="color:red;">*</span></label>
    <br/>
    <input type="text" class="form-control" id="dafen3" name="dafen3" placeholder="请输入1-10之间的分数"/>
</div>
<br/>
<br/>
<hr/>
<p>注：打“<span style="color:red;"> * </span>”的信息为必填项</p>
<div class="form-group">
    <a href="#" type="button" id="subOld3" class="btn btn-sm btn-success">提交</a>
</div>
</body>
</html>
