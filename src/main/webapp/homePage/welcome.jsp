<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2017/3/4
  Time: 23:51
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <title>人力资源智能分配管理信息系统</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <%--加入jquery文件--%>
    <script type="text/javascript" src="<%=basePath%>js/jquery-3.1.1.min.js"></script>
    <link href="<%=basePath%>css/private.css" rel="stylesheet">
    <!-- Loading Bootstrap -->
    <link href="<%=basePath%>css/mainPage/bootstrap.css" rel="stylesheet">
    <!-- Loading Stylesheets -->
    <link href="<%=basePath%>css/mainPage/style.css" rel="stylesheet">
    <link href="<%=basePath%>css/sweetalert.css" rel="stylesheet">
    <script type="application/javascript" rel="<%=basePath%>js/sweetalert.min.js"></script>
    <script type="text/javascript">
        $(document).ready(function () {
            $("a#sysIntro").click(function () {
                $('#myDiv').load('<%=basePath%>homePage/aboutSystem.jsp');
            });

            $("a#add").click(function () {
                $('#myDiv').load('<%=basePath%>homePage/myTable.jsp');
            });
            $("a#sysFeature").click(function () {
                $('#myDiv').load('<%=basePath%>homePage/features');
            });
            $("a#update").click(function () {
                $('#myDiv').load('<%=basePath%>homePage/search.jsp');
            });
            $("a#search").click(function () {
                $('#myDiv').load('<%=basePath%>homePage/search.jsp');
            });
            $("a#del").click(function () {
                $('#myDiv').load('<%=basePath%>homePage/search.jsp');
            });

            $("a#new").click(function () {
                $('#myDiv').load('<%=basePath%>intellJPattern/new.jsp');
            });
            $("a#old").click(function () {
                $('#myDiv').load('<%=basePath%>intellJPattern/old.jsp');
            });

            $("a#introduction").click(function () {
                $('#myDiv').load('<%=basePath%>homePage/introduction.jsp');
            });
            $("a#help").click(function () {
                $('#myDiv').load('<%=basePath%>homePage/guide.jsp');
            });


//            站内搜索
            $("a#searchPage").click(function () {
                var sText = $('#searchText').val();
                if (sText == "基本模块") {
                    $('#myDiv').load('<%=basePath%>homePage/myTable.jsp');
                } else if (sText == "智能匹配模块") {
                    $('#myDiv').load('<%=basePath%>intellJPattern/new.jsp');
                }else if (sText == "帮助") {
                    $('#myDiv').load('<%=basePath%>homePage/guide.jsp');
                } else {
                    swal("未能检索到匹配的模块！");
                    $('#myDiv').load('<%=basePath%>homePage/notFound.jsp');
                }
            });
        });

    </script>
    <script type="text/javascript">
        function setTime() {
            var date = new Date();
            document.getElementById("time").innerHTML = "2017年" + date.getMonth() + "月" + date.getDate() + "日 "
                + date.getHours() + "时" + date.getMinutes() + "分" + date.getSeconds() + "秒";
            if (date.getHours() > 0 && date.getHours() < 12) {
                document.getElementById("hour").innerHTML = "早上"
            } else if (date.getHours() >= 12 && date.getHours() < 18) {
                document.getElementById("hour").innerHTML = "下午";
            } else {
                document.getElementById("hour").innerHTML = "晚上";
            }
        }
        window.setInterval('setTime()', 1000);
    </script>
    <style type="text/css">
        body {
            font-family: STFangSong, Helvetica, Arial, Vernada, Tahoma, STXihei, "Microsoft YaHei", "Songti SC", SimSun, Heiti, sans-serif;
        !important;
        }
    </style>
    <link rel="shortcut icon" href="<%=basePath%>images/hello/logo.png">
    <!-- HTML5 shim, for IE6-8 support of HTML5 elements. All other JS at the end of file. -->
    <!--[if lt IE 9]>
    <![endif]-->
</head>

<body onload="setTime()">
<div class="frame">
    <div class="sidebar" style="background-color:#f0f8ff;">
        <div class="wrapper">
            <!-- Replace the src of the image with your logo -->
            <a class="logo"><img src="<%=basePath%>images/hello/logo.png"/>
            </a>
            <ul class="nav  nav-list" id="indexMenu">
                <div style="border:2px solid;border-top-left-radius:2em;background-color: #1da1f2;color: whitesmoke">
                    <p style="font-size: 13px;padding-left: 10px">
                        <br/><span id="hour"></span>好，<a>${user.username}</a>&nbsp;&nbsp;现在时间：
                    </p>
                    <p>
                    <div id="time" style="font-size: 13px;padding-left:10px"></div><br/>
                    </p>
                </div>
                <hr/>
                <!-- Sidebar header @add class nav-header for sidebar header -->
                <li class="nav-header">关于系统</li>

                <li><a href="#" id="sysIntro">系统介绍</a></li>
                <li><a href="#" id="sysFeature">系统功能</a></li>

                <!-- Sidebar header @add class nav-header for sidebar header -->
                <li class="nav-header">基本模块</li>

                <li><a id="add" href="#">数据增加</a></li>
                <li><a id="update" href="#">数据编辑</a></li>
                <li><a id="search" href="#">数据查询</a></li>
                <li><a id="del" href="#">数据删除</a></li>
                <li class="nav-header">智能匹配模块</li>

                <li><a id="new" href="#">新员工入职智能匹配</a></li>
                <li><a id="old" href="#">老员工的管理与升迁</a></li>
                <li class="nav-header">帮助</li>

                <li><a href="#" id="help">使用指南</a></li>
                <li><a href="#" id="introduction">产品介绍</a></li>
            </ul>

        </div><!-- /Wrapper -->
    </div><!-- /Sidebar -->

    <!-- Main content starts here-->
    <div class="content">
        <div class="navbar" style="background-color: #086ed5">
            <!-- Top right user menu -->
            <%--页面导航框--%>
            <div class="row">
                <div class="col-md-12">
                    <div class="navbar-header">
                        <a class="navbar-brand" style="color: whitesmoke;font-weight: 800">
                            欢迎使用人力资源智能分配管理信息系统</a>
                    </div>
                    <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">

                        <ul class="nav navbar-nav navbar-right">
                            <li>
                                <form class="navbar-form navbar-left" role="search">
                                    <input type="text" class="form-control" placeholder="站内搜索" id="searchText"
                                           style="padding-left:10px;"/>
                                    <a href="#" id="searchPage">
                                        <img style="background-color: #0e7bef"
                                             src="<%=basePath%>images/hello/font-337.png"
                                             height="35px"
                                             width="35px"/></a>
                                </form>
                            </li>
                            <li>
                                <button class="btn btn-default"
                                        onclick="window.location.href='<%=basePath%>login.jsp'"
                                        style="margin-top: 10px;background-color: #055fb8;color: floralwhite">安全退出
                                </button>
                            </li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
        <div id="main-content">
            <div id="myDiv">
                <jsp:include page="aboutSystem.jsp" flush="true"/>
            </div>
        </div>
        <div style="margin-top: 5px">
            <script async=""
                    src="//pagead2.googlesyndication.com/pagead/js/adsbygoogle.js"></script>
            <ins class="adsbygoogle"
                 style="display:inline-block;width:728px;height:90px"
                 data-ad-client="ca-pub-1331524016319584" data-ad-slot="6657867155"
                 data-adsbygoogle-status="done">
                <ins id="aswift_1_expand"
                     style="display:inline-table;border:none;height:90px;margin:0;padding:0;position:relative;visibility:visible;width:728px;background-color:transparent">
                    <ins id="aswift_1_anchor"
                         style="display:block;border:none;height:90px;margin:0;padding:0;position:relative;visibility:visible;width:728px;background-color:transparent">
                        <iframe width="728" height="90" frameborder="0" marginwidth="0"
                                marginheight="0" vspace="0" hspace="0"
                                allowtransparency="true" scrolling="no"
                                allowfullscreen="true"
                                onload="var i=this.id,s=window.google_iframe_oncopy,H=s&amp;&amp;s.handlers,h=H&amp;&amp;H[i],w=this.contentWindow,d;try{d=w.document}catch(e){}if(h&amp;&amp;d&amp;&amp;(!d.body||!d.body.firstChild)){if(h.call){setTimeout(h,0)}else if(h.match){try{h=s.upd(h,i)}catch(e){}w.location.replace(h)}}"
                                id="aswift_1" name="aswift_1"
                                style="left:0;position:absolute;top:0;"></iframe>
                    </ins>
                </ins>
            </ins>
            <script>(adsbygoogle = window.adsbygoogle || []).push({});</script>
        </div>
    </div>
</div>

</body>
</html>
