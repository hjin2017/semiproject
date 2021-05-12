<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
table{
 	width:100%;
 	margin:auto;
 	text-align:center;
 }
</style>
<script src="resources/jquery-3.2.1.min.js"></script>
<script>
$(document).ready(function(){

});
</script>
</head>
<body>
<h1> 게시판 </h1>
<br>
<table border="1">
	<tr>
		<td>No.</td>
		<td width="50%">제목</td>
		<td>작성자</td>
		<td>조회수</td>
	</tr>
	<c:forEach items="${boardlist }" var="board">
		<tr>
			<td>${board.seq }</td>
			<td><a href="<%=request.getContextPath() %>/board/detail?seq=${board.seq}">${board.title }</a></td>
			<td>${board.writer }</td>
			<td>${board.viewcount }</td>
		</tr>
	</c:forEach>
</table>
<input type="button" value="글쓰기" style="float: right;" onclick="location.href='<%=request.getContextPath() %>/board/add'"><br>

</body>
</html>