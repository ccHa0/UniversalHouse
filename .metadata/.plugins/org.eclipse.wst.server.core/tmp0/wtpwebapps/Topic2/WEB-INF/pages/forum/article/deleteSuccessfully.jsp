<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>刪除成功</title>

<body>
	<h1>刪除成功!!</h1>
	<c:set var="memberPk" value="${ LoginOK.memberPk }" />
	<a href="<c:url value='/searchRecord?memberPk=${memberPk}' />">回到我的紀錄</a>
</body>
</html>
