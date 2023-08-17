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
			<h1 class="text-center">가게 기본 정보</h1>
			<button type="button" class="btn home bg-primary"><i class="fa-solid fa-house fa-2xl"></i></button>
		</header>
		
		<section class="container">
			<div class="text-center my-3">
				<button type="button" id="storeImgBtn" class="btn"><img width="100" id="storeImgShow" src="/static/images/profile image.png"></button>
				<input class="storeImg mt-3 d-none" type="file" multiple id="storeImgInput">
			</div>
			
			<div class="d-flex justify-content-center">
				<input class="form-control col-8" placeholder="가게 이름을 입력해주세요" id="name">
			</div>
			
			<textarea class="form-control mt-2" rows="5" placeholder="가게를 소개해주세요" id="introduction"></textarea>
			
			<div class="d-flex justify-content-between align-items-center mt-2">
				<span>가게 전화번호</span>
				<div class="d-flex justify-content-end align-items-center">
					<input class="form-control" id="phone">	
				</div>
			</div>
			
			<div class="d-flex justify-content-between align-items-center mt-2">
				<span>가게 카테고리</span>
				<select class="form-control col-7" id="categorySelect">
				  <option selected>한식</option>
				  <option value="1">중식</option>
				  <option value="2">일식</option>
				  <option value="3">피자</option>
				  <option value="4">치킨</option>
				  <option value="5">햄버거</option>
				  <option value="6">분식</option>
				  <option value="7">카페</option>
				  <option value="8">야식</option>
				</select>
			</div>
			
			<div class="d-flex justify-content-between align-items-center mt-2">
				<span>최소 주문금액</span>
				<div class="d-flex justify-content-end align-items-center">
					<input class="form-control" id="minOrderPrice">
					<span>원</span>		
				</div>
			</div>
			
			<div class="d-flex justify-content-between align-items-center mt-2">
				<span>최소 배달팁</span>
				<div class="d-flex justify-content-end align-items-center">
					<input class="form-control" id="deliveryBasicFee">
					<span>원</span>		
				</div>
			</div>
			
			<div class="border border-secondary bg-light mt-3 p-1">
				<h5 class="font-weight-bold">영업정보</h5>
				<div class="d-flex justify-content-around align-items-center">
					<span class="col-4">영업시간</span>
					<input class="form-control col-8" placeholder="월 10:00 ~ 토 22:00" id="operationHours">
				</div>
				<div class="d-flex justify-content-around align-items-center mt-1">
					<span class="col-4">휴무일</span>
					<input class="form-control col-8" placeholder="화요일" id="closedDays">
				</div>
				<div class="d-flex justify-content-around align-items-center mt-1">
					<span class="col-4">배달지역</span>
					<input class="form-control col-8" placeholder="관악구 전체" id="deliveryArea">
				</div>
			</div>
			
			<button type="button" class="btn btn-block btn-primary my-3" id="uploadBtn">확인</button>
		</section>
	</div>
	
	<script>
		$(document).ready(function(){
			
			$("#storeImgBtn").on("click", function(){
				$(".storeImg").click();
			})
			
			$("#storeImgInput").on("change", function(){
				var file = event.target.files[0];

			    var reader = new FileReader(); 
			    reader.onload = function(e) {

			        $("#storeImgShow").attr("src", e.target.result);
			    }

			    reader.readAsDataURL(file);
			})
			
			$("#uploadBtn").on("click", function(){
				let name = $("#name").val();
				let introduction = $("#introduction").val();
				let phone = $("#phone").val();
				let categorySelect = $("#categorySelect").val();
				let category = "";
				let minOrderPrice = $("#minOrderPrice").val();
				let deliveryBasicFee = $("#deliveryBasicFee").val();
				let operationHours = $("#operationHours").val();
				let closedDays = $("#closedDays").val();
				let deliveryArea = $("#deliveryArea").val();
				
				if(categorySelect == "1"){
					category = "중식";
				}else if(categorySelect == "2"){
					category = "일식";
				}else if(categorySelect == "3"){
					category = "피자";
				}else if(categorySelect == "4"){
					category = "치킨";
				}else if(categorySelect == "5"){
					category = "햄버거";
				}else if(categorySelect == "6"){
					category = "분식";
				}else if(categorySelect == "7"){
					category = "카페";
				}else if(categorySelect == "8"){
					category = "야식";
				}else{
					category = "한식";
				}
				
				if(name == ""){
					alert("가게 이름을 입력하세요");
					return;
				}
				if(introduction == ""){
					alert("가게 소개를 입력하세요");
					return;
				}
				if(phone == ""){
					alert("가게 전화번호를 입력하세요");
					return;
				}
				if(minOrderPrice == ""){
					alert("가게 최소 주문 금액을 입력하세요");
					return;
				}
				if(deliveryBasicFee == ""){
					alert("가게 기본 배달비를 입력하세요");
					return;
				}
				if(operationHours == ""){
					alert("가게 영업시간을 입력하세요");
					return;
				}
				if(deliveryArea == ""){
					alert("가게 배달지역을 입력하세요");
					return;
				}
				
				var formData = new FormData();
				formData.append("storeImg", $("#storeImgInput")[0].files[0]);
				formData.append("name", name);
				formData.append("introduction", introduction);
				formData.append("phone", phone);
				formData.append("category", category);
				formData.append("minOrderPrice", minOrderPrice);
				formData.append("deliveryBasicFee", deliveryBasicFee);
				formData.append("operationHours", operationHours);
				formData.append("closedDays", closedDays);
				formData.append("deliveryArea", deliveryArea);
				
				$.ajax({
					type:"post"
					, url:"/store/createStore"
					, data:formData
					, enctype:"multipart/form-data" // 파일 업로드 필수 항목
					, processData:false // 파일 업로드 필수 항목
					, contentType:false // 파일 업로드 필수 항목
					, success:function(data){
						if(data.result == "success"){
							location.href = "/store/info/view";
						}else{
							alert("저장 실패");
						}
					}
					, error:function(){
						alert("저장 에러");
					}
				})
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