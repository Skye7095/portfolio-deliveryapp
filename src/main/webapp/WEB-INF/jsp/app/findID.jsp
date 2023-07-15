<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ID찾기</title>
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
		<header id="header"  class="bg-primary">
			<h1 class="text-center">ID 찾기</h1>
		</header>
		
		<section class="container">			
			<div class="btn-group my-3 d-flex justify-content-center">
				<input type="radio" class="btn-check" name="identityRadio" id="user" value="user" autocomplete="off" checked>
				<label class="btn btn-outline-primary" for="user">미식가</label>
				
				<input type="radio" class="btn-check" name="identityRadio" id="rider" value="rider" autocomplete="off">
				<label class="btn btn-outline-primary" for="rider">라이더</label>
			</div>

			<article class="userMethodCheck my-3 border border-secondary">
				<div class="method-group d-flex justify-content-center mt-3">					
					<div class="form-check mx-3">
					  <input class="form-check-input" type="radio" name="userMethodRadio" value="userPhone" checked>
					  <label class="form-check-label">휴대폰번호</label>
					</div>
					
					<div class="form-check mx-3">
					  <input class="form-check-input" type="radio" name="userMethodRadio" value="userEmail">
					  <label class="form-check-label">이메일</label>
					</div>
				</div>
				
				<div class="my-3 container userPhoneBox">
					<input type="text" class="form-control my-3" placeholder="이름" id="userNameInput">
					<input type="text" class="form-control my-3" placeholder="휴대폰번호" id="userPhoneInput">
				</div>
				
				<div class="my-3 container userEmailBox d-none">
					<input type="text" class="form-control my-3" placeholder="이름" id="userNameInput">
					<input type="text" class="form-control my-3" placeholder="이메일" id="userEmailInput">
				</div>
				
				<div class="d-flex justify-content-center align-items-center mt-5 mb-3">
					<button type="button" class="col-6 btn btn-primary">ID 찾기</button>
				</div>
			</article>
			
			<article class="riderMethodCheck my-3 border border-secondary d-none">
				<div class="method-group d-flex justify-content-center mt-3">					
					<div class="form-check mx-3">
					  <input class="form-check-input" type="radio" name="riderMethodRadio" value="riderPhone" checked>
					  <label class="form-check-label">휴대폰번호</label>
					</div>
					
					<div class="form-check mx-3">
					  <input class="form-check-input" type="radio" name="riderMethodRadio" value="riderEmail">
					  <label class="form-check-label">이메일</label>
					</div>
				</div>
				
				<div class="my-3 container riderPhoneBox">
					<input type="text" class="form-control my-3" placeholder="이름" id="riderNameInput">
					<input type="text" class="form-control my-3" placeholder="휴대폰번호" id="riderPhoneInput">
				</div>
				
				<div class="my-3 container riderEmailBox d-none">
					<input type="text" class="form-control my-3" placeholder="이름" id="riderNameInput">
					<input type="text" class="form-control my-3" placeholder="이메일" id="riderEmailInput">
				</div>
				
				<div class="d-flex justify-content-center align-items-center mt-5 mb-3">
					<button type="button" class="col-6 btn btn-primary">ID 찾기</button>
				</div>
			</article>
		</section>
	</div>
	
	<script>
		$(document).ready(function(){
			
			// phone/email에 따라서 관련된 div를 숨기기/나타나기
			$("input[name=userMethodRadio]").on('change', function() {
                if($(this).val() == 'userPhone') {
                	$(".userPhoneBox").removeClass("d-none");
        			$(".userEmailBox").addClass("d-none");
                } else{
                    $(".userPhoneBox").addClass("d-none");
                    $(".userEmailBox").removeClass("d-none");
                }
            });
			
			$("input[name=riderMethodRadio]").on('change', function() {
                if($(this).val() == 'userPhone') {
                	$(".riderPhoneBox").removeClass("d-none");
        			$(".riderEmailBox").addClass("d-none");
                } else{
                    $(".riderPhoneBox").addClass("d-none");
                    $(".riderEmailBox").removeClass("d-none");
                }
            });
			
			// identity에 따라서 관련된 div를 숨기기/나타나기
			$("input[name=identityRadio]").on('change', function() {
                if($(this).val() == 'user') {
                	$(".userMethodCheck").removeClass("d-none");
        			$(".riderMethodCheck").addClass("d-none");
                } else{
                    $(".userMethodCheck").addClass("d-none");
                    $(".riderMethodCheck").removeClass("d-none");
                }
            });
		})
	</script>
</body>
</html>