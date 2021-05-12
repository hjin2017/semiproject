<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Welcome StudyMate</title>
<script src="jquery-3.2.1.min.js"></script>
<script>
$(document).ready(function(){

});
</script>
</head>
<body>
<h1> StudyMate </h1><br>
<h3> 메인 메뉴 </h3><br>
1. <a href = '<%=request.getContextPath() %>/boardlist'> 스터디 찾기 </a><br>
2. <a href = '<%=request.getContextPath() %>/board/add'> 스터디 만들기 </a></br>

<input type="button" value="회원가입"  onclick="location.href='<%=request.getContextPath() %>/member/signup'">
<input type="button" value="로그인"  onclick="location.href='<%=request.getContextPath() %>/member/login'">
<input type="button" value="로그아웃"  onclick="location.href='<%=request.getContextPath() %>/member/logout'"><br>
</body>
</html>