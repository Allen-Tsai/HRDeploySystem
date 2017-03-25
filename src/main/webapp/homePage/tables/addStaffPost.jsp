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
    <script src="<%=basePath%>js/sweetalert.min.js"></script>
    <link rel="stylesheet" type="text/css" href="<%=basePath%>css/sweetalert.css">
    <script type="text/javascript" src="<%=basePath%>js/jquery-3.1.1.min.js"></script>

    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- 上述3个meta标签*必须*放在最前面，任何其他内容都*必须*跟随其后！ -->
    <title>添加操作</title>

    <script type="text/javascript">
        $("#addStaffPost").click(function () {
            if ($("#id").val() == "" || $("#zhiwu").val() == "" || $("#salary").val() == "") {
                swal("请确认是否有空缺项！");
            } else {
                var post = $('#gangwei').find("option:selected").val();//学历
                var level = $('#lv').find("option:selected").val();//学历类别
                var et = Date.parse($("#entryTime").val());
                var staffPost = {
                    "id": $("#id").val(),
                    "post": post,
                    "rank": level,
                    "payroll": $("#zhiwu").val(),
                    "entrytime": et,
                    "salary": $("#salary").val()
                };
                $.ajax({
                    type: 'post',
                    url: '<%=basePath%>addPost',
                    contentType: 'application/json;charset=utf-8',
                    data: JSON.stringify(staffPost),
                    success: function () {
                        swal("操作成功!", "已成功添加数据！", "success");
                        $('#myPage').load('<%=basePath%>homePage/success.jsp');
                    },
                    error: function (XMLHttpRequest, textStatus, errorThrown) {
                        alert(XMLHttpRequest.status);
                        alert(XMLHttpRequest.readyState);
                        alert(textStatus);
                        alert(errorThrown);
                    }
                })
            }
        });
    </script>
</head>
<body>
<div class="container">
    <h1>添加员工岗位信息</h1>
    <hr/>
    <div class="form-group">
        <label for="id">员工工号<span style="color: red">*</span></label>
        <br/>
        <input type="text" class="form-control" id="id" name="id" placeholder="请输入员工工号"/>
    </div>
    <br/><br/>
    <div class="form-group">
        <label>员工岗位<span style="color: red">*</span></label>
        <br/>
        <select id="gangwei">
            <option value="研发技术部">研发技术部</option>
            <option value="市场营销部">市场营销部</option>
            <option value="人力资源部">人力资源部</option>
            <option value="财务审计部">财务审计部</option>
            <option value="售后服务部">售后服务部</option>
        </select>
    </div>
    <div class="form-group">
        <label>员工级别<span style="color: red">*</span></label>
        <br/>
        <select id="lv">
            <option value="level1">level1</option>
            <option value="level2">level2</option>
            <option value="level3">level3</option>
            <option value="level4">level4</option>
            <option value="level5">level5</option>
            <option value="level6">level6</option>
            <option value="level7">level7</option>
        </select>
    </div>
    <div class="form-group">
        <label for="zhiwu">员工职务<span style="color: red">*</span> </label>
        <br/>
        <input type="text" class="form-control" id="zhiwu" name="zhiwu" placeholder="请输入员工职务信息"/>
    </div>
    <br/><br/>
    <div class="form-group">
        <label for="entryTime">入职时间</label>
        <br/>
        <input type="text" class="form-control" id="entryTime" name="entryTime" placeholder="请输入员工入职时间"/>
    </div>
    <br/><br/>
    <div class="form-group">
        <label for="salary">薪资</label>
        <br/>
        <input type="text" class="form-control" id="salary" name="salary" placeholder="请输入员工薪资(元/月)"/>
    </div>
    <br/>
    <hr/>
    <div class="form-group">
        <button type="button" id="addStaffPost" class="btn btn-sm btn-success">提交</button>
    </div>
</div>
</body>

</html>
