<!DOCTYPE html>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
%>
<html>
<head>
    <meta charset="utf-8">

    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    <title>漂亮实用的提示框插件SweetAlert</title>
    <meta name="keywords" content="Javascript"/>
    <meta name="description" content="漂亮实用的提示框插件SweetAlert"/>
    <script type="text/javascript" src="<%=basePath%>js/jquery-3.1.1.min.js"></script>
    <style>
        .demo {
            width: 300px;
            margin: 60px auto 10px auto
        }

        @media only screen and (min-width: 420px) {
            .demo {
                width: 500px;
                margin: 60px auto 10px auto
            }
        }

        button, .button {
            background-color: #AEDEF4;
            color: white;
            border: none;
            box-shadow: none;
            font-size: 17px;
            font-weight: 500;
            border-radius: 3px;
            padding: 15px 35px;
            margin: 26px 5px 0 5px;
            cursor: pointer;
        }

        button:hover, .button:hover {
            background-color: #a1d9f2;
        }
    </style>
    <script src="<%=basePath%>js/sweetalert.min.js"></script>
    <link rel="stylesheet" type="text/css" href="<%=basePath%>css/sweetalert.css">
</head>

<body>

<div id="main">
    <h2 class="top_title">漂亮实用的提示框插件SweetAlert</h2>

    <div class="demo">
        <div class="demo_1">
            基本示例：
            <button>点击这里</button>
        </div>
        <div class="demo_2">
            提示成功：
            <button>点击这里</button>
        </div>
        <div class="demo_3">
            提示失败：
            <button>点击这里</button>
        </div>
        <div class="demo_4">
            提示确认：
            <button>点击这里</button>
        </div>
        <div class="demo_5">
            定义内容：
            <button>点击这里</button>
        </div>
        <div class="demo_6">
            确认输入：
            <button>点击这里</button>
        </div>
        <a href="#" id="haha">点我看小黄片</a>
    </div>
</div>
<script>
    $(function () {
        $("#haha").click(function () {
           swal("sdjjkf");
        });
        $(".demo_1 button").click(function () {
            swal("这是一个信息提示框!");
        });
        $(".demo_2 button").click(function () {
            swal("Good!", "弹出了一个操作成功的提示框", "success");
        });
        $(".demo_3 button").click(function () {
            swal("OMG!", "弹出了一个错误提示框", "error");
        });
        $(".demo_4 button").click(function () {
            swal({
                title: "您确定要删除吗？",
                text: "您确定要删除这条数据？",
                type: "warning",
                showCancelButton: true,
                closeOnConfirm: false,
                confirmButtonText: "是的，我要删除",
                confirmButtonColor: "#ec6c62"
            }, function () {
                $.ajax({
                    url: "do.php",
                    type: "DELETE"
                }).done(function (data) {
                    swal("操作成功!", "已成功删除数据！", "success");
                }).error(function (data) {
                    swal("OMG", "删除操作失败了!", "error");
                });
            });
        });

        $(".demo_5 button").click(function () {
            swal({
                title: "Good!",
                text: '自定义<span style="color:red">图片</span>、<a href="#">HTML内容</a>。<br/>5秒后自动关闭。',
                imageUrl: "images/thumbs-up.jpg",
                html: true,
                timer: 5000,
                showConfirmButton: false
            });
        });

        $(".demo_6 button").click(function () {
            swal({
                title: "输入框来了",
                text: "这里可以输入并确认:",
                type: "input",
                showCancelButton: true,
                closeOnConfirm: false,
                animation: "slide-from-top",
                inputPlaceholder: "填点东西到这里面吧"
            }, function (inputValue) {
                if (inputValue === false) return false;
                if (inputValue === "") {
                    swal.showInputError("请输入!");
                    return false
                }
                swal("棒极了!", "您填写的是: " + inputValue, "success");
            });
        });
    });
</script>


</body>
</html>