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
	<%@ include file="../../static/include/navbar.jsp"%>
	<div class="container">
		<!-- 标题 -->
		<div class="row">
			<div class="col-md-12">
				<h1>学生选课列表</h1>
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
							<th>课程号</th>
							<th>课程名</th>
							<th>课程简介</th>
							<th>类型</th>
							<th>上课时间</th>
							<th>所属学院</th>
							<th>所属专业</th>
							<th>总人数</th>
							<th>选择</th>
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

	</div>
	<!-- /container -->
	<%@ include file="../../static/include/js.jsp"%>
	<!-- pagebar.js 分页信息、上下页跳转js函数 -->
	<script type="text/javascript" src="../../static/include/pagebar.js"></script>

	<script type="text/javascript">
	
		var totalRecord, currentPage;
		//加载首页数据
		$(function() {
			$("#navbar li:eq(1)").addClass("active");
			to_page(1);
		});

		function to_page(pn) {
			$.ajax({
				url : "${APP_PATH}/student/selectCourse",
				data : "pn=" + pn,
				type : "GET",
				success : function(result) {
					//1、解析并显示员工数据
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
			$.each(emps, function(index, item) {
				var xh = $("<td></td>").append(index + 1);
				var couId = $("<td></td>").append(item.couid);
				var subName = $("<td></td>").append(item.subject.subname);
				var subIntro = $("<td></td>").append(item.subject.subintro);
				var subType = $("<td></td>").append(item.subject.subtype);
				var coutime = $("<td></td>").append(item.coutime);
				var subColl = $("<td></td>").append(item.subject.subcoll);
				var subPro = $("<td></td>").append(item.subject.subpro);
				var couTotalnum = $("<td></td>").append(item.totalnum);
				var select = $("<td></td>").css({"padding":"3px"}).append(
						$("<button></button>")
						.addClass("btn btn-primary btn-sm edit_btn")
						.append($("<span></span>").addClass("glyphicon glyphicon-pencil"))
						.append("选择")
						.attr("id", item.couid)
						.click(function() {
								console.log("选着click触发");
								addCou(item.couid);
							})
				);

				$("<tr></tr>").append(xh)
					.append(couId)
					.append(subName)
					.append(subIntro)
					.append(subType)
					.append(coutime)
					.append(subColl)
					.append(subPro)
					.append(couTotalnum)
					.append(select)
					.appendTo("#emps_table tbody");
			});
		}
		

		function addCou(id) {
			$.ajax({
				url : "${APP_PATH}/student/addCou",
				data : "couid="+ id,
				type : "GET",
				success : function(result) {
					console.log(result);
					if (result.code === 100) {
						$("#"+id).prop('disabled', true);
					}
				}
			});

		}
	</script>

	
</body>

</html>