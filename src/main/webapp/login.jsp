<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="zh-CN">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="">
<meta name="author" content="">
<link rel="icon" href="../../favicon.ico">

<title>学生选课管理系统登录</title>

<!-- Bootstrap core CSS -->
<link href="static/bootstrap-3.3.7-dist/css/bootstrap.min.css" rel="stylesheet">

<script src="static/jquery/jquery.min.js"></script>

<script src="static/bootstrap-3.3.7-dist/js/bootstrap.min.js"></script>

<!-- Custom styles for this template -->
<link href="static/css/signin.css" rel="stylesheet">



</head>

<body>
	<!-- 登录界面 -->
	<div class="container">
		<div class="col-md-4 col-md-offset-4">
		<form id="login" method="post" onsubmit="return submitHandler()">
			<h2 class="form-signin-heading">登录</h2>
			<label for="inputAccount" class="sr-only">账号</label>
			<input type="text" id="inputAccount" class="form-control" placeholder="账号" required autofocus>
			<label for="inputPassword" class="sr-only">密码</label>
			<input type="password" id="inputPassword" class="form-control" placeholder="密码" required>
			<div class="row">
				<div class="col-md-12">
					<strong>登录角色</strong>
				</div>
				<div class="col-md-4">
					<label>
						<input type="radio" name="optionsRadios1" value="student" checked="checked" id="radio1" data-toggle="radio">
							<span class="glyphicon glyphicon-user"></span>
						<font>学生</font>
					</label>
				</div>
				
				<div class="col-md-4">
					<label>
						<input type="radio" name="optionsRadios1" value="teacher" id="radio2" data-toggle="radio">
							  <span class="glyphicon glyphicon-user"></span>
						<font>教师</font>
					</label>
				</div>
				<div class="col-md-4">
					<label>
						<input type="radio" name="optionsRadios1" value="admin" id="radio3" data-toggle="radio">
							<span class="glyphicon glyphicon-user"></span>
						<font>管理员</font>
					</label>
				
				</div>
				
			</div>
			<button class="btn btn-lg btn-primary btn-block" type="submit">登录</button>
		</form>
		</div>
	</div>
	
	<script>
		var useridEle = document.getElementById("inputAccount");
		var passwordEle = document.getElementById("inputPassword");
		var roleRadio = document.getElementsByName("optionsRadios1");

		/*
		 * 点击登录执行的逻辑
		 */
		function submitHandler() {

			/**
			
			if (!vali()) {
				return false;
			}
			*/

			var role = 'student';

			for (var i = 0; i < roleRadio.length; i++) {
				if (roleRadio[i].checked) {
					role = roleRadio[i].value;
				}
			}

			var action = null;
			if (role == 'student') {
				action = "login/studentlogin";
				useridEle.name = "snum";
				passwordEle.name = "spwd";
			} else if (role == 'teacher') {
				action = "login/teacherlogin";
				useridEle.name = "tnum";
				passwordEle.name = "tpwd";
			} else {
				action = "login/adminlogin";
				useridEle.name = "anum";
				passwordEle.name = "apwd";
			}
			document.getElementById("login").action = action;

			return true;
		}

		function vali() {
			var valiObjs = createInputMsgObj([ 'userid', 'password' ])

			for (var i = 0; i < valiObjs.length; i++) {
				console.log(valiObjs[i].el.val())
				if (valiObjs[i].el.val() == null || valiObjs[i].el.val() == '') {
					valiObjs[i].el.css({
						"border-color" : "red"
					})
					console.log(valiObjs[i].el)
					var alertEl = $("<div style=\"position:fixed;top:1rem;right:1rem;\" class=\"alert alert-warning\">"
							+ valiObjs[i].msg + "没有填写！" + "</h5></div>")
					$("body").append(alertEl);
					setTimeout(function() {
						alertEl.remove();
					}, 1000)
					return false;
				}
			}
			return true;
		}

		function createInputMsgObj(ids) {
			var objs = [];

			for (var i = 0; i < ids.length; i++) {

				var obj = {
					el : $("#" + ids[i]),
					msg : $("#" + ids[i]).attr('m')
				}
				objs.push(obj);
			}

			return objs;
		}
	</script>

</body>
</html>
