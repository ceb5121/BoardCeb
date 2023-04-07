<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
button {
	height: 34px;
	width: 50px;
	fontt-weright: bolder;
	border: none;
	cursor: pointer;
	margin-top: 20px;
}
</style>
</head>
<body>

<div>
	<div>
		<div>${board.title }</div>
		<div>
			<dl>
				<dt>작성자</dt>
				<dd>${board.user_id }</dd>
			</dl>
			<dl>
				<dt>작성일</dt>
				<dd><fmt:formatDate pattern="yyyy-MM-dd" value="${board.regdate }" /></dd>
			</dl>
			<dl>
				<dt>조회수</dt>
				<dd>${board.viewcnt }</dd>
			</dl>
		</div>
		<div>${board.context }</div>
	</div>
</div>
<button onclick="location.href='/ex/board/list'">목록</button>
<!-- 로그인 구현 후 관리자에 한해서 하기 버튼 발생 예정 -->
<button onclick="location.href='/ex/board/modify?board_num=${board.board_num}'">수정</button>
<button onclick="location.href='/ex/board/remove?board_num=${board.board_num}'">삭제</button>
</body>
</html>