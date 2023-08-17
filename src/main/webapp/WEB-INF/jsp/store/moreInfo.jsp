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
			<h1 class="text-center">가게 추가 정보</h1>
			<button type="button" class="btn home bg-primary"><i class="fa-solid fa-house fa-2xl"></i></button>
		</header>
		
		<section class="container">
			<div class="border border-secondary bg-light mt-3 p-1">
				<h5 class="font-weight-bold">배달팁</h5>
				
				<span>주문금액별</span>
				<button type="button" class="orderPriceOptionAddBtn btn btn-sm rounded-circle"><i class="fa-solid fa-plus"></i></button>
				
				<table class="table mt-2">					
					<tbody class="orderPriceTable">
						<tr>
							<td class="border border-dark col-8"><input placeholder="30,000" class="col-7">원 이상</td>
							<td class="border border-dark col-4"><input placeholder="0" class="col-6">원</td>
						</tr>
						<tr>
							<td class="border border-dark col-8"><input class="col-3">원 ~ <input class="col-3">원 미만</td>
							<td class="border border-dark col-4"><input placeholder="0" class="col-6">원</td>
						</tr>
					</tbody>
				</table>
				
				<span>그외 추가 배달팁(중복 적용)</span>
				<button type="button" class="orderOptionAddBtn btn btn-sm rounded-circle"><i class="fa-solid fa-plus"></i></button>
				
				<table class="table mt-2">					
					<tbody class="otherFeeTable">
						<tr>
							<td class="border border-dark col-8"><input placeholder="월화수목금토 00:00~03:00"></td>
							<td class="border border-dark col-4"><span>+</span><input placeholder="1,000" class="col-6">원</td>
						</tr>
						<tr>
							<td class="border border-dark col-8"><input placeholder="방배1동, 방배2동"></td>
							<td class="border border-dark col-4"><span>+</span><input placeholder="500" class="col-6">원</td>
						</tr>
					</tbody>
				</table>
			</div>
			
			<button type="button" class="btn btn-block btn-primary my-3" id="uploadBtn">확인</button>
		</section>
	</div>
	
	<script>
		$(document).ready(function(){
			var orderPriceOption = '<tr>' + 
				'<td class="border border-dark col-8"><input class="col-3">원 ~ <input class="col-3">원 미만</td>' +
				'<td class="border border-dark col-4"><input placeholder="0" class="col-6">원</td>' +
				'</tr>'
			
			var orderOption = '<tr>' + 
				'<td class="border border-dark col-8"><input placeholder="서초구 방배동"></td>' +
				'<td class="border border-dark col-4"><span>+</span><input placeholder="500" class="col-6">원</td>' +
				'</tr>'
				
			$(".orderPriceOptionAddBtn").on("click", function(){
				$(".orderPriceTable").append(orderPriceOption + 1);
			    
			    $(this).addClass("d-none");
			})
			
			$(".orderOptionAddBtn").on("click", function(){
				$(".otherFeeTable").append(orderOption + 1);
				
				$(this).addClass("d-none");
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