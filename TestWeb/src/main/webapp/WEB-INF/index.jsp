<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Welcome</title>
</head>
<body>
<div>
	<form action="/login/loginCheck" method="post">
		<span>帳號:<input type="text" name="account" placeholder="帳號"/></span>
		<br>
		<span>密碼:<input type="password" name="password" placeholder="密碼"/></span>
		<input type="submit" value="送出"/>
	</form>
</div>
<div>
	<a href="/login/register">註冊新帳號</a>
</div>
</body>

<script>

</script>
</html>