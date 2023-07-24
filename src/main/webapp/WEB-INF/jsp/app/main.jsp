<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>배달 메인</title>
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
		<header id="header" class="bg-primary">
			<div data-toggle="modal" data-target="#addressBtnModal">
				<button type="button" class="btn btn-primary col-8 text-left" id="addressBtn">주소를 입력해주세요<i class="fa-solid fa-caret-down"></i></button>
			</div>
			
			<div class="container">
				<div class="d-flex justify-content-center align-items-center border border-dark">
					<input type="text" class="form-control" placeholder="곱창볶음 나와라 뚝딱!">
					<img width="36" height="36" src="/static/images/search.png">
				</div>
				<br>
			</div>
		</header>
		
		<section class="container">
			<div class="d-flex justify-content-around align-items-center mt-3">
				<button type="button" class="btn storeCatBtn">
					<img width="30" src="/static/images/한식.png"><br>
					<span class="my-3">한식</span>
				</button>
				<button type="button" class="btn storeCatBtn">
					<img width="30" src="/static/images/중식.png"><br>
					<span class="my-3">중식</span>
				</button>
				<button type="button" class="btn storeCatBtn">
					<img width="30" src="/static/images/일식.png"><br>
					<span class="my-3">일식</span>
				</button>
			</div>
			<div class="d-flex justify-content-around align-items-center mt-3">
				<button type="button" class="btn storeCatBtn">
					<img width="30" src="/static/images/피자.png"><br>
					<span class="my-3">피자</span>
				</button>
				<button type="button" class="btn storeCatBtn">
					<img width="30" src="/static/images/치킨.png"><br>
					<span class="my-3">치킨</span>
				</button>
				<button type="button" class="btn storeCatBtn">
					<img width="30" src="/static/images/햄버거.png"><br>
					<span class="my-3">햄버거</span>
				</button>
			</div>
			<div class="d-flex justify-content-around align-items-center mt-3">
				<button type="button" class="btn storeCatBtn">
					<img width="30" src="/static/images/분식.png"><br>
					<span class="my-3">분식</span>
				</button>
				<button type="button" class="btn storeCatBtn">
					<img width="30" src="/static/images/카페.png"><br>
					<span class="my-3">카페</span>
				</button>
				<button type="button" class="btn storeCatBtn">
					<img width="30" src="/static/images/야식.png"><br>
					<span class="my-3">야식</span>
				</button>
			</div>
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
	
	<!-- 주소록 modal -->
	<div class="modal fade" id="addressBtnModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
	  <div class="modal-dialog modal-dialog-centered modal-sm" role="document">
	    <div class="modal-content">
	    	<div class="modal-body">
				<div class="d-flex justify-content-center">
					<button type="button" class="btn btn-sm col-2" id="addressHideBtn"><i class="fa-solid fa-left-long"></i></button>
					<h5 class="text-center col-8">주소 설정</h5>
					<h5 class="col-2"></h5>
				</div>
	    		
    			<input type="text" class="form-control my-3" placeholder="지번, 도로명, 건물명으로 검색">
    			<div>
    				<div class="d-flex justify-content-between">
    					<p class="font-weight-bold">주소록</p>
    					<button type="button" class="btn btn-sm rounded-pill">편집</button>
    				</div>
    				<hr>
   					<div>
   						<div>
   							<div class="d-flex justify-content-between align-items-end">
	    						<span class="font-weight-bold">서울 금천구 독산동 953</span>
	    						<div class="d-flex justify-content-end">
	    							<div data-toggle="modal" data-target="#addressModifyBtnModal">
		    							<button type="button" class="btn btn-sm btn-info rounded-pill" id="addressModifyBtn"><i class="fa-solid fa-pen"></i></button>
		    						</div>
		    						<button type="button" class="btn btn-sm btn-danger rounded-pill"><i class="fa-solid fa-x"></i></button>
		    					</div>
		    				</div>
	   						
	   						<span>서울 금천구 시흥대로 152길 11-43</span>
   						</div>
   					</div>
   					<hr>
    			</div>	
	    	</div>
	    </div>
	  </div>
	</div>
	
	
	<!-- 주소 수정 modal -->
	<div class="modal fade" id="addressModifyBtnModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
	  <div class="modal-dialog modal-dialog-centered modal-sm" role="document">
	    <div class="modal-content">
	    	<div class="modal-body">
	    		<h5 class="text-center">주소 수정</h5>
    			<span class="font-weight-bold">서울 금천구 독산동 953</span><br>
    			<span>서울 금천구 시흥대로 152길 11-43</span>
    			<input type="text" class="form-control my-3" placeholder="상세 주소 입력">
    			
    			<button type="button" class="btn btn-block btn-primary mt-5" id="addressModifyCompleteBtn">완료</button>
	    	</div>
	    </div>
	  </div>
	</div>
	<script>
		$(document).ready(function(){
			$("#addressModifyBtn").on("click", function(){
				$("#addressBtnModal").modal("hide");
			})
			
			$("#addressModifyCompleteBtn").on("click", function(){
				$("#addressModifyBtnModal").modal("hide");
				$("#addressBtnModal").modal("show");
			})
			
			$("#addressHideBtn").on("click", function(){
				$("#addressBtnModal").modal("hide");
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