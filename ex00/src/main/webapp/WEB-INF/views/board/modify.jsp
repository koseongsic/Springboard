<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>글쓰기</title>
<!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
 
<!-- Optional theme -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css" integrity="sha384-rHyoN1iRsVXV4nD0JutlnGaslCJuC7uwjduW9SVrLvRYooPp2bWYgmgJQIXwl/Sp" crossorigin="anonymous">
 
<!-- Latest compiled and minified JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>
</head>
<body>
<div class="container">
<table class="table table-bordered">
    <thead>
        <caption> 게시판 글쓰기 </caption>
    </thead>
    <tbody>   
    	<form action="/board/modifyPage" method="post" >
            <tr>
                <th>제목: </th>
                <td><textarea type="text" name="title" class="form-control"/>${boardVO.title }</textarea></td>
            </tr>
            <tr>
                <th>내용: </th>
                <td><textarea cols="10" rows="20" name="content" class="form-control"/>${boardVO.content}</textarea></td>
            </tr>
            <tr>
                <th>작성자: </th>
                <td><textarea cols="10"  name="writer" class="form-control">${boardVO.writer }</textarea></td>
            </tr>
            <input type='hidden' name='bno' value="${boardVO.bno}"/>
            <tr>
                <td colspan="2">
                    <button type="submitt" class="pull-right">수정완료</button>
                    <input type="button" value="글 목록으로... " class="pull-right" button onclick="location.href='/board/listpage'"/>
                </td>
            </tr>
    </tbody>
</table>
</div>
</body>
</html>


