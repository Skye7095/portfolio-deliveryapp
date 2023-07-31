<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>라이더 my페이지</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">


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
			<h1 class="text-center">my페이지</h1>
		</header>
		
		<section class="container">
			<div class="text-center my-3">
				<button type="button" id="profileImgBtn" class="btn"><img width="100" src="/static/images/profile image.png"></button>
				<input class="profile mt-3 d-none" type="file" multiple id="profileFileInput">
			</div>
			
			<div data-toggle="modal" data-target="#nickNameUpdateBtnModal">
				<button type="button" id="nickNameUpdateBtn" class="border border-secondary btn btn-lg btn-block btn-light mt-3" data-bs-toggle="button">
					<div class="d-flex justify-content-between align-items-center">
						<span class="font-weight-bold">닉네임</span>
						<div class="d-flex align-items-center">
							<span class="text-secondary" style="font-size:12px">홍길동</span>
							<span class="text-secondary"> ></span>
						</div>
					</div>
				</button>
			</div>
			
			<div data-toggle="modal" data-target="#emailUpdateBtnModal">
				<button type="button" id="emailUpdateBtn" class="border border-secondary btn btn-lg btn-block btn-light mt-3" data-bs-toggle="button">
					<div class="d-flex justify-content-between align-items-center">
						<span class="font-weight-bold">이메일</span>
						<div class="d-flex align-items-center">
							<span class="text-secondary" style="font-size:12px">hongildong@naver.com</span>
							<span class="text-secondary"> ></span>
						</div>
					</div>
				</button>
			</div>
			
			<div data-toggle="modal" data-target="#pwUpdateBtnModal">
				<button type="button" id="pwUpdateBtn" class="border border-secondary btn btn-lg btn-block btn-light mt-3" data-bs-toggle="button">
					<div class="d-flex justify-content-between align-items-center">
						<span class="font-weight-bold">비밀번호 변경</span>
						<span class="text-secondary"> ></span>
					</div>
				</button>
			</div>
			
			<div data-toggle="modal" data-target="#phoneUpdateBtnModal">
				<button type="button" id="phoneUpdateBtn" class="border border-secondary btn btn-lg btn-block btn-light mt-3" data-bs-toggle="button">
					<div class="d-flex justify-content-between align-items-center">
						<span class="font-weight-bold">휴대폰번호 변경</span>
						<span class="text-secondary"> ></span>
					</div>
				</button>
			</div>
			
			<button type="button" id="identityChangeBtn" class="border border-secondary btn btn-lg btn-block btn-light mt-3" data-bs-toggle="button">
				<div class="d-flex justify-content-between align-items-center">
					<span class="font-weight-bold">신분 변경</span>
					<span class="text-secondary"> ></span>
				</div>
			</button>
		</section>
	</div>
	
	<footer class="d-flex justify-content-between align-items-center border-top">
		<button type="button" class="btn footerBtn">
			<img width="35" src="/static/images/bell.png">
		</button>
		<button type="button" class="btn footerBtn">
			<img width="35" src="/static/images/history.png">
		</button>
		<button type="button" class="btn footerBtn">
			<img width="35" src="/static/images/info.png">
		</button>
	</footer>
	
	<script>
		$(document).ready(function(){
			
			$(".back").on("click", function(){
				history.back();
			})
		
		})
	</script>
</body>
</html>