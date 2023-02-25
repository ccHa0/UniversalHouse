<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>新增留言</title>
<c:set var="memberPk" value="${ LoginOK.memberPk }" />

</head>
<body>

	<c:choose>
	
	    <c:when test="${empty LoginOK}">
	    
	    	 <form:form method="POST" action="<c:url value='/member/login/login' />">
				<input type="submit" value="登入" />
			</form:form>     
	    
	    </c:when>
	    
	    <c:otherwise>        
	        <form method="POST" action="<c:url value='/newMessage' />">
		
				<input type="hidden" name="memberPk" value="${memberPk}">
				<input type="hidden" name="articleId" value="${param.articleId}">
				<textarea name="content" placeholder="我覺得..." required></textarea>
				<input type="submit" value="發表留言" />
			</form>        
	    </c:otherwise>
	    
	</c:choose>


</body>

</html>