<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="zh-CN">
<head>
	<%@ include file="../../static/include/head.jsp" %>
	<title>学生信息管理系统</title>
</head>

  <body>
    <!-- 导航栏 -->
	<%@ include file="../../static/include/adminNavbar.jsp"%>
    <div class="container">

      <!-- Main component for a primary marketing message or call to action -->
      <div class="jumbotron">
        <h1>欢迎${admin.aname}<br></h1>
        <p>欢迎使用学生管理系统</p>
        <p>Welcome to the student management system</p>
        <p>
          <a class="btn btn-lg btn-primary" href="" role="button">刷新  &raquo;</a>
        </p>
      </div>

    </div> <!-- /container -->
	<%@ include file="../../static/include/js.jsp" %>

	<script>
		$(function() {
			$("#navbar li:eq(0)").addClass("active");
		});
	</script>

</body>
</html>