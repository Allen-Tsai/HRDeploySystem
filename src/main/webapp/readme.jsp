
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en">
<head>
    <%
        String path = request.getContextPath();
        String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
    %>

    <link rel="shortcut icon" href="<%=basePath%>images/hello/logo.png">
	<meta http-equiv="Content-Type" content="text/html;charset=UTF-8">
	<title>readme</title>
	<link rel="stylesheet" type="text/css" href="css/default.css">
    <link rel="stylesheet" type="text/css" href="css/private.css">
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/materialize/0.97.1/css/materialize.min.css">
	<style type="text/css">
		html,
		body {
			height: 100%;
		}
		html {
			display: table;
			margin: auto;
		}
		body {
			display: table-cell;
			vertical-align: middle;
			background: url("images/hello/ban3.jpg")  top center no-repeat;
			background-size: 1540px 800px;
		}

		.margin {
			margin: 0 !important;
		}
	</style>
</head>

<body>
	<div class="col s12 z-depth-6 card-panel" id="block">
		<div class="row">
			<div class="input-field col s12 center">
				<img src="images/hello/logo.png" alt="" class="responsive-img valign profile-image-login">
				<h5 class="center login-form-text">欢迎使用人力资源智能分配管理信息系统</h5>
			</div>
		</div>
		<div class="row margin">
			<div class="content">
				<h5>系统简介</h5>
				<p>系统实现的功能是：基于一般人力资源管理信息系统，强调对企业新应聘的员工进行智能岗位分配；<br/>
				强调对企业老员工进行能力与业绩评估，以此决定老员工的升降离职与薪资水平。</p>
				<h5>系统模块</h5>
                <p>
					<ur>
						<li>·信息查询模块</li>
						<li>·信息增加模块</li>
						<li>·信息删除模块</li>
						<li>·信息修改模块</li>
						<li>·智能匹配模块</li>
					</ur>
                </p>
			</div>
		</div>
        <div>
            <a href="login.jsp">返回登录界面</a>
        </div>
	</div>

</body>
</html>