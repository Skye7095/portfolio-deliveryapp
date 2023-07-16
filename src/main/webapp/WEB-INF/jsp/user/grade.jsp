<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>미식가 등급</title>
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
			<h1 class="text-center">등급</h1>
			<button type="button" class="btn home bg-primary"><i class="fa-solid fa-house fa-2xl"></i></button>
		</header>
		
		
		
		<section class="container">
			<div data-toggle="modal" data-target="#gradeInfoBtnModal">
				<button type="button" id="gradeInfoBtn" class="btn text-primary">배달VIP란?</button>
			</div>
			
			<div class="my-3 text-center">
				<img width="100" src="/static/images/grade1.png">
				<div class="d-flex justify-content-center align-items-end mt-3">
					<h3 class="font-weight-bold">홍길동</h3>
					<h3>님은</h3>
				</div>
				<div class="d-flex justify-content-center align-items-end">
					<h3>이번 달 &nbsp</h3>
					<h3 class="font-weight-bold">귀한분</h3>
					<h3>입니다</h3>
				</div>
			</div>
				
			<div class="container bg-light border border-secondary text-center font-weight-bold">
				<p class="mt-3">5번 더 주문하면</p>
				<p>다음 달 배달 VIP가 됩니다</p>
				<p>7월 누적 주문: 0회</p>
			</div>
			
			<h5 class="text-center font-weight-bold mt-3">등급별 혜택</h5>
				
			<button type="button" id="couponBtn" class="mt-3 btn btn-block btn-primary" disabled>
				<div class="d-flex justify-content-center align-items-end">
					<span>1,000 포인트 &nbsp &nbsp</span>
					<img width="20" src="/static/images/download.png">
				</div>
			</button>
		</section>
	</div>
	
	<!-- modal -->
	<div class="modal fade" id="gradeInfoBtnModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
	  <div class="modal-dialog modal-dialog-centered modal-sm" role="document">
	    <div class="modal-content">
	    	<div class="modal-body">
	    		 <img width="100%" src="/static/images/gradeInfo.png">
	    	</div>
	    </div>
	  </div>
	</div>
	
	<script>
		$(document).ready(function(){
			
			
			
			$(".back").on("click", function(){
				history.back();
			})
			
			$(".home").on("click", function(){
				location.href="/app/home/view";
			})
			
			$("#couponBtn").removeAttr("disabled");
			$("#couponBtn").on("click", function(){
				$(this).attr("class", "mt-3 btn btn-block btn-secondary");
			})
		})
	</script>
</body>
</html>