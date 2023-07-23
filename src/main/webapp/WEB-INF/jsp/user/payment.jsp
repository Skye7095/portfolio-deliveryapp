<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>미식가 결제페이지</title>
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
			<h1 class="text-center">결제하기</h1>
			<button type="button" class="btn home bg-primary"><i class="fa-solid fa-house fa-2xl"></i></button>
		</header>
		
		<section class="container">
			<div class="bg-light my-3">
				<h4>서울시 금천구</h4>
				<h5>010-1234-5678</h5>
			</div>
			
			<div class="bg-light my-3">
				<h5 class="font-weight-bold">요청사항</h5>
				<div>
					<span class="font-weight-bold">가게 사장님께</span>
					<input type="text" class="form-control" placeholder="예) 덜 맵게 해주세요">
				</div>
				<div class="mt-1">
					<span class="font-weight-bold">라이더님께</span>
					<select class="form-control riderMemo">
						<option selected>문 앞에 두고 벨 눌러주세요</option>
						<option value="1">문 앞에 두고 노크해주세요</option>
						<option value="2">문 앞에 두면 가져갈게요(벨X, 노크X)</option>
						<option value="3">직접 받을게요</option>
						<option value="4">전화주시면 마중 나갈게요</option>
						<option value="5">직접 입력</option>
					</select>
					<input type="text" class="form-control d-none mt-2" placeholder="예) 대문비번 1234" id="riderMemoInput">
				</div>
			</div>
			
			<div class="bg-light my-3">
				<h5 class="font-weight-bold">결제수단</h5>
				api
			</div>
			
			<div data-toggle="modal" data-target="#pointUsedBtnModal">
				<button type="button" id="pointUsedBtn" class="btn btn-lg btn-block btn-light" data-bs-toggle="button">
					<div class="d-flex justify-content-between align-items-center">
						<span class="font-weight-bold">배달포인트</span>
						<span class="text-secondary" style="font-size:12px">4원 사용가능 ></span>
					</div>
				</button>
			</div>
			
			<div class="bg-light my-3">
				<h5 class="font-weight-bold">결제금액</h5>
				<div class="d-flex justify-content-between">
					<span>주문금액</span>
					<span>18,800원</span>
				</div>
				<div class="d-flex justify-content-between">
					<span>배달포인트</span>
					<span>-4원</span>
				</div>
				<div class="d-flex justify-content-between">
					<span>배달팁</span>
					<span>1,800원</span>
				</div>
				<hr>
				<div class="d-flex justify-content-between">
					<h5 class="font-weight-bold">총 결제금액</h5>
					<h5 class="font-weight-bold">20,698원</h5>
				</div>
			</div>
			
			<button type="button" class="btn btn-block btn-primary">결제하기</button>
		</section>
	</div>
	
	<!-- 포인트사용 modal -->
	<div class="modal fade" id="pointUsedBtnModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
	  <div class="modal-dialog modal-dialog-centered modal-sm" role="document">
	    <div class="modal-content">
	    	<div class="modal-body">
	    		<h5 class="text-center">배달포인트</h5>
    			<div>
    				<span class="font-weight-bold">보유포인트</span>
		    		<span class="font-weight-bold" style="font-size: 20px" id="point">4</span>
		    		<span class="font-weight-bold">원</span>
    			</div>
    			
    			<div class="d-flex justify-content-between">
    				<input type="text" class="mr-3" placeholder="사용할 포인트를 입력해주세요" id="pointUsedInput">
    				<button type="button" class="btn btn-sm btn-light rounded-pill border border-dark" id="pointAllUsed">모두사용</button>
    			</div>
    			<span class="text-secondary" style="font-size: 12px">사용 후 잔여 포인트 0원</span>
    			
    			<button type="button" class="btn btn-block btn-primary mt-5">사용하기</button>
	    	</div>
	    </div>
	  </div>
	</div>
	
	<script>
	$(document).ready(function(){
		
		$("#pointAllUsed").on("click", function(){
			$("#pointUsedInput").val($("#point").text());
		})
		
		$("#pointUsedInput").change(function(){
			alert("사용하기 버튼 클릭 후 적용됩니다");
		})
		
		$(".riderMemo").change(function(){
			if($(this).val() == "5"){
				$("#riderMemoInput").removeClass("d-none");
			}else{
				$("#riderMemoInput").addClass("d-none");
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