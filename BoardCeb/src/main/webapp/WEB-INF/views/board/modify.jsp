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
	height: 34px;
	width: 50px;
	fontt-weright: bolder;
	border: none;
	cursor: pointer;
	margin-top: 20px;
}
textarea {
	border: 0px solid grey;
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
<form action='/ex/board/modify' method='post'>
	<p>제목</p>
	<input type="text" name="title" value="${board.title }">
	<input type="hidden" name="board_num" value="${board.board_num }">
	<input type="hidden" name="user_id" value="${board.user_id }">
	<input type="hidden" name="regdate" value="${board.regdate }">
	<input type="hidden" name="viewcnt" value="${board.viewcnt }">
	<p>내용</p>
	<div>
		<textarea name="context">${board.context }</textarea>
		<br>
	</div>
	<div>
		<input type="submit" value="수정">
	</div>
</form>
</body>
</html>