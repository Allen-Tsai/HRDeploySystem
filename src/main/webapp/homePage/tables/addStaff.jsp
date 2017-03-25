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
    <!-- 上述3个meta标签*必须*放在最前面，任何其他内容都*必须*跟随其后！ -->
    <title>添加操作</title>
    <![endif]-->
    <script type="text/javascript">
        $("#addS").click(function () {
            if ($("#id").val() == "" || $("#name").val() == "" || $("#nation").val() == ""
                || $("#locate").val() == "" || $("#iDnum").val() == "" || $("#tel").val() == "") {
                swal("请确认是否有空缺项！");
            } else {
                var sex = $('input:radio:checked').val();

                var birth = $("#year").find("option:selected").val() + " " +
                    $("#month").find("option:selected").val() + " " +
                    $("#date").find("option:selected").val() + " 00:00:00";
                var datetime = Date.parse(birth);
                var staff = {
                    "id": $("#id").val(),
                    "name": $("#name").val(),
                    "sex": sex,
                    "birth": datetime,
                    "nation": $("#nation").val(),
                    "locate": $("#locate").val(),
                    "iDnum": $("#iDnum").val(),
                    "tel": $("#tel").val()
                };
                $.ajax({
                    type: 'post',
                    url: '<%=basePath%>homePage/tables/add',
                    contentType: 'application/json;charset=utf-8',
                    data: JSON.stringify(staff),
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
    <h1>添加员工</h1>
    <hr/>
    <div class="form-group">
        <label for="id">员工工号</label>
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
    <br/><br/>
    <div class="form-group">
        <label>员工性别</label>
        <br/>
        <label><input name="sex" value="男" type="radio" checked="checked"/>男 </label>
        <label><input name="sex" value="女" type="radio"/>女 </label>
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
    <div class="form-group">
        <label for="nation">民族</label>
        <br/>
        <input type="text" class="form-control" id="nation" name="nation" placeholder="请输入员工民族信息"/>
    </div>
    <br/><br/>
    <div class="form-group">
        <label for="locate">籍贯</label>
        <br/>
        <input type="text" class="form-control" id="locate" name="locate" placeholder="请输入员工籍贯信息"/>
    </div>
    <br/><br/>
    <div class="form-group">
        <label for="iDnum">身份证号</label>
        <br/>
        <input type="text" class="form-control" id="iDnum" name="iDnum" placeholder="请输入员工身份证号"/>
    </div>
    <br/><br/>
    <div class="form-group">
        <label for="tel">手机号</label>
        <br/>
        <input type="text" class="form-control" id="tel" name="tel" placeholder="请输入员工手机号"/>
    </div>
        <br/>
        <hr/>
    <div class="form-group">
        <button type="button" id="addS" class="btn btn-sm">提交</button>
    </div>
</div>
</body>

</html>
