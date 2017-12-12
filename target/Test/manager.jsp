<%@ page language="java" import="java.util.*" contentType="text/html;charset=UTF-8"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>管理界面</title>
<link rel="stylesheet"
	href="http://cdn.static.runoob.com/libs/bootstrap/3.3.7/css/bootstrap.min.css">
<script type="text/javascript"
	src="js/jquery-3.2.1.min.js"></script>
<script type="text/javascript"
	src="js/bootstrap.js"></script>
</head>
<body>
	<div class="panel panel-primary">
		<div class="panel-heading">
			<h3 class="panel-title">新闻后台</h3>
		</div>
		<br>
		<form action="${pageContext.request.contextPath }/news?opt=2"
			method="post">
			<div class="form-group">
				<div class="col-sm-10">
					<input type="text" class="form-control" id="lastname"
						name="lastname" placeholder="搜索新闻">
				</div>
				<button type="submit" class="btn btn-primary">搜索</button>
			</div>
		</form>
		<div class="panel-body">
			<table class="table table-hover">
				<thead>
					<tr>
						<th>新闻id</th>
						<th>新闻标题</th>
						<th>作者</th>
						<th>点击次数</th>
						<th>状态</th>
						<th>新闻发布时间</th>
						<th>修改</th>
						<th>删除</th>
					</tr>
				</thead>
				<tbody>
					<!-- 遍历list -->
					<c:forEach items="${list}" var="news">
					<tr>
						<td>${news.id}</td>
						<td>${news.title}</td>
						<td>${news.author}</td>
						<td>${news.clicks}</td>
						<td>${news.state}</td>
						<td><fmt:formatDate value="${news.newsTime}" pattern="yyyy-MM-dd HH:mm:ss"/> </td>
						<td><a href="${pageContext.request.contextPath }/News/editView?newsid=${news.id }">修改</a></th>
						<td>删除</th>
					</tr>
					</c:forEach>
				</tbody>
			</table>
			<p>
				<a href="./news?opt=3" class="btn btn-default btn-sm"><span
					class="glyphicon glyphicon-plus"></span> 添加新闻</a>
			</p>
		</div>
	</div>
</body>
</html>