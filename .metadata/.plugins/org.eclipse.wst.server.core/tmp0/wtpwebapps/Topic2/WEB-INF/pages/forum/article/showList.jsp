<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<title>表單列表</title>

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

	<table id="myTable">

		<thead>
			<tr>
				<th>文章呈現</th>
				<th>文章編號</th>
				<th>更新時間</th>
				<th>領域</th>
				<th>標題</th>
			</tr>
		</thead>
		
		<tbody>
			<c:forEach var="article" varStatus="stat" items="${articles}">
			
				<tr>
					<td>
					
					<form:form method="POST" action="<c:url value='/deleteArticle'/>">
						<input type="hidden" name="articleId" value="${article.articleId}">
						<input type="submit" value="刪除">
					</form:form>	
					
					<form:form method="POST" action="<c:url value='/showArticle'/>">
						<input type="hidden" name="articleId" value="${article.articleId}">
						<input type="submit" value="觀看內文">
					</form:form>	
		
					<td>${article.articleId}</td>
					<td>${article.updateTime}</td>
					<td>${article.topicName}</td>
					<td>${article.title}</td>
				</tr>
				
			</c:forEach>
			
		</tbody>
		
	</table>
	
	<a href="<c:url value='/frontPage' />">回首頁</a>
	
</body>

</html>