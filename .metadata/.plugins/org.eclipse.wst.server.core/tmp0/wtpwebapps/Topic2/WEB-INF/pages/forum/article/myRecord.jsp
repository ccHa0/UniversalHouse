<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<title>我的專區</title>

</head>
<c:set var="memberPk" value="${ LoginOK.memberPk }" />
<body>

	<form:form method="POST" action="<c:url value='/searchRecord'/>">
		<input type="hidden" name="memberPk" value="${memberPk}">
		<input type="submit" value="我的紀錄">
	</form:form>	
	
	<a href="<c:url value='/frontPage' />">回首頁</a>
	
</body>

</html>