<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>라이더 로그인</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">

<script src="https://code.jquery.com/jquery-3.6.3.min.js" integrity="sha256-pvPw+upLPUjgMXY0G+8O0xUf+/Im1MZjXxxgOcBQBXU=" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>

<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.3.0/font/bootstrap-icons.css">

<link rel="stylesheet" href="/static/css/commonstyle.css" type="text/css">

<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Dongle:wght@700&display=swap" rel="stylesheet">
</head>
<body>
	<div id="wrap">
		<header id="header" class="bg-primary">
			<h1 class="text-center">로그인</h1>
		</header>
		
		<section class="container">
			<h2 class="text-center my-3">라이더 로그인</h2>
			<div class="my-3">
				<input type="text" class="form-control my-3" placeholder="아이디" id="loginIdInput">
				<input type="password" class="form-control my-3" placeholder="비밀번호" id="passwordInput">
			</div>
			
			<div class="d-flex justify-content-center align-items-center my-5">
				<button type="button" class="col-6 btn btn-primary" id="signinBtn">로그인</button>
			</div>
			
			<div class="d-flex justify-content-center align-items-end">
				<a class="text-dark" href="/app/findID/view">아이디찾기</a>&nbsp; | &nbsp;
				<a class="text-dark" href="/app/resetPW/view">비밀번호찾기</a>
			</div>
			
			<div class="d-flex justify-content-center align-items-end my-2">
				<a href="/app/signup/view">회원가입</a>
			</div>
		</section>
	</div>
	
	<script>
		$(document).ready(function(){
			
			$("#signinBtn").on("click", function(){
				let id = $("#loginIdInput").val();
				let password = $("#passwordInput").val();
				
				if(id == ""){
					alert("아이디를 입력하세요");
					return;
				}
				
				if(password == ""){
					alert("비밀번호를 입력하세요");
					return;
				}
				
				$.ajax({
					type: "post"
					, url: "/rider/signin"
					, data: {"loginId": id, "password":password}
					, success: function(data){
						if(data.result == "success"){
							location.href="/rider/mypage/view"
						}else{
							alert("로그인 실패");
						}
					}
					, error:function(){
						alert("로그인 에러");
					}
				})
			});
		})
	</script>
</body>
</html>