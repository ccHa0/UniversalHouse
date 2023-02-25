<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>更新文章</title>
<c:set var="memberPk" value="${ LoginOK.memberPk }" />
</head>
<body>
	<form method="POST" action="<c:url value='/updateArticle_CMS' />" enctype="multipart/form-data">
		<input type="hidden" name="articleId" value="${article.articleId}">
		<input type="hidden" name="memberPk" value="${memberPk}">

		<table>

			<tr>
				<td><label>隱私狀態：</label></td>
				<td>
					<select name="status">
						<option value="public" selected>公開</option>
						<option value="hidden">隱藏</option>
						<option value="banned">封禁</option>
						<option value="deleted">用戶端刪除</option>
					</select>
				</td>
			<tr>
			<tr>
				<td><label>讚:</label></td>
				<td><input type="number" name="like" value="${article.like}" min="0"></td>
			</tr>
			<tr>
				<td><label>不喜歡:</label></td>
				<td><input type="number" name="dislike" value="${article.dislike}" min="0"></td>
			</tr>


			<tr>
				<td><label>文章主題：</label><div>${errorTitleDup}</div></td>
				<td><input type="text" name="title" value="${article.title}"/></td>
			</tr>

			<tr>
				<td><label>內容：</label></td>
				<td><textarea name="content">${article.content}</textarea></td>
			</tr>

			<tr>
				<td><label>領域：</label></td>
				<td>
					<select name="topicName">
						<option>文書</option>
						<option>生活</option>
						<option>設計</option>
						<option>資訊</option>
						<option>影視</option>
						<option>顧問</option>
					</select>
				</td>
			</tr>

			<tr>
				<td><label>圖片：</label></td>
				
				<td>
     				 <c:if test="${empty imgs}">
     				 	<input name="images" type="file" accept="image/gif, image/jpeg, image/png" multiple/>
     				 </</c:if>
					
					<c:forEach var="img" varStatus="stat" items="${imgs}">
						<label for="input">
							<img height="50" width="50" src="<c:url value='/getArticleImage?imgNo=${img.imgNo} ' />">
						</label>
						<input hidden id="input" name="images" type="file" accept="image/gif, image/jpeg, image/png" />
					</c:forEach>
				</td>
			</tr>

			<tr>
				<td>
					<input type="submit" value="修改" />
					<input type="reset" value="還原" />
				</td>
			</tr>

		</table>
		
	</form>

	<a href="<c:url value='/CMS' />">回後台</a>

</body>

</html>