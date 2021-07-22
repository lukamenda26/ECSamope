<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<%@ page import = "beans.Sushi, java.util.List" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Homemade jam shop</title>
</head>
<body>
    <p>ログイン日時：<%= new java.util.Date() %></p>
    <% String userName = (String) request.getAttribute("userName"); %>
    <% String password = (String) request.getAttribute("password"); %>
    <% Sushi oneSushi = (Sushi) request.getAttribute("oneSushi"); %>
    <% List<Sushi> list = (List<Sushi>)request.getAttribute("list"); %>

    <p>ようこそ、<c:out value="${userName}" /> さん！</p>
    <!-- パスワードはあとで非表示にする。 -->
    <p>（パスワード：<c:out value="${password}" /> ）</p>
    <div><a href="./Login">ログイン</a></div>
    <h1>手作りジャム屋さん</h1>
    
    <ul>
        <li><a href="#">オレンジマーマレード</a></li>
        <li><a href="#">イチゴ＆パプリカ</a></li>
        <li><a href="#">焼きりんご</a></li>
        <li><a href="#">プルーン</a></li>
        <li><a href="#">ピオーネ</a></li>
        <li><a href="#">柚子＆八朔</a></li>
        <li><a href="#">洋梨（ラ・フランス）</a></li>
    </ul>
    
    <h3>お寿司リスト</h3>
    <ol>
    <% if (list != null) { %>
    <% for (Sushi s : list) { %>
    <% int price = s.getPrice(); %>
    	<li><c:out value="${price}" /></li>
    <% } %>
    <% } %>
    </ol>
</body>
</html>