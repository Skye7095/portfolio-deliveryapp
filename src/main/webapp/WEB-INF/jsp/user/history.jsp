<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>미식가 주문내역</title>
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
			<h1 class="text-center">주문내역</h1>
			<button type="button" class="btn home bg-primary"><i class="fa-solid fa-house fa-2xl"></i></button>
		</header>
		
		<section class="container">
			<div class="input-group mt-3">
				<button type="button" class="btn border border-secondary" style="background-color: white;"><i class="fa-solid fa-magnifying-glass" ></i></button>
				<input type="text" class="form-control" placeholder="주문했던 메뉴와 가게를 검색해보세요">
			</div>
			
			<div class="mt-3">
				<div class="d-flex justify-content-between align-items-center">
					<span class="text-secondary">7.14(금)·배달완료</span>
					<div class="d-flex">
						<div data-toggle="modal" data-target="#orderDetailsBtnModal">
							<button type="button" id="orderDetailsBtn" class="ml-3 btn rounded-pill border border-dark" style="background-color: white;">주문상세</button>
						</div>
						<div data-toggle="modal" data-target="#moreBtnModal">
							<button type="button" class="ml-3 btn rounded-pill" style="background-color: white;"><i class="fa-solid fa-ellipsis-vertical"></i></button>
						</div>
					</div>
				</div>
				
				<div class="my-3 d-flex">
					<img width="50" src="/static/images/info.png">
					<div class="col-9">
						<a class="font-weight-bold text-dark" href="#">왕돈까스 & 왕냉면 구로사... ></a><br>
						<span>김치찌개 외 1개 19,300원</span>
					</div>
				</div>
				
				<div data-toggle="modal" data-target="#reviewBtnModal">
					<button type="button" id="reviewBtn" class="btn btn-block btn-primary">리뷰작성</button>
				</div>
				
				<button type="button" class="btn btn-block btn-success mt-2">같은 메뉴 담기</button>
			</div>
			<hr>
		</section>
	</div>
	
	<!-- 더보기 modal -->
	<div class="modal fade" id="moreBtnModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
		<div class="modal-dialog modal-dialog-centered modal-sm" role="document">
		    <div class="modal-content">
		    	<div class="modal-body">
		    		<div>
		    			<button class="btn btn-block" style="background-color: white;">가게보기</button>
		    			<button class="btn btn-block text-danger" style="background-color: white;">주문내역 삭제</button>
		    			<button class="moreClosedBtn btn btn-block font-weight-bold" style="background-color: white;">닫기</button>
		    		</div>
		    	</div>
		    </div>
		</div>
	</div>
	
	<!-- 주문상세내역 modal -->
	<div class="modal fade" id="orderDetailsBtnModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
		<div class="modal-dialog modal-dialog-centered" role="document">
	    	<div class="modal-content">
	    		<div class="modal-body">
	    			<div class="my-1 d-flex justify-content-end">
	    				<button class="closeModalBtn btn text-danger"><i class="fa-solid fa-x"></i></button>
	    			</div>
	    		
	    			<div class="border border-dark my-1">
		    			<div class="mx-1">
		    				<span class="text-primary font-weight-bold">배달이 완료되었어요</span><br>
				    		<span class="font-weight-bold">왕돈까스 & 왕냉면 구로 사거리점</span><br>
				    		<span>김치찌개 외 1개</span><br><br>
				    		<span class="text-secondary">
				    		주문일시: 2023년 07원 14일 오후 12:57<br>
				    		주문번호: 1243325<br>
				    		배달방식: 치타배달
				    		</span>
		    			</div>
		    		
			    		<div class="d-flex justify-content-around my-2">
			    			<button class="btn border border-dark">문의하기</button>
			    			<button class="btn border border-dark">가게보기</button>
			    		</div>
		    		</div>
	    		
		    		<div class="border border-dark my-1">
		    			<div class="mx-1">
		    				<span class="font-weight-bold">김치찌개 1개</span><br>
				    		<span class="text-secondary" style="font-size:14px">·기본: 8,500원</span><br>
				    		<span>8,500원</span>
		    			</div>
		    			<div class="mx-1">
		    				<span class="font-weight-bold">김치볶음밥 1개</span><br>
				    		<span class="text-secondary" style="font-size:14px">·기본: 8,500원</span><br>
				    		<span>8,500원</span>
		    			</div>
		    		</div>
	    		
		    		<div class="border border-dark my-1">
		    			<div class="mx-1">
		    				<span class="font-weight-bold">결제금액</span><br>
		    				<div class="d-flex justify-content-between">
		    					<span>주문금액</span>
		    					<span>17,500원</span>
		    				</div>
				    		<div class="d-flex justify-content-between">
		    					<span>배달팁</span>
		    					<span>1,800원</span>
		    				</div>
		    				<div class="d-flex justify-content-between">
		    					<span>사용포인트</span>
		    					<span>0원</span>
		    				</div>
		    				<hr>
		    			</div>
		    			<div class="mx-1 d-flex justify-content-between">
		    				<span class="font-weight-bold">총 결제금액</span><br>
		    				<span class="font-weight-bold">19,300원</span>
		    			</div>
		    		</div>
	    		
		    		<div class="border border-dark my-1">
		    			<div class="mx-1">
		    				<span>배달주소</span><br>
		    				<span class="text-secondary" style="font-size:14px">서울 금천구 독산동 953</span><br>
		    				<span class="text-secondary" style="font-size:14px">(도로명) 서울 금천구 시흥대로 152길 11-43</span>
		    			</div>
		    			<div class="mx-1">
		    				<span>전화번호</span><br>
		    				<span class="text-secondary" style="font-size:14px">010-1234-5678</span><br>
		    			</div>
		    			<div class="mx-1">
		    				<span>가게 사장님께</span><br>
		    				<span class="text-secondary" style="font-size:14px">(수저,포크O)</span><br>
		    			</div>
		    			<div class="mx-1">
		    				<span>라이더님께</span><br>
		    				<span class="text-secondary" style="font-size:14px">(없음)</span><br>
		    			</div>
		    		</div>
	    		
		    		<div class="my-1">
		    			<button class="btn btn-block text-danger">주문내역 삭제</button>
		    		</div>
	    		</div>
	  		</div>
		</div>
	</div>
	
	  <!-- 리뷰작성 modal -->
	<div class="modal fade" id="reviewBtnModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
		<div class="modal-dialog modal-dialog-centered modal-sm" role="document">
		    <div class="modal-content">
		    	<div class="modal-body">
		    		<div>
		    			<textarea class="form-control" rows="10" placeholder="리뷰를 작성해주세요."></textarea>
		    			<button type="button" class="reviewCreateBtn btn btn-block btn-primary mt-2">작성</button>
		    			<button type="button" class="reviewClosedBtn btn btn-block font-weight-bold" style="background-color: white;">닫기</button>
		    		</div>
		    	</div>
		    </div>
	  	</div>
	</div>
	
	<script>
		$(document).ready(function(){
			
			$(".reviewClosedBtn").on("click", function(){
				$("#reviewBtnModal").modal("hide");
			})
			
			$(".moreClosedBtn").on("click", function(){
				$("#moreBtnModal").modal("hide");
			})
			
			$(".closeModalBtn").on("click", function(){
				$("#orderDetailsBtnModal").modal("hide");
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