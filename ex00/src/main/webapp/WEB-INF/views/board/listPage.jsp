<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="false"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> 
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
						onClick="location.href='/board/readPage?bno=${boardVO.bno}'">
						${boardVO.title}
					</th>
					<th>${boardVO.writer}</th>
					<th>${boardVO.regdate}</th>
					<th>${boardVO.readcnt}</th>
				</tr>
			</c:forEach>

		</tbody>
	</table>
	<div class="text-center">
		<ui class="pagination">
			<c:if test="${pageMaker.prev}">
				<li><a href="listPage?page=${pageMaker.startPage-1}">&laquo;</a></li>
			</c:if>	
			
			<c:forEach begin ="${pageMaker.startPage}" end="${pageMaker.endPage}" var="idx">
				<li
				  <c:out value="${pageMaker.cri.page ==idx ?' class=active ':''}"/>>
				  <a href ="listPage?Page=${idx}">${idx}</a>			
			</c:forEach>
			<c:if test="${pageMaker.next && pageMaker.endPage>0}">
				<li><a href = "listPage?page=${pageMaker.endPage+1}">&raquo;</a></li>
			</c:if>
		</ui>
	</div>
</body>
<div>
	<a href='/board/register' onClick='fn_write()' class="btn btn-success">글쓰기</a>
</div>
</html>