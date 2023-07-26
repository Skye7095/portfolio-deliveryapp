<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>배달 카테고리</title>
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
			<div  class="d-flex justify-content-between align-items-center">
				<a href="/app/main/view" class="text-dark col-4"><i class="fa-solid fa-left-long fa-2xl"></i></a>
				<h1 class="text-center col-4">배달</h1>
				<div class="col-4"></div>
			</div>
			
		</header>
		
		<nav id="nav">
			<ul class="nav nav-tabs">
				<li class="nav-item">
				  <a class="nav-link active" href="#">한식</a>
				</li>
				<li class="nav-item">
				  <a class="nav-link" href="#">중식</a>
				</li>
				<li class="nav-item">
				  <a class="nav-link" href="#">일식</a>
				</li>
				<li class="nav-item">
				  <a class="nav-link" href="#">피자</a>
				</li>
				<li class="nav-item">
				  <a class="nav-link" href="#">치킨</a>
				</li>
				<li class="nav-item">
				  <a class="nav-link" href="#">햄버거</a>
				</li>
				<li class="nav-item">
				  <a class="nav-link" href="#">분식</a>
				</li>
				<li class="nav-item">
				  <a class="nav-link" href="#">카페</a>
				</li>
				<li class="nav-item">
				  <a class="nav-link" href="#">야식</a>
				</li>
			</ul>
		</nav>
		
		<section class="container">
			<div class="d-flex mt-3">
				<img width="100" src="/static/images/info.png">
				<div>
					<span class="font-weight-bold">왕돈까스 & 왕냉면 구로사거리점</span><br>
					<i class="fa-solid fa-star" style="color: #ece509;"></i><span class="font-weight-bold">4.9</span>(100+) <br>
					배달 34~49분 <br>
					<span class="text-secondary">최소주문</span>  &nbsp &nbsp 14,000원
				</div>
			</div>
			<hr>
		</section>
	</div>
	
	<footer class="d-flex justify-content-between align-items-center border-top">
		<button type="button" class="btn footerBtn">
			<img width="35" src="/static/images/search.png">
		</button>
		<button type="button" class="btn footerBtn">
			<img width="35" src="/static/images/like.png">
		</button>
		<button type="button" class="btn footerBtn">
			<img width="35" src="/static/images/cart.png">
		</button>
		<button type="button" class="btn footerBtn">
			<img width="35" src="/static/images/history.png">
		</button>
		<button type="button" class="btn footerBtn">
			<img width="35" src="/static/images/info.png">
		</button>
	</footer>
</body>
</html>