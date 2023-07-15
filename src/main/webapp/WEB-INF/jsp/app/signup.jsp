<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원가입</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">

<script src="https://code.jquery.com/jquery-3.6.3.min.js" integrity="sha256-pvPw+upLPUjgMXY0G+8O0xUf+/Im1MZjXxxgOcBQBXU=" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>

<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.3.0/font/bootstrap-icons.css">

<link rel="stylesheet" href="/static/css/commonstyle.css" type="text/css">

<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Dongle:wght@700&display=swap" rel="stylesheet">

<script src="https://kit.fontawesome.com/8f680e510d.js" crossorigin="anonymous"></script>
</head>
<body>
	<div id="wrap">
		<header id="header" class="bg-primary">
			<h1 class="text-center">회원가입</h1>
		</header>
		
		<section  class="container">
			<div class="btn-group my-3 d-flex justify-content-center">
				<input type="radio" class="btn-check" name="identityRadio" id="user" value="user" autocomplete="off" checked>
				<label class="btn btn-outline-primary" for="user">미식가</label>
				
				<input type="radio" class="btn-check" name="identityRadio" id="store" value="store" autocomplete="off">
				<label class="btn btn-outline-primary" for="store">사장님</label>
				
				<input type="radio" class="btn-check" name="identityRadio" id="rider" value="rider" autocomplete="off">
				<label class="btn btn-outline-primary" for="rider">라이더</label>
			</div>
			
			<article class="userSignupBox my-3 border border-secondary">
				<div class="my-3 container">
					<div class="input-group mb-3">
						<input type="text" class="form-control" placeholder="아이디" id="userIdInput">
						<button class="btn btn-primary" type="button" id="duplicatedChecked1">중복확인</button>
					</div>
					<div class="input-group mb-3 userPwEye">
						<input type="password" class="form-control" placeholder="비밀번호" id="userPasswordInput">
						<button class="btn border border-secondary" type="button" id="userPwEyeBtn"><i class="fa-solid fa-eye"></i></button>
					</div>
					<input type="password" class="form-control my-3" placeholder="비밀번호 재확인" id="userPasswordDoubleInput">
					<input type="text" class="form-control my-3" placeholder="이름" id="userNameInput">
					<input type="text" class="form-control my-3" placeholder="휴대폰번호" id="userPhoneInput">
					<input type="text" class="form-control my-3" placeholder="이메일" id="userEmailInput">
					<input type="text" class="form-control my-3" placeholder="닉네임(필수아님)" id="userNickNameInput">
					
					<div class="d-flex justify-content-center align-items-center mt-5 mb-3">
						<button type="button" class="col-6 btn btn-primary">미식가 가입</button>
					</div>
				</div>
			</article>
			
			<article class="storeSignupBox my-3 border border-secondary d-none">
				<div class="my-3 container">
					<div class="input-group mb-3">
						<input type="text" class="form-control" placeholder="사업자등록번호" id="storeBusinessNumberInput">
						<button class="btn btn-primary" type="button" id="duplicatedChecked2">중복확인</button>
					</div>
					<div class="input-group mb-3 storePwEye">
						<input type="password" class="form-control" placeholder="비밀번호" id="storePasswordInput">
						<button class="btn border border-secondary" type="button" id="storePwEyeBtn"><i class="fa-solid fa-eye"></i></button>
					</div>
					<input type="password" class="form-control my-3" placeholder="비밀번호 재확인" id="storePasswordDoubleInput">
					<input type="text" class="form-control my-3" placeholder="대표자 이름" id="storeOwnerNameInput">
					<input type="text" class="form-control my-3" placeholder="대표자 휴대폰번호" id="storeOwnerPhoneInput">
					
					<div class="d-flex justify-content-center align-items-center mt-5 mb-3">
						<button type="button" class="col-6 btn btn-primary">미식가 가입</button>
					</div>
				</div>
			</article>
			
			<article class="riderSignupBox my-3 border border-secondary d-none">
				<div class="my-3 container">
					<div class="input-group mb-3">
						<input type="text" class="form-control" placeholder="아이디" id="riderIdInput">
						<button class="btn btn-primary" type="button" id="duplicatedChecked3">중복확인</button>
					</div>
					<div class="input-group mb-3 riderPwEye">
						<input type="password" class="form-control" placeholder="비밀번호" id="riderPasswordInput">
						<button class="btn border border-secondary" type="button" id="riderPwEyeBtn"><i class="fa-solid fa-eye"></i></button>
					</div>
					<input type="password" class="form-control my-3" placeholder="비밀번호 재확인" id="riderPasswordDoubleInput">
					<input type="text" class="form-control my-3" placeholder="이름" id="riderNameInput">
					<input type="text" class="form-control my-3" placeholder="휴대폰번호" id="riderPhoneInput">
					<input type="text" class="form-control my-3" placeholder="이메일" id="riderEmailInput">
					
					<div class="d-flex justify-content-center align-items-center mt-5 mb-3">
						<button type="button" class="col-6 btn btn-primary">미식가 가입</button>
					</div>
				</div>
			</article>
		</section>
	</div>
	
	<script>
		$(document).ready(function(){
			
			// identity에 따라서 관련된 div를 숨기기/나타나기
			$("input[name=identityRadio]").on('change', function() {
                if($(this).val() == 'user') {
                	$(".userSignupBox").removeClass("d-none");
                	$(".storeSignupBox").addClass("d-none");
        			$(".riderSignupBox").addClass("d-none");
                } else if($(this).val() == 'store'){
                	$(".userSignupBox").addClass("d-none");
                	$(".storeSignupBox").removeClass("d-none");
        			$(".riderSignupBox").addClass("d-none");
                } else{
                    $(".userSignupBox").addClass("d-none");
                    $(".storeSignupBox").addClass("d-none");
                    $(".riderSignupBox").removeClass("d-none");
                }
            });
			
			// 비번 입력시 눈 보이기/ 숨기기 이벤트
			$("#userPwEyeBtn").on('click',function(){
				$("#userPasswordInput").toggleClass("active");
				
				if($("#userPasswordInput").hasClass("active") == true){
					$("#userPasswordInput").attr('type', "text");
					$("#userPasswordDoubleInput").attr('type', "text");
					$("i").attr("class","fa-solid fa-eye-slash");
				}else{
					$("#userPasswordInput").attr('type', "password");
					$("#userPasswordDoubleInput").attr('type', "password");
					$("i").attr("class","fa-solid fa-eye");
				}
		    });
			
			$("#storePwEyeBtn").on('click',function(){
				$("#storePasswordInput").toggleClass("active");
				
				if($("#storePasswordInput").hasClass("active") == true){
					$("#storePasswordInput").attr('type', "text");
					$("#storePasswordDoubleInput").attr('type', "text");
					$("i").attr("class","fa-solid fa-eye-slash");
				}else{
					$("#storePasswordInput").attr('type', "password");
					$("#storePasswordDoubleInput").attr('type', "password");
					$("i").attr("class","fa-solid fa-eye");
				}
		    });
			
			$("#riderPwEyeBtn").on('click',function(){
				$("#riderPasswordInput").toggleClass("active");
				
				if($("#riderPasswordInput").hasClass("active") == true){
					$("#riderPasswordInput").attr('type', "text");
					$("#riderPasswordDoubleInput").attr('type', "text");
					$("i").attr("class","fa-solid fa-eye-slash");
				}else{
					$("#riderPasswordInput").attr('type', "password");
					$("#riderPasswordDoubleInput").attr('type', "password");
					$("i").attr("class","fa-solid fa-eye");
				}
		    });
		})
	</script>
</body>
</html>