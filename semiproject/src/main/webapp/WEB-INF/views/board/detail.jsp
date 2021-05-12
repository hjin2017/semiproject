<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="jquery-3.2.1.min.js"></script>
<script>
$(document).ready(function(){

});
</script>
</head>
<body>
<h1>게시판</h1>
<table>
<tr>
	<th>제목: </th>
	<td>${board.title}</td>
</tr>
<tr>
	<th>작성자: </th>
	<td>${board.writer }</td>
</tr>
<tr>
	<th>조회수: </th>
	<td>${board.viewcount}</td>
</tr>
<tr>
	<th>내용 :<br></th>
	<td>${board.contents }</td>
</tr>
</table>

<input type="button" value="목록으로" onclick="javascript:location.href='<%=request.getContextPath() %>/boardlist'">

</body>
</html>