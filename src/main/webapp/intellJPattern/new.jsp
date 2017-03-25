<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
%>
<!DOCTYPE html>
<html lang="en">
<head>

    <script src="<%=basePath%>js/sweetalert.min.js"></script>
    <link rel="stylesheet" type="text/css" href="<%=basePath%>css/sweetalert.css">
    <meta charset="utf-8">
    <title>人力资源智能分配管理信息系统</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <%--加入jquery文件--%>
    <script type="text/javascript" src="<%=basePath%>js/jquery-3.1.1.min.js"></script>
    <link href="<%=basePath%>css/private.css" rel="stylesheet">
    <link href="<%=basePath%>css/default.css" rel="stylesheet">
    <!-- Loading Bootstrap -->
    <link href="<%=basePath%>css/mainPage/bootstrap.css" rel="stylesheet">
    <!-- Loading Stylesheets -->
    <link href="<%=basePath%>css/mainPage/style.css" rel="stylesheet">
    <style type="text/css">
        body {
            font-family: STFangSong, Helvetica, Arial, Vernada, Tahoma, STXihei, "Microsoft YaHei", "Songti SC", SimSun, Heiti, sans-serif;
        !important;
        }
    </style>
    <script type="application/javascript">
        $(document).ready(function () {
            $("a#subNew").click(function () {
                if ( $("#id").val() == "" || $("#major").val() == "" || $("#graduate").val() == "" ) {
                    swal("请确认是否有空缺项！");
                }else {
                    var qual = $('#xueli').find("option:selected").val();//学历
                    var category = $('#leibie').find("option:selected").val();//学历类别
                    var tm = Date.parse($("#time").val()+" 00:00:00");
                    var staffedu = {
                        "id": $("#id").val(),
                        "category": category,
                        "qual": qual,
                        "major": $("#major").val(),
                        "graduate": $("#graduate").val(),
                        "time": tm
                    };
                    $.ajax({
                        type: 'post',
                        url: '<%=basePath%>addEdu',
                        contentType: 'application/json;charset=utf-8',
                        data: JSON.stringify(staffedu),
                        success: function () {
                            swal("智能匹配成功！", "已查询到适配该员工的岗位和评级", "success");
                            $('#myDiv').load('<%=basePath%>getRes');
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
<body>

<div class="col-mod-12">
    <ul class="breadcrumb" style="background-color: floralwhite">
        <li><a href="#">智能匹配模块</a></li>
        <li class="active">新员工入职智能匹配</li>
    </ul>
</div>

<div class="container-fluid" style="margin-right: 20px;margin-left: 20px">
    <div class="row">
        <div class="col-md-12" style="background-color: #f0f8ff;padding: 40px 40px 50px 50px">
            <h3>新员工简历信息输入</h3>
            <hr/>
            <br/>
            <div class="form-group">
                <label for="id">员工工号<span style="color: red">*</span></label>
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
            <br/>
            <br/>
            <div class="form-group">
                <label for="graduate">毕业院校</label>
                <br/>
                <input type="text" class="form-control" id="graduate" name="graduate" placeholder="请输入员工毕业院校信息"/>
            </div>
            <br/><br/>
            <div class="form-group">
                <label for="time">毕业时间</label>
                <br/>
                <input type="text" class="form-control" id="time" name="time" placeholder="请输入员工毕业时间"/>
            </div>
            <br/><br/>
            <p>注：打“<span style="color:red;"> * </span>”的信息为必填项</p>
            <div class="form-group">
                <a type="button" href="#" id="subNew" class="btn btn-sm btn-success">查询匹配结果</a>
            </div>
        </div>
    </div>
</div>

</body>
</html>
