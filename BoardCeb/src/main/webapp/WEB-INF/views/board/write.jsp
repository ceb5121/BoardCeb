<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert Board</title>
<style>
input {
	margin-top: 1px;
	width: 500px;
	height: 32px;
	font-size: 15px;
	border: 0;
	border-radius: 5px;
	outline: none;
	padding-left: 12px;
}
input[type="submit"] {
	height: 44px;
	width: 500px;
	fontt-weright: bolder;
	border: none;
	cursor: pointer;
	margin-top: 20px;
}
textarea {
	border: 1px solid grey;
	display: block;
	box-sizing: border-box;
	resize: vertical;
	border-radius: 6px;
	outline: none;
	padding: 10px;
	height: 300px;
	width: 1000px;
}
</style>
</head>
<body>
<h2>게시판 글 등록</h2>
<form action='/ex/board/write' method='post'>
	<p>제목</p>
	<input type="text" name="title" placeholder="제목을 입력하세요">
	<p>작성자</p> <!-- 이 부분 로그인 구현하면 삭제하고 로그인유저 아이디를 넘길 예정 -->
	<input type="text" name="user_id" placeholder="이름을 입력하세요">
	<p>내용</p>
	<div>
		<textarea name="context" placeholder="내용을 입력하세요"></textarea>
		<br>
	</div>
	<div>
		<input type="submit" value="등록하기">
	</div>
</form>
</body>
</html>