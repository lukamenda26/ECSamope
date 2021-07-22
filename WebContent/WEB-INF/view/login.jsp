<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Login page</title>
</head>
<body>
<h1>ログイン</h1>
<form action="./Product" method="post">
	<ul>
	    <li>ユーザー名：<input type="text" name="user-name"></li>
	    <li>パスワード：<input type="text" name="password"></li>
	</ul>
	<input type="submit" value="送信">
</form>
</body>
</html>