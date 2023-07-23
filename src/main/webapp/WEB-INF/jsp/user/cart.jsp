<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>미식가 장바구니</title>
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
			<h1 class="text-center">장바구니</h1>
			<button type="button" class="btn home bg-primary"><i class="fa-solid fa-house fa-2xl"></i></button>
		</header>
		
		<section class="container">
			<div class="d-flex justify-content-between align-items-center mt-3">
				<div class="d-flex justify-content-start">
					<img width="30" height="30" src="/static/images/minus.png">
					<h4 class="font-weight-bold ml-1">족발야시장 독산점</h4>
				</div>
				<span>45~60분 후 도착</span>
			</div>
			<hr>
			<div>
				<div class="d-flex justify-content-between align-items-center">
					<h5 class="font-weight-bold ml-1">족발</h5>
					<button type="button" class="btn btn-sm"><i class="fa-solid fa-x"></i></button>
				</div>
				<div class="d-flex">
					<div class="d-flex">
						<img width="80" height="80" src="/static/images/info.png">
						<div class="ml-1 text-secondary"  style:"12px">
							<span>· 가격: 16400원</span><br>
							<span>· 소(2~3인)</span><br>
							<span>· 콜라(400원)</span>
						</div>
					</div>
				</div>
				<div class="d-flex">
					<div class="col-3"></div>
					<p>16,800원</p>
				</div>
				
				<div class="d-flex justify-content-end">
					<div class="col-4"></div>
					<button type="button" class="btn btn-light border border-dark col-4">옵션변경</button>
					<div class="d-flex justify-content-end col-4">
						<button type="button" class="btn btn-sm border border-dark" id="amountMinusBtn"><i class="fa-solid fa-minus"></i></button>
						<input type="text" class="col-5 text-center border-dark border-top border-bottom" value="1" disabled id="amount">
						<button type="button" class="btn btn-sm border border-dark" id="amountPlusBtn"><i class="fa-solid fa-plus"></i></button>
					</div>
				</div>
				
				<button type="button" class="btn btn-block btn-light border border-dark my-3">+ 더 담으러 가기</button>
			</div>
			
			<div>
				<div class="d-flex justify-content-between">
					<span class="font-weight-bold">총 주문금액</span>
					<span>15,500원</span>
				</div>
				<div class="d-flex justify-content-between">
					<span class="font-weight-bold">배달팁</span>
					<span>4,000원</span>
				</div>
				<hr>
				<div class="d-flex justify-content-between">
					<span class="font-weight-bold">총 결제금액</span>
					<div class="d-flex justify-content-end">
						<span class="font-weight-bold">19,500</span><span>원</span>
					</div>
				</div>
			</div>
			
			<div>
				<div class="d-flex justify-content-between">
					<span class="font-weight-bold">주문방식</span>
					<select class="form-control">
						<option selected>배달</option>
						<option value="1">포장</option>
					</select>
				</div>
			</div>
			<button type="button" class="btn btn-block btn-primary border border-dark my-3">주문 하기</button>
		</section>
	</div>
	
	<script>
		$(document).ready(function(){
			
			var number = $("#amount").val();
			$("#amountPlusBtn").on("click", function(){
				number = parseInt(number) + 1;
				$("#amount").val(number);
			})
			$("#amountMinusBtn").on("click", function(){
				if(number > 1){
					number = parseInt(number) - 1;
					$("#amount").val(number);
				}
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