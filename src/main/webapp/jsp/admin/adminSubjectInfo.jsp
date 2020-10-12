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
				<h1>科目详细信息</h1>
			</div>
			<div class="col-md-1">
				<button id="addInfo" type="button" class="btn btn-info" data-toggle="modal" data-target="#subAddModal">添加</button>
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
							<th>科目名</th>
							<th>简介</th>
							<th>类型</th>
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
		<!-- 科目修改模态框 -->
		<div class="modal fade" id="subModifyModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
			<div class="modal-dialog">
				<div class="modal-content">
					<div class="modal-header">
						<button type="button" class="close" data-dismiss="modal"
							aria-hidden="true">&times;</button>
						<h4 class="modal-title" id="myModalLabel">科目修改信息</h4>
					</div>
					<div class="modal-body">
						<form class="form-horizontal">
							<!-- 隐藏sid -->
							<input name="subid" id="subid_update_input" hidden="hidden">
							<div class="form-group">
								<label class="col-sm-2 control-label">科目名</label>
								<div class="col-sm-10">
									<input type="text" name="subname" class="form-control" id="subname_update_input">
								</div>
							</div>
							<div class="form-group">
								<label class="col-sm-2 control-label">简介</label>
								<div class="col-sm-10">
									<input type="text" name="subintro" class="form-control" id="subintro_update_input">
								</div>
							</div>
							<div class="form-group">
								<label class="col-sm-2 control-label">类型</label>
								<div class="col-sm-10">
									<input type="text" name="subtype" class="form-control" id="subtype_update_input">
								</div>
							</div>
							<div class="form-group">
								<label class="col-sm-2 control-label">所属学院</label>
								<div class="col-sm-10">
									<input type="text" name="subcoll" class="form-control" id="subcoll_update_input">
								</div>
							</div>
							<div class="form-group">
								<label class="col-sm-2 control-label">所属专业</label>
								<div class="col-sm-10">
									<input type="text" name="subpro" class="form-control" id="subpro_update_input">
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
		
		<!-- 课目表添加模态框 -->
		<div class="modal fade" id="subAddModal" tabindex="-1" role="dialog"
			aria-labelledby="myModalLabel" aria-hidden="true">
			<div class="modal-dialog">
				<div class="modal-content">
					<div class="modal-header">
						<button type="button" class="close" data-dismiss="modal"
							aria-hidden="true">&times;</button>
						<h4 class="modal-title" id="myModalLabel">添加科目表信息</h4>
					</div>
					<div class="modal-body">
						<form class="form-horizontal">
							<div class="form-group">
								<label class="col-sm-2 control-label">科目名</label>
								<div class="col-sm-10">
									<input type="text" name="subname" class="form-control"
										id="subname_add_input">
								</div>
							</div>
							<div class="form-group">
								<label class="col-sm-2 control-label">简介</label>
								<div class="col-sm-10">
									<input type="text" name="subintro" class="form-control"
										id="subintro_add_input" required>
								</div>
							</div>
							<div class="form-group">
								<label class="col-sm-2 control-label">类型</label>
								<div class="col-sm-10">
									<input type="text" name="subtype" class="form-control"
										id="subtype_add_input" required>
								</div>
							</div>
							<div class="form-group">
								<label class="col-sm-2 control-label">所属学院</label>
								<div class="col-sm-10">
									<input type="text" name="subcoll" class="form-control"
										id="subcoll_add_input">
								</div>
							</div>
							<div class="form-group">
								<label class="col-sm-2 control-label">所属类型</label>
								<div class="col-sm-10">
									<input type="text" name="subpro" class="form-control"
										id="subpro_add_input">
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
			$("#navbar li:eq(4)").addClass("active");
			to_page("1");
		});
		function to_page(pn) {
			gpn=pn;
			$.ajax({
				url: "${APP_PATH}/admin/getAllSubjectInfo",
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
				var subname = $("<td></td>").append(item.subname);
				var subintro = $("<td></td>").append(item.subintro);
				var subtype = $("<td></td>").append(item.subtype);
				var subcoll = $("<td></td>").append(item.subcoll);
				var subpro = $("<td></td>").append(item.subpro);
				var subchange = $("<td></td>").css({ "padding": "3px" }).append(
						$("<button></button>")
							.addClass("btn btn-primary btn-sm")
							.append($("<span></span>").addClass("glyphicon glyphicon-pencil"))
							.append("修改")
							.click(function() {
								console.log("修改click触发");
								modify(item.subid);
							})
										);
				var subdelete = $("<td></td>").css({ "padding": "3px" }).append(
					$("<button></button>")
						.addClass("btn btn-primary btn-sm")
						.append($("<span></span>").addClass("glyphicon glyphicon-trash"))
						.append("删除")
						.click(function() {
							console.log("删除click触发");
							del(item.subid);
							})
						);
				
				$("<tr></tr>")
					.append(xh)
					.append(subname)
					.append(subintro)
					.append(subtype)
					.append(subcoll)
					.append(subpro)
					.append(subchange)
					.append(subdelete)
					.appendTo("#emps_table tbody");
			});
		}
		
		function del(id){
			$.ajax({
				url: "${APP_PATH}/admin/delSubById",
				data: "subid=" + id,
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
				url: "${APP_PATH}/admin/getSubById",
				data: "subid=" + id,
				type: "GET",
				success: function (result) {
					if (result.code === 100){
						var subject = result.extend.subject;
						console.log(subject);
						$("#subid_update_input").val(subject.subid);
						$("#subname_update_input").val(subject.subname);
						$("#subintro_update_input").val(subject.subintro);
						$("#subtype_update_input").val(subject.subtype);
						$("#subcoll_update_input").val(subject.subcoll);
						$("#subpro_update_input").val(subject.subpro);

						$('#subModifyModal').modal('show')
					}
				}
			});
		}

		function toModify() {
			$.ajax({
				url : "${APP_PATH}/admin/changeSubInfo",
				data : $("#subModifyModal form").serialize(),
				type : "POST",
				success : function(result) {
					console.log(result);
					if (result.code === 100) {
						$('#subModifyModal').modal('hide');
						to_page(gpn);
					}
				}
			});
		}
		
		function toAdd(){
			$.ajax({
				url: "${APP_PATH}/admin/addSubject",
				data: $("#subAddModal form").serialize(),
				type: "POST",
				success: function (result) {
					console.log(result);
					if (result.code===100){
						$('#subAddModal').modal('hide');
					}
				}
			});
			
		}
		
	</script>

</body>
</html>