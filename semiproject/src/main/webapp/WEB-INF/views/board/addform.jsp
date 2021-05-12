<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>게시판 글쓰기</title>
<script src="jquery-3.2.1.min.js"></script>
<script>
$(document).ready(function(){

});
</script>
</head>
<body>
<h1>게시판 글쓰기</h1>
<form action="<%=request.getContextPath()%>/board/add" method=post>
<table>
<tr>
<th>제목</th>
<td> <input type=text name="title"></td>
</tr>
<tr>
<th>내용</th>
<td> <textarea cols="50" rows="30" name="contents"></textarea></td>
</tr>
<tr>
<th>작성자</th>
<td> <input type=text name="writer"></td>
</tr>

<tr>
<td><input type=submit value="추가"></td>
</tr>


</table>
</form>
</body>
</html>