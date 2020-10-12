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
				<h1>学生详细信息</h1>
			</div>
			<div class="col-md-1">
				<button id="addInfo" type="button" class="btn btn-info" data-toggle="modal" data-target="#stuAddModal">添加</button>
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
							<th>学号</th>
							<th>名字</th>
							<th>性别</th>
							<th>身份证</th>
							<th>密码</th>
							<th>年龄</th>
							<th>所属学院</th>
							<th>所属专业</th>
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
		
		<!-- 学生修改模态框 -->
		<div class="modal fade" id="stuModifyModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
			<div class="modal-dialog">
				<div class="modal-content">
					<div class="modal-header">
						<button type="button" class="close" data-dismiss="modal"
							aria-hidden="true">&times;</button>
						<h4 class="modal-title" id="myModalLabel">学生修改信息</h4>
					</div>
					<div class="modal-body">
						<form class="form-horizontal">
							<!-- 隐藏sid -->
							<input name="sid" id="sid_update_input" hidden="hidden">
							<div class="form-group">
								<label class="col-sm-2 control-label">名字</label>
								<div class="col-sm-10">
									<input type="text" name="sname" class="form-control" id="sname_update_input">
								</div>
							</div>
							<div class="form-group">
								<label class="col-sm-2 control-label">学号</label>
								<div class="col-sm-10">
									<input type="text" name="snum" class="form-control" id="snum_update_input">
								</div>
							</div>
							<div class="form-group">
								<label class="col-sm-2 control-label">密码</label>
								<div class="col-sm-10">
									<input type="text" name="spwd" class="form-control" id="spwd_update_input">
								</div>
							</div>
							<div class="form-group">
								<label class="col-sm-2 control-label">性别</label>
								<div class="col-sm-10">
									<input type="text" name="sgender" class="form-control" id="sgender_update_input">
								</div>
							</div>
							<div class="form-group">
								<label class="col-sm-2 control-label">身份证</label>
								<div class="col-sm-10">
									<input type="text" name="sidcard" class="form-control" id="sidcard_update_input">
								</div>
							</div>
							<div class="form-group">
								<label class="col-sm-2 control-label">年龄</label>
								<div class="col-sm-10">
									<input type="text" name="sage" class="form-control" id="sage_update_input">
								</div>
							</div>
							<div class="form-group">
								<label class="col-sm-2 control-label">学院</label>
								<div class="col-sm-10">
									<input type="text" name="scoll" class="form-control" id="scoll_update_input">
								</div>
							</div>
							<div class="form-group">
								<label class="col-sm-2 control-label">专业</label>
								<div class="col-sm-10">
									<input type="text" name="spro" class="form-control" id="spro_update_input">
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
		
		<!-- 学生添加模态框 -->
		<div class="modal fade" id="stuAddModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
			<div class="modal-dialog">
				<div class="modal-content">
					<div class="modal-header">
						<button type="button" class="close" data-dismiss="modal"
							aria-hidden="true">&times;</button>
						<h4 class="modal-title" id="myModalLabel">添加学生信息</h4>
					</div>
					<div class="modal-body">
						<form class="form-horizontal">
							<div class="form-group">
								<label class="col-sm-2 control-label">名字</label>
								<div class="col-sm-10">
									<input type="text" name="sname" class="form-control" id="sname_add_input">
								</div>
							</div>
							<div class="form-group">
								<label class="col-sm-2 control-label">学号</label>
								<div class="col-sm-10">
									<input type="text" name="snum" class="form-control" id="snum_add_input" required>
								</div>
							</div>
							<div class="form-group">
								<label class="col-sm-2 control-label">密码</label>
								<div class="col-sm-10">
									<input type="text" name="spwd" class="form-control" id="spwd_add_input" required>
								</div>
							</div>
							<div class="form-group">
								<label class="col-sm-2 control-label">性别</label>
								<div class="col-sm-10">
									<input type="text" name="sgender" class="form-control" id="sgender_add_input">
								</div>
							</div>
							<div class="form-group">
								<label class="col-sm-2 control-label">身份证</label>
								<div class="col-sm-10">
									<input type="text" name="sidcard" class="form-control" id="sidcard_add_input">
								</div>
							</div>
							<div class="form-group">
								<label class="col-sm-2 control-label">年龄</label>
								<div class="col-sm-10">
									<input type="text" name="sage" class="form-control" id="sage_add_input">
								</div>
							</div>
							<div class="form-group">
								<label class="col-sm-2 control-label">学院</label>
								<div class="col-sm-10">
									<input type="text" name="scoll" class="form-control" id="scoll_add_input">
								</div>
							</div>
							<div class="form-group">
								<label class="col-sm-2 control-label">专业</label>
								<div class="col-sm-10">
									<input type="text" name="spro" class="form-control" id="spro_add_input">
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
		
	</div>
	<!-- /container -->
	<%@ include file="../../static/include/js.jsp"%>
	<!-- pagebar.js 分页信息、上下页跳转js函数 -->
	<script type="text/javascript" src="../../static/include/pagebar.js"></script>
	<script>
		var gpn;
		$(function() {
			$("#navbar li:eq(1)").addClass("active");
			to_page("1");
		});
		function to_page(pn) {
			gpn=pn;
			$.ajax({
				url: "${APP_PATH}/admin/getAllStudentInfo",
				data: "pn=" + pn,
				type: "GET",
				success: function (result) {
					//1、解析并显示数据
					emps_table(result);
					//2、解析并显示分页信息
					page_info(result);
					//3、解析显示分页条数据
					page_nav(result);
				}
			});
		}

		function emps_table(result) {
			$("#emps_table tbody").empty();
			var emps = result.extend.pageInfo.list;
			$.each(emps, function (index, item) {
				var xh = $("<td></td>").append(index + 1);
				var snum = $("<td></td>").append(item.snum);
				var sname = $("<td></td>").append(item.sname);
				var sgender = $("<td></td>").append(item.sgender);
				var sidcard = $("<td></td>").append(item.sidcard);
				var spwd = $("<td></td>").append(item.spwd);
				var sage = $("<td></td>").append(item.sage);
				var scoll = $("<td></td>").append(item.scoll);
				var spro = $("<td></td>").append(item.spro);
				var schange = $("<td></td>").css({ "padding": "3px" }).append(
						$("<button></button>")
							.addClass("btn btn-primary btn-sm")
							.append($("<span></span>").addClass("glyphicon glyphicon-pencil"))
							.append("修改")
							.click(function() {
								console.log("修改click触发");
								modify(item.sid);
							})
						);
				var sdelete = $("<td></td>").css({ "padding": "3px" }).append(
					$("<button></button>")
						.addClass("btn btn-primary btn-sm")
						.append($("<span></span>").addClass("glyphicon glyphicon-trash"))
						.append("删除")
						.click(function() {
							console.log("删除click触发");
							del(item.sid);
							})
						);
				
				$("<tr></tr>")
					.append(xh)
					.append(snum)
					.append(sname)
					.append(sgender)
					.append(sidcard)
					.append(spwd)
					.append(sage)
					.append(scoll)
					.append(spro)
					.append(schange)
					.append(sdelete)
					.appendTo("#emps_table tbody");
			});
		}
		
		function del(id){
			$.ajax({
				url: "${APP_PATH}/admin/delStuById",
				data: "sid=" + id,
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
				url: "${APP_PATH}/admin/getStuById",
				data: "sid=" + id,
				type: "GET",
				success: function (result) {
					if (result.code === 100){
						var student = result.extend.student;
						console.log(student);
						$("#sid_update_input").val(student.sid);
						$("#sname_update_input").val(student.sname);
						$("#snum_update_input").val(student.snum);
						$("#spwd_update_input").val(student.spwd);
						$("#sgender_update_input").val(student.sgender);
						$("#sidcard_update_input").val(student.sidcard);
						$("#sage_update_input").val(student.sage);
						$("#scoll_update_input").val(student.scoll);
						$("#spro_update_input").val(student.spro);
						
						$('#stuModifyModal').modal('show')
					}
				}
			});
		}
		
		function toModify(){
			$.ajax({
				url: "${APP_PATH}/admin/changeStuInfo",
				data: $("#stuModifyModal form").serialize(),
				type: "POST",
				success: function (result) {
					console.log(result);
					if (result.code===100){
						$('#stuModifyModal').modal('hide');
						to_page(gpn);
					}
				}
			});
		}
		
		function toAdd(){
			$.ajax({
				url: "${APP_PATH}/admin/addStudent",
				data: $("#stuAddModal form").serialize(),
				type: "POST",
				success: function (result) {
					console.log(result);
					if (result.code===100){
						$('#stuAddModal').modal('hide');
					}
				}
			});
			
		}
		
		
	</script>

</body>
</html>