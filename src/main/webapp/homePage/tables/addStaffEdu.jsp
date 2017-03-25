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
    <title>添加操作</title>
    <style type="text/css">
        body {
            font-family: STFangSong, Helvetica, Arial, Vernada, Tahoma, STXihei, "Microsoft YaHei", "Songti SC", SimSun, Heiti, sans-serif;
        !important;
        }
    </style>
    <script type="text/javascript">
        $(document).ready(function () {
            $("#addStaffEdu").click(function () {
                if ($("#id").val() == "" || $("#major").val() == "" || $("#graduate").val() == "") {
                    swal("请确认是否有空缺项！");
                } else {
                    var qual = $('#xueli').find("option:selected").val();//学历
                    var category = $('#leibie').find("option:selected").val();//学历类别
                    var graduateTime = Date.parse($("#graduateTime").val());
                    var staffedu = {
                        "id": $("#id").val(),
                        "category": category,
                        "qual": qual,
                        "major": $("#major").val(),
                        "graduate": $("#graduate").val(),
                        "time": graduateTime
                    };
                    $.ajax({
                        type: 'post',
                        url: '<%=basePath%>addEdu',
                        contentType: 'application/json;charset=utf-8',
                        data: JSON.stringify(staffedu),
                        success: function () {
                            swal("操作成功!", "已成功添加数据！", "success");
                            $('#myPage').load('<%=basePath%>homePage/success.jsp');
                        },
                        error: function (XMLHttpRequest, textStatus, errorThrown) {
                            swal(XMLHttpRequest.status + " " + XMLHttpRequest.readyState,
                                "error code:" + textStatus + ", error msg:" + errorThrown, "error");
                        }
                    })
                }
            });
        });
    </script>
</head>
<body>
<div class="container">
    <h1>添加员工学历信息</h1>
    <hr/>
    <div class="form-group">
        <label for="id">员工工号<span style="color: red">*</span></label>
        <br/>
        <input type="text" class="form-control" id="id" name="id" placeholder="请输入员工工号"/>
    </div>
    <br/><br/>
    <div class="form-group">
        <label>员工学历<span style="color: red">*</span></label>
        <br/>
        <select id="xueli">
            <option value="专科">专科</option>
            <option value="本科">本科</option>
            <option value="硕士">硕士</option>
            <option value="博士">博士</option>
        </select>
    </div>

    <div class="form-group">
        <label>学历类别<span style="color: red">*</span></label>
        <br/>
        <select id="leibie">
            <option value="理工类">理工类</option>
            <option value="经济管理类">经济管理类</option>
            <option value="其他">其他</option>
        </select>
    </div>
    <div class="form-group">
        <label for="major">专业<span style="color: red">*</span> </label>
        <br/>
        <input type="text" class="form-control" id="major" name="major" placeholder="请输入员工专业信息"/>
    </div>
    <br/><br/>
    <div class="form-group">
        <label for="graduate">毕业院校</label>
        <br/>
        <input type="text" class="form-control" id="graduate" name="graduate" placeholder="请输入员工毕业院校信息"/>
    </div>
    <br/><br/>
    <div class="form-group">
        <label for="graduateTime">毕业时间</label>
        <br/>
        <input type="text" class="form-control" id="graduateTime" name="graduateTime" placeholder="请输入员工毕业时间"/>
    </div>
    <br/>
    <hr/>
    <div class="form-group">
        <button type="button" id="addStaffEdu" class="btn btn-sm">提交</button>
    </div>
</div>
</body>

</html>
