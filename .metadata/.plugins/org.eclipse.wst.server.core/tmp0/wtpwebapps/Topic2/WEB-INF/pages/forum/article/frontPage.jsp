<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<c:set var="memberPk" value="${ LoginOK.memberPk }" />
<title>論壇</title>

<link rel="stylesheet" href="https://cdn.datatables.net/1.11.3/css/jquery.dataTables.min.css">

<script src="https://code.jquery.com/jquery-3.5.1.js"></script>
<script src="https://cdn.datatables.net/1.11.3/js/jquery.dataTables.min.js"></script>

</head>

<body>

    <script src="https://code.jquery.com/jquery-3.6.1.min.js"></script>
	<script type="text/javascript" charset="utf8" src="https://cdn.datatables.net/1.13.1/js/jquery.dataTables.js"></script>
	<script>

	$(document).ready( function () {
	    $('#myTable').DataTable(); 
	} );
	</script>
	
	<h1>歡迎來到論壇!! ${memberPk}</h1>


	<form action="<c:url value='/createArticle' />">
		<input type="submit" value="新增文章" />
	</form>
	
	<form method="POST" action="<c:url value='/findhByNameFQ' />">
		<input type="search" name="name" value="${param.name}" required>
		<input type="submit" value="搜尋作者" />
	</form>

	<form method="POST" action="<c:url value='/showArticle' />">
		 <input type="search" name="articleId" value="${param.id}" required> <input type="submit" value="以文章編號查詢" />
	</form>


	<table id="myTable">
		<thead>
			<tr>
				<th><label>領域</label></th>
				<th><label>標題</label></th>
				<th><label>更新時間</label></th>
				<th><label>觀看</label></th>
			</tr>
		</thead>
		
		<tbody>
			<c:forEach var="article" varStatus="stat" items="${articles}">
				<tr>
					<td>${article.topicName}</td>
					<td>${article.title}</td>
					<td>${article.updateTime}</td>
	
					<td>
						<form method="POST" action="<c:url value='/showArticle' />">
							<input type="hidden" name="articleId" value="${article.articleId}">
							<input type="submit" value="出發" />
						</form>
					</td>
				</tr>
	
			</c:forEach>
		</tbody>
		
	</table>
	
	<a href="<c:url value='/toMyRecord' />">用戶管理介面</a>
	<a href="<c:url value='/' />">回登入頁面</a>
	<a href="<c:url value='/CMS' />">前往後台</a>

</body>

</html>