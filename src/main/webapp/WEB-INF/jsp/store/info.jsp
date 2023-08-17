<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>가게 정보</title>
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
		<header id="header" class="bg-primary d-flex justify-content-between align-items-center">
			<button type="button" class="btn back bg-primary"><i class="fa-solid fa-left-long fa-2xl"></i></button>
			<h1 class="text-center">가게 정보</h1>
			<button type="button" class="btn home bg-primary"><i class="fa-solid fa-house fa-2xl"></i></button>
		</header>
		
		<section>
			<button type="button" id="createStoreBtn" class="border border-primary btn btn-lg btn-block btn-primary mt-3">
				<div class="d-flex justify-content-between align-items-center">
					<span class="font-weight-bold">가게 기본 정보 입력</span>
					<div class="d-flex align-items-center">
						<span class="text-secondary"> ></span>
					</div>
				</div>
			</button>
			<button type="button" id="moreInfoBtn" class="border border-primary btn btn-lg btn-block btn-primary mt-3">
				<div class="d-flex justify-content-between align-items-center">
					<span class="font-weight-bold">가게 추가 정보 입력</span>
					<div class="d-flex align-items-center">
						<span class="text-secondary"> ></span>
					</div>
				</div>
			</button>
			<button type="button" id="modifyStoreBtn" class="border border-success btn btn-lg btn-block btn-success mt-3">
				<div class="d-flex justify-content-between align-items-center">
					<span class="font-weight-bold">가게 정보 수정</span>
					<div class="d-flex align-items-center">
						<span class="text-secondary"> ></span>
					</div>
				</div>
			</button>
		</section>
			
	<script>
		$(document).ready(function(){	
			$("#createStoreBtn").on("click", function(){
				location.href="/store/insertInfo/view";
			})
			
			$("#moreInfoBtn").on("click", function(){
				location.href="/store/moreInfo/view";
			})
			
			$("#modifyStoreBtn").on("click", function(){
				location.href="/store/modifyInfo/view";
			})
			
			$(".back").on("click", function(){
				history.back();
			})
			
			$(".home").on("click", function(){
				location.href="/app/home/view";
			})
		})
	</script>
</body>
</html>