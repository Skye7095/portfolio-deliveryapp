<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>사장님 my페이지</title>
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
			<h1 class="text-center">my페이지</h1>
			<button type="button" class="btn home bg-primary"><i class="fa-solid fa-house fa-2xl"></i></button>
		</header>
		
		<section class="container">
			<div class="text-center my-3">
				<button type="button" class="btn"><img width="100" src="/static/images/profile image.png"></button>
			</div>
			
			<button type="button" id="storeInfoBtn" class="border border-secondary btn btn-lg btn-block btn-light mt-3" data-bs-toggle="button">
				<div class="d-flex justify-content-between align-items-center">
					<span class="font-weight-bold">가게 정보</span>
					<div class="d-flex align-items-center">
						<span class="text-secondary"> ></span>
					</div>
				</div>
			</button>
			
			<button type="button" id="storeOrderBtn" class="border border-secondary btn btn-lg btn-block btn-light mt-3" data-bs-toggle="button">
				<div class="d-flex justify-content-between align-items-center">
					<span class="font-weight-bold">주문관리</span>
					<div class="d-flex align-items-center">
						<span class="text-secondary"> ></span>
					</div>
				</div>
			</button>
			
			<div data-toggle="modal" data-target="#pwUpdateBtnModal">
				<button type="button" id="pwUpdateBtn" class="border border-secondary btn btn-lg btn-block btn-light mt-3" data-bs-toggle="button">
					<div class="d-flex justify-content-between align-items-center">
						<span class="font-weight-bold">비밀번호 변경</span>
						<span class="text-secondary"> ></span>
					</div>
				</button>
			</div>
			
			<button type="button" id="menuBtn" class="border border-secondary btn btn-lg btn-block btn-light mt-3" data-bs-toggle="button">
				<div class="d-flex justify-content-between align-items-center">
					<span class="font-weight-bold">메뉴관리</span>
					<div class="d-flex align-items-center">
						<span class="text-secondary"> ></span>
					</div>
				</div>
			</button>
			
			<button type="button" id="reviewBtn" class="border border-secondary btn btn-lg btn-block btn-light mt-3" data-bs-toggle="button">
				<div class="d-flex justify-content-between align-items-center">
					<span class="font-weight-bold">리뷰관리</span>
					<div class="d-flex align-items-center">
						<span class="text-secondary"> ></span>
					</div>
				</div>
			</button>
			
			<button type="button" id="statisticsBtn" class="border border-secondary btn btn-lg btn-block btn-light mt-3" data-bs-toggle="button">
				<div class="d-flex justify-content-between align-items-center">
					<span class="font-weight-bold">매장통계</span>
					<div class="d-flex align-items-center">
						<span class="text-secondary"> ></span>
					</div>
				</div>
			</button>
			
			<button type="button" id="identityChangeBtn" class="border border-secondary btn btn-lg btn-block btn-light mt-3" data-bs-toggle="button">
				<div class="d-flex justify-content-between align-items-center">
					<span class="font-weight-bold">신분 변경</span>
					<span class="text-secondary"> ></span>
				</div>
			</button>
		</section>
	</div>
	
	<!-- 비번변경 modal -->
	<div class="modal fade" id="pwUpdateBtnModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
	  <div class="modal-dialog modal-dialog-centered modal-sm" role="document">
	    <div class="modal-content">
	    	<div class="modal-body">
	    		<h5 class="text-center">비밀번호 변경</h5>
	    		<a href="/app/resetPW/view" class="text-center"><span class="text-secondary" style="font-size:12px">비밀번호 찾기 ></span></a>
	    		<div class="input-group mb-3 userPwEye">
					<input type="password" class="form-control" placeholder="현재 비밀번호" id="nowPwInput">
					<button class="btn border border-secondary" type="button" id="pwEyeBtnNow"><i class="eyeNow fa-solid fa-eye"></i></button>
				</div>
				<div class="input-group mb-3 userPwEye">
					<input type="password" class="form-control" placeholder="신규 비밀번호" id="newPwInput">
					<button class="btn border border-secondary" type="button" id="pwEyeBtnNew"><i class="eyeNew fa-solid fa-eye"></i></button>
				</div>
				<input type="password" class="form-control my-3" placeholder="신규 비밀번호 재확인" id="newPwDoubleInput">
	    		<button type="button" class="btn btn-block btn-primary" id="pwBtn">변경완료</button>
	    	</div>
	    </div>
	  </div>
	</div>
	
	<script>
		$(document).ready(function(){
			
			// 비번 	변경
			$("#pwBtn").on("click", function(){
				let nowPW = $("#nowPwInput").val();
				let newPW = $("#newPwInput").val();
				let newPWDoubleCheck = $("#newPwDoubleInput").val();
				
				if(nowPW == ""){
					alert("현재 사용중인 비번을 입력해주세요");
					return;
				}
				
				if(newPW.length < 6){
					alert("비밀번호가 6자 이상이어야 해요");
					return;
				}
				
				if(newPW != newPWDoubleCheck){
					alert("새 비번 다시 확인해주세요");
					return;
				}
				
				if(nowPW == newPW){
					alert("기존 비번과 같습니다.")
					return;
				}
				
				$.ajax({
					type:"post"
					, url:"/store/pwUpdate"
					, data:{"nowPW":nowPW, "newPW":newPW}
					, success:function(data){
						if(data.result == "success"){
							alert("비번 변경 성공");
							location.reload();
						}else{
							alert("비번 변경 실패");
						}
					}
					, error:function(){
						alert("비번 변경 에러");
					}
				})
			})
			
			$("#identityChangeBtn").on("click", function(){
				location.href="/store/signout";
			})
			
			$("#statisticsBtn").on("click", function(){
				location.href="/store/statistics/view";
			})
			
			$("#reviewBtn").on("click", function(){
				location.href="/store/review/view";
			})
			$("#menuBtn").on("click", function(){
				location.href="/store/menuManagement/view";
			})
			
			$("#storeOrderBtn").on("click", function(){
				location.href="/store/order/view";
			})
			
			// 비번 변경 > 입력시 눈 보이기/ 숨기기 이벤트
			$("#pwEyeBtnNow").on('click',function(){
				$("#nowPwInput").toggleClass("active");
				
				if($("#nowPwInput").hasClass("active") == true){
					$("#nowPwInput").attr('type', "text");
					$(".eyeNow").attr("class","fa-solid fa-eye-slash");
				}else{
					$("#nowPwInput").attr('type', "password");
					$(".eyeNow").attr("class","fa-solid fa-eye");
				}
		    });
			
			$("#pwEyeBtnNew").on('click',function(){
				$("#newPwInput").toggleClass("active");
				
				if($("#newPwInput").hasClass("active") == true){
					$("#newPwInput").attr('type', "text");
					$("#newPwDoubleInput").attr('type', "text");
					$(".eyeNew").attr("class","fa-solid fa-eye-slash");
				}else{
					$("#newPwInput").attr('type', "password");
					$("#newPwDoubleInput").attr('type', "password");
					$(".eyeNew").attr("class","fa-solid fa-eye");
				}
		    });
			
			$("#storeInfoBtn").on("click", function(){
				location.href="/store/info/view";
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