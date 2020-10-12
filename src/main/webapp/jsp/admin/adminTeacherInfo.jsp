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
		<!-- 标题 -->
		<div class="row">
			<div class="col-md-11">
				<h1>教师详细信息</h1>
			</div>
			<div class="col-md-1">
				<button id="addInfo" type="button" class="btn btn-info" data-toggle="modal" data-target="#teaAddModal">添加</button>
			</div>
		</div>
		<!-- 按钮 -->
		<!-- 显示表格数据 -->
		<div class="row">
			<div class="col-md-12 table-responsive">
				<table class="table table-hover table-striped" id="emps_table">
					<thead>
						<tr>
							<th>#</th>
							<th>账号</th>
							<th>名字</th>
							<th>性别</th>
							<th>身份证</th>
							<th>密码</th>
							<th>年龄</th>
							<th>修改</th>
							<th>删除</th>
						</tr>
					</thead>
					<tbody>

					</tbody>
				</table>
			</div>
		</div>
		<!-- 显示分页信息 -->
		<div class="row">
			<!--分页文字信息  -->
			<div class="col-md-6" id="page_info_area"></div>
			<!-- 分页条信息 -->
			<div class="col-md-6" id="page_nav_area">
				<nav aria-label="...">
					<ul class="pagination">
						<li class="disabled"><a href="#" aria-label="Previous"><span
								aria-hidden="true">&laquo;</span></a></li>
						<li class="active"><a href="#">1 <span class="sr-only">(current)</span></a></li>
					</ul>
				</nav>
			</div>
		</div>
		<!-- 教师修改模态框 -->
		<div class="modal fade" id="teaModifyModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
			<div class="modal-dialog">
				<div class="modal-content">
					<div class="modal-header">
						<button type="button" class="close" data-dismiss="modal"
							aria-hidden="true">&times;</button>
						<h4 class="modal-title" id="myModalLabel">教师修改信息</h4>
					</div>
					<div class="modal-body">
						<form class="form-horizontal">
							<!-- 隐藏sid -->
							<input name="tid" id="tid_update_input" hidden="hidden">
							<div class="form-group">
								<label class="col-sm-2 control-label">名字</label>
								<div class="col-sm-10">
									<input type="text" name="tname" class="form-control" id="tname_update_input">
								</div>
							</div>
							<div class="form-group">
								<label class="col-sm-2 control-label">账号</label>
								<div class="col-sm-10">
									<input type="text" name="tnum" class="form-control" id="tnum_update_input">
								</div>
							</div>
							<div class="form-group">
								<label class="col-sm-2 control-label">密码</label>
								<div class="col-sm-10">
									<input type="text" name="tpwd" class="form-control" id="tpwd_update_input">
								</div>
							</div>
							<div class="form-group">
								<label class="col-sm-2 control-label">性别</label>
								<div class="col-sm-10">
									<input type="text" name="tgender" class="form-control" id="tgender_update_input">
								</div>
							</div>
							<div class="form-group">
								<label class="col-sm-2 control-label">身份证</label>
								<div class="col-sm-10">
									<input type="text" name="tidcard" class="form-control" id="tidcard_update_input">
								</div>
							</div>
							<div class="form-group">
								<label class="col-sm-2 control-label">年龄</label>
								<div class="col-sm-10">
									<input type="text" name="tage" class="form-control" id="tage_update_input">
								</div>
							</div>
						</form>


					</div>
					<div class="modal-footer">
						<button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
						<button type="button" class="btn btn-primary" onclick="toModify()">提交更改</button>
					</div>
				</div>
				<!-- /.modal-content -->
			</div>
			<!-- /.modal -->
		</div>
		
		<!-- 教师添加模态框 -->
		<div class="modal fade" id="teaAddModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
			<div class="modal-dialog">
				<div class="modal-content">
					<div class="modal-header">
						<button type="button" class="close" data-dismiss="modal"
							aria-hidden="true">&times;</button>
						<h4 class="modal-title" id="myModalLabel">添加教师信息</h4>
					</div>
					<div class="modal-body">
						<form class="form-horizontal">
							<div class="form-group">
								<label class="col-sm-2 control-label">名字</label>
								<div class="col-sm-10">
									<input type="text" name="tname" class="form-control" id="tname_add_input">
								</div>
							</div>
							<div class="form-group">
								<label class="col-sm-2 control-label">学号</label>
								<div class="col-sm-10">
									<input type="text" name="tnum" class="form-control" id="tnum_add_input" required>
								</div>
							</div>
							<div class="form-group">
								<label class="col-sm-2 control-label">密码</label>
								<div class="col-sm-10">
									<input type="text" name="tpwd" class="form-control" id="tpwd_add_input" required>
								</div>
							</div>
							<div class="form-group">
								<label class="col-sm-2 control-label">性别</label>
								<div class="col-sm-10">
									<input type="text" name="tgender" class="form-control" id="tgender_add_input">
								</div>
							</div>
							<div class="form-group">
								<label class="col-sm-2 control-label">身份证</label>
								<div class="col-sm-10">
									<input type="text" name="tidcard" class="form-control" id="tidcard_add_input">
								</div>
							</div>
							<div class="form-group">
								<label class="col-sm-2 control-label">年龄</label>
								<div class="col-sm-10">
									<input type="text" name="tage" class="form-control" id="tage_add_input">
								</div>
							</div>
						</form>
					</div>
					<div class="modal-footer">
						<button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
						<button type="button" class="btn btn-primary" onclick="toAdd()">提交更改</button>
					</div>
				</div>
				<!-- /.modal-content -->
			</div>
			<!-- /.modal -->
		</div>
		
		
	</div> <!-- /container -->
	<%@ include file="../../static/include/js.jsp"%>
	<!-- pagebar.js 分页信息、上下页跳转js函数 -->
	<script type="text/javascript" src="../../static/include/pagebar.js"></script>
	<script>
		var gpn;
		$(function() {
			$("#navbar li:eq(2)").addClass("active");
			to_page("1");
		});
		function to_page(pn) {
			gpn=pn;
			$.ajax({
				url: "${APP_PATH}/admin/getAllTeacherInfo",
				data: "pn=" + pn,
				type: "GET",
				success: function (result) {
					emps_table(result);
					page_info(result);
					page_nav(result);
				}
			});
		}
		
		function emps_table(result) {
			$("#emps_table tbody").empty();
			var emps = result.extend.pageInfo.list;
			$.each(emps, function (index, item) {
				var xh = $("<td></td>").append(index + 1);
				var tnum = $("<td></td>").append(item.tnum);
				var tname = $("<td></td>").append(item.tname);
				var tgender = $("<td></td>").append(item.tgender);
				var tidcard = $("<td></td>").append(item.tidcard);
				var tpwd = $("<td></td>").append(item.tpwd);
				var tage = $("<td></td>").append(item.tage);
				var tchange = $("<td></td>").css({ "padding": "3px" }).append(
						$("<button></button>")
							.addClass("btn btn-primary btn-sm")
							.append($("<span></span>").addClass("glyphicon glyphicon-pencil"))
							.append("修改")
							.click(function() {
								console.log("修改click触发");
								modify(item.tid);
							})
										);
				var tdelete = $("<td></td>").css({ "padding": "3px" }).append(
					$("<button></button>")
						.addClass("btn btn-primary btn-sm")
						.append($("<span></span>").addClass("glyphicon glyphicon-trash"))
						.append("删除")
						.click(function() {
							console.log("删除click触发");
							del(item.tid);
							})
						);
				
				$("<tr></tr>")
					.append(xh)
					.append(tnum)
					.append(tname)
					.append(tgender)
					.append(tidcard)
					.append(tpwd)
					.append(tage)
					.append(tchange)
					.append(tdelete)
					.appendTo("#emps_table tbody");
			});
		}
		
		function del(id){
			$.ajax({
				url: "${APP_PATH}/admin/delTeaById",
				data: "tid=" + id,
				type: "GET",
				success: function (result) {
					if (result.code === 100){
						console.log(result.code);
						to_page(gpn);
					}
				}
			});
			
		}
		
		function modify(id){
			$.ajax({
				url: "${APP_PATH}/admin/getTeaById",
				data: "tid=" + id,
				type: "GET",
				success: function (result) {
					if (result.code === 100){
						var teacher = result.extend.teacher;
						console.log(teacher);
						$("#tid_update_input").val(teacher.tid);
						$("#tname_update_input").val(teacher.tname);
						$("#tnum_update_input").val(teacher.tnum);
						$("#tpwd_update_input").val(teacher.tpwd);
						$("#tgender_update_input").val(teacher.tgender);
						$("#tidcard_update_input").val(teacher.tidcard);
						$("#tage_update_input").val(teacher.tage);

						$('#teaModifyModal').modal('show')
					}
				}
			});
		}

		function toModify() {
			$.ajax({
				url : "${APP_PATH}/admin/changeTeaInfo",
				data : $("#teaModifyModal form").serialize(),
				type : "POST",
				success : function(result) {
					console.log(result);
					if (result.code === 100) {
						$('#teaModifyModal').modal('hide');
						to_page(gpn);
					}
				}
			});
		}
		
		function toAdd(){
			$.ajax({
				url: "${APP_PATH}/admin/addTeacher",
				data: $("#teaAddModal form").serialize(),
				type: "POST",
				success: function (result) {
					console.log(result);
					if (result.code===100){
						$('#teaAddModal').modal('hide');
					}
				}
			});
			
		}
		
		
	</script>

</body>
</html>