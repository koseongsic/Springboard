<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="false"%>
<html xmlns="http://www.w3.org/1999/xhtml">

<head>
<title>게시판</title>
<link rel="stylesheet" href="/resources/css/bootstrap.css">
</head>
<body>
	<table class="table table-striped table-hover">
		<thread>
		<tr>
			<th>번호</th>
			<th>제목</th>
			<th>작성자</th>
			<th>날짜</th>
			<th>조회수</th>
		</tr>
		</thread>
		<tbody>
			<c:forEach items="${list}" var="boardVO">
				<tr>
					<th>${boardVO.bno}</th>
					<td style="cursor: pointer;"
						onClick="location.href='/board/read?bno=${boardVO.bno}'">
						${boardVO.title}
					</th>
					<th>${boardVO.writer}</th>
					<th>${boardVO.regdate}</th>
					<th>${boardVO.readcnt}</th>
				</tr>
			</c:forEach>

		</tbody>
	</table>

</body>
<div>
	<a href='/board/register' onClick='fn_write()' class="btn btn-success">글쓰기</a>
</div>
</html>