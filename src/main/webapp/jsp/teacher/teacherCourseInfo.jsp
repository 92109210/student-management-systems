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

		<!-- 标题 -->
		<div class="row">
			<div class="col-md-11">
				<h1>学生选课列表</h1>
			</div>
			<div class="col-md-1">
				<button id="addInfo" type="button" class="btn btn-info" data-toggle="modal" data-target="#couAddModal">添加</button>
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
							<th>上课时间</th>
							<th>上课周数</th>
							<th>教室</th>
							<th>学分</th>
							<th>学时</th>
							<th>总人数</th>
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
		<!-- 课程修改模态框 -->
		<div class="modal fade" id="couModifyModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel"
			aria-hidden="true">
			<div class="modal-dialog">
				<div class="modal-content">
					<div class="modal-header">
						<button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
						<h4 class="modal-title" id="myModalLabel">课程修改信息</h4>
					</div>
					<div class="modal-body">
						<form class="form-horizontal">
							<!-- 隐藏sid -->
							<input name="couid" id="couid_update_input" hidden="hidden">
							<div class="form-group">
								<label class="col-sm-2 control-label">课程id</label>
								<div class="col-sm-10">
									<input type="text" name="subject.subid" class="form-control" id="subid_update_input">
								</div>
							</div>
							<div class="form-group">
								<label class="col-sm-2 control-label">上课时间</label>
								<div class="col-sm-10">
									<input type="text" name="coutime" class="form-control" id="coutime_update_input">
								</div>
							</div>
							<div class="form-group">
								<label class="col-sm-2 control-label">上课周数</label>
								<div class="col-sm-10">
									<input type="text" name="couweek" class="form-control" id="couweek_update_input">
								</div>
							</div>
							<div class="form-group">
								<label class="col-sm-2 control-label">教室</label>
								<div class="col-sm-10">
									<input type="text" name="couroom" class="form-control" id="couroom_update_input">
								</div>
							</div>
							<div class="form-group">
								<label class="col-sm-2 control-label">学分</label>
								<div class="col-sm-10">
									<input type="text" name="credits" class="form-control" id="credits_update_input">
								</div>
							</div>
							<div class="form-group">
								<label class="col-sm-2 control-label">学时</label>
								<div class="col-sm-10">
									<input type="text" name="period" class="form-control" id="period_update_input">
								</div>
							</div>
							<div class="form-group">
								<label class="col-sm-2 control-label">总人数</label>
								<div class="col-sm-10">
									<input type="text" name="totalnum" class="form-control" id="totalnum_update_input">
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
		
		<!-- 课程添加模态框 -->
		<div class="modal fade" id="couAddModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
			<div class="modal-dialog">
				<div class="modal-content">
					<div class="modal-header">
						<button type="button" class="close" data-dismiss="modal"
							aria-hidden="true">&times;</button>
						<h4 class="modal-title" id="myModalLabel">添加课程信息</h4>
					</div>
					<div class="modal-body">
						<form class="form-horizontal">
							<div class="form-group">
								<label class="col-sm-2 control-label">科目id</label>
								<div class="col-sm-10">
									<input type="text" name="subject.subid" class="form-control" id="subid_add_input">
								</div>
							</div>
							<div class="form-group">
								<label class="col-sm-2 control-label">上课时间</label>
								<div class="col-sm-10">
									<input type="text" name="coutime" class="form-control" id="coutime_add_input" required>
								</div>
							</div>
							<div class="form-group">
								<label class="col-sm-2 control-label">上课周数</label>
								<div class="col-sm-10">
									<input type="text" name="couweek" class="form-control" id="couweek_add_input" required>
								</div>
							</div>
							<div class="form-group">
								<label class="col-sm-2 control-label">教室</label>
								<div class="col-sm-10">
									<input type="text" name="couroom" class="form-control" id="couroom_add_input">
								</div>
							</div>
							<div class="form-group">
								<label class="col-sm-2 control-label">学分</label>
								<div class="col-sm-10">
									<input type="text" name="credits" class="form-control" id="credits_add_input">
								</div>
							</div>
							<div class="form-group">
								<label class="col-sm-2 control-label">学时</label>
								<div class="col-sm-10">
									<input type="text" name="period" class="form-control" id="period_add_input">
								</div>
							</div>
							<div class="form-group">
								<label class="col-sm-2 control-label">总人数</label>
								<div class="col-sm-10">
									<input type="text" name="totalnum" class="form-control" id="totalnum_add_input">
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
				url: "${APP_PATH}/teacher/getTeaCouInfo",
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
				var subname = $("<td></td>").append(item.subject.subname);
				var coutime = $("<td></td>").append(item.coutime);
				var couweek = $("<td></td>").append(item.couweek);
				var couroom = $("<td></td>").append(item.couroom);
				var credits = $("<td></td>").append(item.credits);
				var period = $("<td></td>").append(item.period);
				var totalnum = $("<td></td>").append(item.totalnum);
				var couchange = $("<td></td>").css({ "padding": "3px" }).append(
						$("<button></button>")
							.addClass("btn btn-primary btn-sm")
							.append($("<span></span>").addClass("glyphicon glyphicon-pencil"))
							.append("修改")
							.click(function() {
								console.log("修改click触发");
								modify(item.couid);
							})
										);
				var coudelete = $("<td></td>").css({ "padding": "3px" }).append(
					$("<button></button>")
						.addClass("btn btn-primary btn-sm")
						.append($("<span></span>").addClass("glyphicon glyphicon-trash"))
						.append("删除")
						.click(function() {
							console.log("删除click触发");
							del(item.couid);
							})
						);
				
				$("<tr></tr>")
					.append(xh)
					.append(subname)
					.append(coutime)
					.append(couweek)
					.append(couroom)
					.append(credits)
					.append(period)
					.append(totalnum)
					.append(couchange)
					.append(coudelete)
					.appendTo("#emps_table tbody");
			});
		}
		
		function del(id){
			$.ajax({
				url: "${APP_PATH}/teacher/delCouById",
				data: "couid=" + id,
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
				url: "${APP_PATH}/teacher/getCouById",
				data: "couid=" + id,
				type: "GET",
				success: function (result) {
					if (result.code === 100){
						var course = result.extend.course;
						console.log(course);
						$("#couid_update_input").val(course.couid);
						$("#subid_update_input").val(course.subject.subid);
						$("#coutime_update_input").val(course.coutime);
						$("#couweek_update_input").val(course.couweek);
						$("#couroom_update_input").val(course.couroom);
						$("#credits_update_input").val(course.credits);
						$("#period_update_input").val(course.period);
						$("#totalnum_update_input").val(course.totalnum);
						
						$('#couModifyModal').modal('show')
					}
				}
			});
		}
		
		function toModify(){
			$.ajax({
				url: "${APP_PATH}/teacher/changeCouInfo",
				data: $("#couModifyModal form").serialize(),
				type: "POST",
				success: function (result) {
					console.log(result);
					if (result.code===100){
						$('#couModifyModal').modal('hide');
						to_page(gpn);
					}
				}
			});
		}
		
		function toAdd(){
			$.ajax({
				url: "${APP_PATH}/teacher/addCourse",
				data: $("#couAddModal form").serialize(),
				type: "POST",
				success: function (result) {
					console.log(result);
					if (result.code===100){
						$('#couAddModal').modal('hide');
						to_page(gpn);
					}
				}
			});
			
		}
		
		
	</script>

</body>
</html>