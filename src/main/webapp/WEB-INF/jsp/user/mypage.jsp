<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>미식가 my배달</title>
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
			<h1 class="text-center">신분 선택</h1>
			<button type="button" class="btn home bg-primary"><i class="fa-solid fa-house fa-2xl"></i></button>
		</header>
		
		<section class="container">
			<div class="my-3 d-flex align-items-center">
				<img width="100" src="/static/images/profile image.png" class="mr-2">
				<h3>귀한분, 홍길동</h3>
			</div>
			<hr>
			<div class="my-3 d-flex justify-content-around align-items-center">
				<button type="button" class="btn grade bg-white">
					<img width="50" src="/static/images/grade.png">
					<p class="mt-2 text-center">등급</p>
				</button>
				
				<button type="button" class="btn point bg-white">
					<img width="50" src="/static/images/point.png">
					<p class="mt-2 text-center">포인트</p>
				</button>
				
				<button type="button" class="btn info bg-white">
					<img width="50" src="/static/images/info.png">
					<p class="mt-2 text-center">내 정보</p>
				</button>
			</div>
			
			<div class="my-3 d-flex justify-content-around align-items-center">
				<button type="button" class="btn like bg-white">
					<img width="50" src="/static/images/like.png">
					<p class="mt-2 text-center">찜</p>
				</button>
				
				<button type="button" class="btn history bg-white">
					<img class="ml-2" width="50" src="/static/images/history.png">
					<p class="mt-2 text-center">주문내역</p>
				</button>
				
				<button type="button" class="btn review bg-white">
					<img class="mr-1" width="50" src="/static/images/review.png">
					<p class="mt-2 text-center">리뷰</p>
				</button>
			</div>
		</section>
	</div>
	
	<script>
		$(document).ready(function(){
			
			$(".back").on("click", function(){
				history.back();
			})
			
			$(".home").on("click", function(){
				location.href="/app/home/view";
			})
			
			$(".grade").on("click", function(){
				location.href="/user/grade/view";
			})
			
			$(".point").on("click", function(){
				location.href="/user/point/view";
			})
			
			$(".info").on("click", function(){
				location.href="/user/info/view";
			})
			
			$(".like").on("click", function(){
				location.href="/user/like/view";
			})
			
			$(".history").on("click", function(){
				location.href="/user/history/view";
			})
			
			$(".review").on("click", function(){
				location.href="/user/review/view";
			})
		})
	</script>
</body>
</html>