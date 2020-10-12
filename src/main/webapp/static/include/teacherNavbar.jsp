<%@ page pageEncoding="UTF-8"%>
<!-- Fixed navbar -->
<nav class="navbar navbar-default navbar-fixed-top">
	<div class="container">
		<div class="navbar-header">
			<button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar"
				aria-expanded="false" aria-controls="navbar">
				<span class="sr-only">Toggle navigation</span> <span class="icon-bar"></span> <span
					class="icon-bar"></span> <span class="icon-bar"></span>
			</button>
			<a class="navbar-brand" href="${APP_PATH}/jsp/student/studentFace.jsp">学生信息管理系统</a>
		</div>
		<div id="navbar" class="navbar-collapse collapse">
			<ul class="nav navbar-nav">
				<li><a href="${APP_PATH}/jsp/teacher/teacherFace.jsp">主页</a></li>
				<li><a href="${APP_PATH}/jsp/teacher/teacherCourseInfo.jsp">课程管理</a></li>
				<li><a href="${APP_PATH}/jsp/teacher/teacherInfo.jsp">个人信息管理</a></li>
			</ul>
			<ul class="nav navbar-nav navbar-right">
				<li><a href="#首页">欢迎，${teacher.tname}</a></li>
				<li><a href="${APP_PATH}/teacher/teacherQuit">注销</a></li>
			</ul>
		</div>
	</div>
</nav>