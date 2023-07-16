<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>미식가 포인트</title>
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
			<h1 class="text-center">포인트</h1>
			<button type="button" class="btn home bg-primary"><i class="fa-solid fa-house fa-2xl"></i></button>
		</header>
		
		<section class="container">
			<div class="d-flex align-items-center mt-3">
				<h3 class="font-weight-bold">My포인트&nbsp</h3>
				<button type="button" class="btn btn-light btn-sm border border-dark">이용안내</button>
			</div>
			
			<div class="d-flex align-items-center mt-2">
				<img width="30" src="/static/images/point.png">
				<div class="d-flex ml-3">
					<h3 class="font-weight-bold">4</h3>
					<h3>원</h3>
				</div>
			</div>
			
			<hr>
			
			<div class="d-flex justify-content-between align-items-center">
				<p>적립 예정 포인트</p>
				<p>0원</p>
			</div>
			
			<div class="d-flex justify-content-between align-items-center">
				<p>소멸 예정 포인트(이번달)</p>
				<p>4원</p>
			</div>
			
			<hr>
			
			<div class="d-flex align-items-center">
				<img width="30" class="col-2" src="/static/images/minus.png">
				<div class="col-6">
					<span class="font-weight-bold">족발야식장</span>
					<span class="text-secondary">2023.01.02</span>
				</div>
				<div class="col-4 text-right">
					<span class="font-weight-bold">-60</span>원<br>
					<span>사용</span>
				</div>
			</div>
			<hr>
			
			<div class="text-center">
				<p class="text-secondary">최근 20건 내역만 확인할 수 있습니다.</p>
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
		})
	</script>
</body>
</html>