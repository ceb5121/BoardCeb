<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Main Page</title>
<style>
table {
	margin-top:0px;
	padding: 35px 0px;
	width: 60%;
	border: 1px solid grey;
	border-radius: 6px;
	font-size: .9em;
}
td,th {
	text-align: center;
	padding: 1em .5em;
	vertical-align: middle;
}
button {
	border-radius: 6px;
	background-color: grey;
	color: white;
	height:30px;
	cursor: pointer;
	margin-right: 25px;
}
</style>
</head>
<body>
<h2>Board</h2>
<div>
<header>
	<h3>게시판 글 목록</h3><br><br>
	<button onclick="location.href='/ex/board/write'">글쓰기</button>
	<!-- 페이지 구현하면 글쓰기버튼 우측 하단으로 내리기 -->
</header>
<div>
	<table>
		<thead>
			<tr>
				<th>No</th>
				<th>제목</th>
				<th>작성자</th>
				<th>작성일자</th>
				<th>조회수</th>
			</tr>
		</thead>
		<tbody>
			<c:forEach items="${list }" var="board">
			<tr onclick="location.href='/ex/board/read?board_num=${board.board_num}'">
				<td>${board.board_num }</td>
				<td>${board.title }</td>
				<td>${board.user_id }</td>
				<td><fmt:formatDate pattern="yyyy-MM-dd" value="${board.regdate }" /></td>
				<td>${board.viewcnt }</td>
			</tr>
			</c:forEach>
		</tbody>
	</table>
</div>
</div>
</body>
</html>