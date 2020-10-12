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
				<h1>管理员详细信息</h1>
			</div>
			<div class="col-md-1">
				<button id="addInfo" type="button" class="btn btn-info" data-toggle="modal" data-target="#admAddModal">添加</button>
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
		<!-- 管理员修改模态框 -->
		<div class="modal fade" id="admModifyModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
			<div class="modal-dialog">
				<div class="modal-content">
					<div class="modal-header">
						<button type="button" class="close" data-dismiss="modal"
							aria-hidden="true">&times;</button>
						<h4 class="modal-title" id="myModalLabel">管理员修改信息</h4>
					</div>
					<div class="modal-body">
						<form class="form-horizontal">
							<!-- 隐藏sid -->
							<input name="aid" id="aid_update_input" hidden="hidden">
							<div class="form-group">
								<label class="col-sm-2 control-label">名字</label>
								<div class="col-sm-10">
									<input type="text" name="aname" class="form-control" id="aname_update_input">
								</div>
							</div>
							<div class="form-group">
								<label class="col-sm-2 control-label">账号</label>
								<div class="col-sm-10">
									<input type="text" name="anum" class="form-control" id="anum_update_input">
								</div>
							</div>
							<div class="form-group">
								<label class="col-sm-2 control-label">密码</label>
								<div class="col-sm-10">
									<input type="text" name="apwd" class="form-control" id="apwd_update_input">
								</div>
							</div>
							<div class="form-group">
								<label class="col-sm-2 control-label">性别</label>
								<div class="col-sm-10">
									<input type="text" name="agender" class="form-control" id="agender_update_input">
								</div>
							</div>
							<div class="form-group">
								<label class="col-sm-2 control-label">身份证</label>
								<div class="col-sm-10">
									<input type="text" name="aidcard" class="form-control" id="aidcard_update_input">
								</div>
							</div>
							<div class="form-group">
								<label class="col-sm-2 control-label">年龄</label>
								<div class="col-sm-10">
									<input type="text" name="aage" class="form-control" id="aage_update_input">
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

		<!-- 管理员添加模态框 -->
		<div class="modal fade" id="admAddModal" tabindex="-1" role="dialog"
			aria-labelledby="myModalLabel" aria-hidden="true">
			<div class="modal-dialog">
				<div class="modal-content">
					<div class="modal-header">
						<button type="button" class="close" data-dismiss="modal"
							aria-hidden="true">&times;</button>
						<h4 class="modal-title" id="myModalLabel">添加管理员信息</h4>
					</div>
					<div class="modal-body">
						<form class="form-horizontal">
							<div class="form-group">
								<label class="col-sm-2 control-label">名字</label>
								<div class="col-sm-10">
									<input type="text" name="aname" class="form-control"
										id="aname_add_input">
								</div>
							</div>
							<div class="form-group">
								<label class="col-sm-2 control-label">账号</label>
								<div class="col-sm-10">
									<input type="text" name="anum" class="form-control"
										id="anum_add_input" required>
								</div>
							</div>
							<div class="form-group">
								<label class="col-sm-2 control-label">密码</label>
								<div class="col-sm-10">
									<input type="text" name="apwd" class="form-control"
										id="apwd_add_input" required>
								</div>
							</div>
							<div class="form-group">
								<label class="col-sm-2 control-label">性别</label>
								<div class="col-sm-10">
									<input type="text" name="agender" class="form-control"
										id="agender_add_input">
								</div>
							</div>
							<div class="form-group">
								<label class="col-sm-2 control-label">身份证</label>
								<div class="col-sm-10">
									<input type="text" name="aidcard" class="form-control"
										id="aidcard_add_input">
								</div>
							</div>
							<div class="form-group">
								<label class="col-sm-2 control-label">年龄</label>
								<div class="col-sm-10">
									<input type="text" name="aage" class="form-control"
										id="aage_add_input">
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
			$("#navbar li:eq(3)").addClass("active");
			to_page("1");
		});
		function to_page(pn) {
			gpn=pn;
			$.ajax({
				url: "${APP_PATH}/admin/getAllAdminInfo",
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
				var anum = $("<td></td>").append(item.anum);
				var aname = $("<td></td>").append(item.aname);
				var agender = $("<td></td>").append(item.agender);
				var aidcard = $("<td></td>").append(item.aidcard);
				var apwd = $("<td></td>").append(item.apwd);
				var aage = $("<td></td>").append(item.aage);
				var achange = $("<td></td>").css({ "padding": "3px" }).append(
						$("<button></button>")
							.addClass("btn btn-primary btn-sm")
							.append($("<span></span>").addClass("glyphicon glyphicon-pencil"))
							.append("修改")
							.click(function() {
								console.log("修改click触发");
								modify(item.aid);
							})
										);
				var adelete = $("<td></td>").css({ "padding": "3px" }).append(
					$("<button></button>")
						.addClass("btn btn-primary btn-sm")
						.append($("<span></span>").addClass("glyphicon glyphicon-trash"))
						.append("删除")
						.click(function() {
							console.log("删除click触发");
							del(item.aid);
							})
						);
				
				$("<tr></tr>")
					.append(xh)
					.append(anum)
					.append(aname)
					.append(agender)
					.append(aidcard)
					.append(apwd)
					.append(aage)
					.append(achange)
					.append(adelete)
					.appendTo("#emps_table tbody");
			});
		}
		
		function del(id){
			$.ajax({
				url: "${APP_PATH}/admin/delAdmById",
				data: "aid=" + id,
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
				url: "${APP_PATH}/admin/getAdmById",
				data: "aid=" + id,
				type: "GET",
				success: function (result) {
					if (result.code === 100){
						var admin = result.extend.admin;
						console.log(admin);
						$("#aid_update_input").val(admin.aid);
						$("#aname_update_input").val(admin.aname);
						$("#anum_update_input").val(admin.anum);
						$("#apwd_update_input").val(admin.apwd);
						$("#agender_update_input").val(admin.agender);
						$("#aidcard_update_input").val(admin.aidcard);
						$("#aage_update_input").val(admin.aage);

						$('#admModifyModal').modal('show')
					}
				}
			});
		}

		function toModify() {
			$.ajax({
				url : "${APP_PATH}/admin/changeAdmInfo",
				data : $("#admModifyModal form").serialize(),
				type : "POST",
				success : function(result) {
					console.log(result);
					if (result.code === 100) {
						$('#admModifyModal').modal('hide');
						to_page(gpn);
					}
				}
			});
		}
		
		function toAdd(){
			$.ajax({
				url: "${APP_PATH}/admin/addAdmin",
				data: $("#admAddModal form").serialize(),
				type: "POST",
				success: function (result) {
					console.log(result);
					if (result.code===100){
						$('#admAddModal').modal('hide');
					}
				}
			});
			
		}
		
	</script>

</body>
</html>