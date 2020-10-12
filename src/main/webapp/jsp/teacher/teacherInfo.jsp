<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="zh-CN">
<head>
<%@ include file="../../static/include/head.jsp"%>
<title>学生信息管理系统</title>
</head>

<body>
	<!-- 导航栏 -->
	<%@ include file="../../static/include/teacherNavbar.jsp"%>
	<div class="container">

		<form class="form-horizontal" role="form" method="post"
			action="${APP_PATH}/teacher/changeTeapwd">

			<div class="form-group">
				<label class="col-md-3 control-label" for="name">账号</label>
				<div class="col-md-6">
					<input type="text" class="form-control" id="tnum"
						placeholder="${teacher.tnum}" disabled>
				</div>
			</div>

			<div class="form-group">
				<label class="col-md-3 control-label" for="name">姓名</label>
				<div class="col-md-6">
					<input type="text" class="form-control" id="tname"
						placeholder="${teacher.tname}" disabled>
				</div>
			</div>

			<div class="form-group">
				<label class="col-md-3 control-label" for="name">身份证</label>
				<div class="col-md-6">
					<input type="text" class="form-control" id="tidcard"
						placeholder="${teacher.tidcard}" disabled>
				</div>
			</div>

			<div class="form-group">
				<label class="col-md-3 control-label" for="name">性别</label>
				<div class="col-md-6">
					<input type="text" class="form-control" id="tgender"
						placeholder="${teacher.tgender}" disabled>
				</div>
			</div>

			<div class="form-group">
				<label class="col-md-3 control-label" for="name">年龄</label>
				<div class="col-md-6">
					<input type="text" class="form-control" id="tage"
						placeholder="${teacher.tage}" disabled>
				</div>
			</div>

			<div class="form-group">
				<label class="col-md-3 control-label" for="name">密码</label>
				<div class="col-md-3">
					<input type="password" class="form-control" name="tpwdold"
						placeholder="请输入旧密码">
				</div>
				<div class="col-md-3">
					<input type="password" class="form-control" name="tpwdnew"
						placeholder="请输入新密码">
				</div>
			</div>
			<div class="col-md-6 col-md-offset-3">
				<button class="btn btn-lg btn-primary btn-block" type="submit">提交修改</button>
			</div>
		</form>

	</div>
	<!-- /container -->
	<%@ include file="../../static/include/js.jsp"%>

	<script>
		$(function() {
			$("#navbar li:eq(2)").addClass("active");
		});
	</script>

</body>
</html>