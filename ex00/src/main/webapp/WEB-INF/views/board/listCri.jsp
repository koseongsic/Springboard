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
	<nav aria-label="Page navigation">
		<ul class="pagination">
			<!-- disabled가 있으면 마우스 커서가 금지표시로 바뀐다. -->
			<li class=disabled><a href="#" aria-label="Previous"> <span
					aria-hidden="true">«</span>
			</a></li>
			<!-- 현재 페이지 -->
			<li class="active"><a href="#">1</a></li>
				<li><a href="#">2</a></li>
				<li><a href="#">3</a></li>
				<li><a href="#">4</a></li>
				<li><a href="#">5</a></li>
				<li><a href="#" aria-label="Next"> <span aria-hidden="true">»</span>
			</a></li>
		</ul>
	</nav>
</body>
<div>
	<a href='/board/register' onClick='fn_write()' class="btn btn-success">글쓰기</a>
</div>
</html>