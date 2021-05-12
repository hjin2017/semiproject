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

<script type="text/javascript">
function signUp(){
	$.ajax({
		url:"/signUp",
		data: $("#signupform").serialize(),
		type:'post',
		success:function(data){
			if(data==1){
				alert("회원가입이 완료되었습니다.");
				location.href = "/member/login"
			}
			else if(data==2){
				alert("이미 존재하는 아이디입니다.");
				return false;
			}
			else if(data==3){
				alert("이미 가입된 이메일입니다.");
				return false;
			}
			
		}
	})
}
</script>
</head>

<body>
<h1> 회원 가입창 </h1>
<form id="signupform" method="POST">
	
	아이디 <input type="text" id="id" name="id">

	<div>비밀번호</div>
	<div><input type="password" id="pw" name="pw"></div>
	<div>이름</div>
	<div><input type="text" id="name" name="name"></div>
	<div>이메일</div>
	<div><input type="text" id="email" name="email"></div>
	
	<div><input type="button" value="회원가입"></div>

</form>
</body>
</html>