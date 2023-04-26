<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>註冊頁面</title>
</head>
<body>
<div>
	<form action="/login/member" method="post">
		<span>帳號:<input type="text" name="account" placeholder="帳號"/></span>
		<span>密碼:<input type="password" name="password" placeholder="8~16大小寫"/></span>
		<span>名稱:<input type="text" name="name" placeholder="王小明"/></span>
		<span>電話:<input type="text" name="phone" placeholder="0912345678"/></span>
		<span>電子郵件:<input type="text" name="email" placeholder="xx@gmail.com"/></span>
		<span>居住地:
			<select name="city">
				<option>北部</option>
				<option>中部</option>
				<option>南部</option>
				<option>東部</option>
				<option>離島</option>
			</select>
		</span>
		<span>圖片:<input type="file" name="photo"/></span>
		<input type="submit" value="送出"/>
	</form>
</div>
</body>
</html>