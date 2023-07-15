<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>신분선택</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">


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
			<h1 class="text-center">신분 선택</h1>
		</header>
		
		<section class="identity container">
			<div>
				<button type="button" id="user" class="border border-dark btn btn-block btn-light my-3" data-bs-toggle="button">미식가</button>
				<button type="button" id="store" class="border border-dark btn btn-block btn-light my-3" data-bs-toggle="button">사장님</button>
				<button type="button" id="rider" class="border border-dark btn btn-block btn-light my-3" data-bs-toggle="button">라이더</button>
				<button type="button" id="admin" class="border border-dark btn btn-block btn-light my-3" data-bs-toggle="button">관리자</button>
			</div>
		</section>
	</div>

	<script>
		$(document).ready(function(){
			$("#user").on("click", function(){
				location.href="/user/signin/view";
			})
			
			$("#store").on("click", function(){
				location.href="/store/signin/view";
			})
			
			$("#rider").on("click", function(){
				location.href="/rider/signin/view";
			})
			
			$("#admin").on("click", function(){
				location.href="/admin/signin/view";
			})
		})
	</script>
</body>
</html>