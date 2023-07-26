<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>검색</title>
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
		<header id="header">
			<div  class="d-flex align-items-center">
				<a href="/app/main/view" class="text-dark mr-1 col-2"><i class="fa-solid fa-left-long fa-2xl"></i></a>

				<div class="d-flex justify-content-center align-items-center col-9 mt-2">
					<input type="text" class="form-control" placeholder="곱창볶음 나와라 뚝딱!">
					<img width="36" height="36" src="/static/images/search.png">
				</div>
			</div>
		</header>
		
		<section class="container">
			<div class="mt-3">
				<div class="d-flex justify-content-between align-items-center">
					<h5>최근 검색어</h5>
					<button type="button" class="btn btn-sm">전체삭제</button>
				</div>
				
				<div class="d-flex">
					<button type="button" class="btn btn-sm">왕돈까스</button>
					<button type="button" class="btn btn-sm"><i class="fa-solid fa-x"></i></button>
				</div>
			</div>
			
			<div class="mt-3">
				<h5>가장 많이 검색하고 있어요</h5>
				<span class="text-secondary">07.26 기준</span><br>
				<button type="button" class="btn btn-lg my-1">1 설빙</button>
				<button type="button" class="btn btn-lg my-1">2 탕후루</button>
				<button type="button" class="btn btn-lg my-1">3 빙수</button>
				<button type="button" class="btn btn-lg my-1">4 배스킨라빈스</button>
				<button type="button" class="btn btn-lg my-1">5 닭발</button>
			</div>
		</section>
</body>
</html>