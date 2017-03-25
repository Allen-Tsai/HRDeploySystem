<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
%>
<html>
<head>
    <title>Title</title>
    <link href="<%=basePath%>css/mainPage/bootstrap.css" rel="stylesheet">
    <link href="<%=basePath%>css/mainPage/style.css" rel="stylesheet">
    <!-- Loading Stylesheets -->
</head>
<body>
<div class="col-mod-12">
    <ul class="breadcrumb" style="background-color: floralwhite">
        <li><a href="#">基本模块</a></li>
        <li class="active">数据查询</li>
    </ul>
</div>
<div id="myDiv">
    <div class="container-fluid">
        <div class="row">
            <div class="col-md-12">
                <table class="table">
                    <thead>
                    <tr id="tHead" style="background-color: #1da1f2">
                        <th>
                            员工工号
                        </th>
                        <th>
                            姓名
                        </th>
                        <th>
                            性别
                        </th>
                        <th>
                            出生年月
                        </th>
                        <th>
                            身份证号
                        </th>
                        <th>
                            电话号码
                        </th>
                        <th>
                            专业
                        </th>
                        <th>
                            毕业院校
                        </th>
                        <th>
                            毕业时间
                        </th>
                        <th>
                            岗位
                        </th>
                        <th>
                            级别
                        </th>
                        <th>
                            职务
                        </th>
                        <th>
                            入职时间
                        </th>
                        <th>
                            薪资
                        </th>
                    </tr>
                    </thead>
                    <tbody>
                    <tr style="background-color: #f7f8fa">
                        <td>${staff.id}</td>
                        <td>${staff.name}</td>
                        <td>${staff.sex}</td>
                        <td>${staff.birth.toLocaleString().replaceAll("0:00:00","")}</td>
                        <td>${staff.iDnum}</td>
                        <td>${staff.tel}</td>
                        <td>${staffEdu.major}</td>
                        <td>${staffEdu.graduate}</td>
                        <td>${staffEdu.time.toLocaleString().replaceAll("0:00:00","")}</td>
                        <td>${staffPost.post}</td>
                        <td>${staffPost.rank}</td>
                        <td>${staffPost.payroll}</td>
                        <td>${staffPost.entrytime.toLocaleString().replaceAll("0:00:00","")}</td>
                        <td>${staffPost.salary}</td>
                    </tr>
                    </tbody>
                </table>
                <div class="row" align="right" style="margin-right: 20px">
                    <div class="container-fluid">
                        <div class="row">
                            <div class="col-md-12">
                                <a href="<%=basePath%>welcome" type="button"
                                   class="btn btn-default">
                                    返回
                                </a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<div id="myPage">
</div>
</body>
</html>
