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

<!-- <script type="text/javascript">
function login(id, pw){
	$.ajax({
		url:"/login",
		data: {'id':$("#id").val(), 'pw':$("#pw").val()},
		type:'post',
		success:function(data){
			if(data==1){
				alert("로그인 성공");
			}
			if(data==2){
				alert("아이디 혹은 비밀번호가 맞지 않습니다.");
				return false;
			}
		}
	})
}

</script> -->
</head>
<body>
<h1>로그인</h1>
아이디 <input type="text" id="id" name="login_id"><br>
비밀번호 <input type="password" value="pw" name="login_pw"><br>
<input type="login_button" id="login_button" value="로그인">

</body>


</html>