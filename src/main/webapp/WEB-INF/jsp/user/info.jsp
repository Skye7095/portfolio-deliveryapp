<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>미식가 정보</title>
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
			<h1 class="text-center">내 정보</h1>
			<button type="button" class="btn home bg-primary"><i class="fa-solid fa-house fa-2xl"></i></button>
		</header>
		
		<section class="container">
			<div class="text-center my-3">
				<button type="button" id="profileImgBtn" class="btn"><img width="100" src="/static/images/profile image.png"></button>
				<input class="profile mt-3 d-none" type="file" multiple id="profileFileInput">
			</div>
			
			<div data-toggle="modal" data-target="#nickNameUpdateBtnModal">
				<button type="button" id="nickNameUpdateBtn" class="border border-secondary btn btn-lg btn-block btn-light mt-3" data-bs-toggle="button">
					<div class="d-flex justify-content-between align-items-center">
						<span class="font-weight-bold">닉네임</span>
						<div class="d-flex align-items-center">
							<span class="text-secondary" style="font-size:12px">${userList.nickName }</span>
							<span class="text-secondary"> ></span>
						</div>
					</div>
				</button>
			</div>
			
			<div data-toggle="modal" data-target="#emailUpdateBtnModal">
				<button type="button" id="emailUpdateBtn" class="border border-secondary btn btn-lg btn-block btn-light mt-3" data-bs-toggle="button">
					<div class="d-flex justify-content-between align-items-center">
						<span class="font-weight-bold">이메일</span>
						<div class="d-flex align-items-center">
							<span class="text-secondary" style="font-size:12px">${userList.email }</span>
							<span class="text-secondary"> ></span>
						</div>
					</div>
				</button>
			</div>
			
			<div data-toggle="modal" data-target="#pwUpdateBtnModal">
				<button type="button" id="pwUpdateBtn" class="border border-secondary btn btn-lg btn-block btn-light mt-3" data-bs-toggle="button">
					<div class="d-flex justify-content-between align-items-center">
						<span class="font-weight-bold">비밀번호 변경</span>
						<span class="text-secondary"> ></span>
					</div>
				</button>
			</div>
			
			<div data-toggle="modal" data-target="#phoneUpdateBtnModal">
				<button type="button" id="phoneUpdateBtn" class="border border-secondary btn btn-lg btn-block btn-light mt-3" data-bs-toggle="button">
					<div class="d-flex justify-content-between align-items-center">
						<span class="font-weight-bold">휴대폰번호 변경</span>
						<span class="text-secondary"> ></span>
					</div>
				</button>
			</div>
			
			<button type="button" id="identityChangeBtn" class="border border-secondary btn btn-lg btn-block btn-light mt-3" data-bs-toggle="button">
				<div class="d-flex justify-content-between align-items-center">
					<span class="font-weight-bold">신분 변경</span>
					<span class="text-secondary"> ></span>
				</div>
			</button>
		</section>
	</div>
	
	<!-- 닉네임변경 modal -->
	<div class="modal fade" id="nickNameUpdateBtnModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
	  <div class="modal-dialog modal-dialog-centered modal-sm" role="document">
	    <div class="modal-content">
	    	<div class="modal-body">
	    		<h5 class="text-center">닉네임 변경</h5>
	    		<input type="text" class="form-control" placeholder="${userList.nickName }" id="nickNameInput">
	    		<br>
	    		<button type="button" class="btn btn-block btn-primary" id="nickNameBtn">변경완료</button>
	    	</div>
	    </div>
	  </div>
	</div>
	
	<!-- 이메일변경 modal -->
	<div class="modal fade" id="emailUpdateBtnModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
	  <div class="modal-dialog modal-dialog-centered modal-sm" role="document">
	    <div class="modal-content">
	    	<div class="modal-body">
	    		<h5 class="text-center">이메일 변경</h5>
	    		<div class="d-flex justify-content-between">
	    			<input type="text" class="form-control mr-1" placeholder="${userList.email }" id="emailInput">
	    			<button type="button" class="btn btn-sm btn-success" id="emailDuplicatedChecked">중복확인</button>
	    		</div>
	    		<span class="text-success d-none ml-5" id="avaliableEmail">사용가능한 이메일입니다.</span>
				<span class="text-danger d-none ml-5" id="duplicatedEmail">중복된 이메일입니다.</span>
	    		<br>
	    		<button type="button" class="btn btn-block btn-primary" id="emailBtn">변경완료</button>
	    	</div>
	    </div>
	  </div>
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
	
	<!-- 휴대폰번호 변경 modal -->
	<div class="modal fade" id="phoneUpdateBtnModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
	  <div class="modal-dialog modal-dialog-centered modal-sm" role="document">
	    <div class="modal-content">
	    	<div class="modal-body">
	    		<h5 class="text-center">휴대폰 번호 변경</h5>
	    		<div class="d-flex justify-content-between">
	    			<input type="text" class="form-control mr-1" placeholder="${userList.phone }" id="phoneInput">
	    			<button type="button" class="btn btn-sm btn-success" id="phoneDuplicatedChecked">중복확인</button>
	    		</div>
	    		<span class="text-success d-none ml-5" id="avaliablePhone">사용가능한 번호입니다.</span>
				<span class="text-danger d-none ml-5" id="duplicatedPhone">중복된 번호입니다.</span>
	    		<br>
	    		<button type="button" class="btn btn-block btn-primary" id="phoneBtn">변경완료</button>
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
					, url:"/user/pwUpdate"
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
			
			// 번호 중복 체크
			var phoneDuplicatedCheck = false;
			var phoneDuplicated = true;
			
			$("#phoneDuplicatedChecked").on("click", function(){
				let phone = $("#phoneInput").val();
				
				if(!phone.startsWith("010") || phone.length != 11){
					alert("010로 시작한 11자리 전화번호를 입력하세요");
					return;
				}
				
				$.ajax({
					type:"get"
					, url:"/user/duplicated_phone"
					, data:{"phone":phone}
					, success:function(data){
						phoneDuplicatedCheck = true;
						
						if(data.phone_duplicated == true){
							phoneDuplicated = true;
							$("#duplicatedPhone").removeClass("d-none");
							$("#avaliablePhone").addClass("d-none");
						}else{
							phoneDuplicated = false;
							$("#duplicatedPhone").addClass("d-none");
							$("#avaliablePhone").removeClass("d-none");
						}
					}
					, error:function(){
						alert("중복체크 에러");
					}
				}) 
			});
			
			// 번호 변경
			$("#phoneBtn").on('click', function(){
				let phone = $("#phoneInput").val();
				
				if(!phone.startsWith("010") || phone.length != 11){
					alert("010로 시작한 11자리 전화번호를 입력하세요");
					return;
				}
				
				if(phoneDuplicatedCheck == false){
					alert("번호 중복확인하세요");
					return;
				}
				
				if(phoneDuplicated == true){
					alert("번호 중복되었습니다");
					return;
				}				
				
				$.ajax({
					type: "post"
					, url: "/user/phoneUpdate"
					, data:{"phone":phone}
					, success:function(data){
						if(data.result == "success"){
							location.reload();
						}else{
							alert("수정 실패. 이미 사용중인 번호입니다.");
						}
					}
					, error:function(){
						alert("수정 에러");
					}
				})
			})
			
			// 이메일 중복 체크
			var emailDuplicatedCheck = false;
			var emailDuplicated = true;
			
			$("#emailDuplicatedChecked").on("click", function(){
				let email = $("#emailInput").val();
				
				if(email == ""){
					alert("이메일을 입력하세요");
					return;
				}
				
				if(email.includes("@") == false || email.endsWith(".com") == false){
					alert("이메일은 @를 포함해야하며 .com로 끝나야 합니다");
					return;
				}
				
				$.ajax({
					type:"get"
					, url:"/user/duplicated_email"
					, data:{"email":email}
					, success:function(data){
						emailDuplicatedCheck = true;
						
						if(data.email_duplicated == true){
							emailDuplicated = true;
							$("#duplicatedEmail").removeClass("d-none");
							$("#avaliableEmail").addClass("d-none");
						}else{
							emailDuplicated = false;
							$("#duplicatedEmail").addClass("d-none");
							$("#avaliableEmail").removeClass("d-none");
						}
					}
					, error:function(){
						alert("중복체크 에러");
					}
				}) 
			});
			
			// 이메일 변경
			$("#emailBtn").on('click', function(){
				let email = $("#emailInput").val();
				
				if(emailDuplicatedCheck == false){
					alert("이메일 중복확인하세요");
					return;
				}
				
				if(emailDuplicated == true){
					alert("이메일 중복되었습니다");
					return;
				}
				
				if(email == ""){
					alert("수정할 이메일을 입력해주세요");
					return;
				}
				
				if(email.includes("@") == false || email.endsWith(".com") == false){
					alert("이메일은 @를 포함해야하며 .com로 끝나야 합니다");
					return;
				}
				
				
				$.ajax({
					type: "post"
					, url: "/user/emailUpdate"
					, data:{"email":email}
					, success:function(data){
						if(data.result == "success"){
							location.reload();
						}else{
							alert("수정 실패. 이미 사용중인 이메일입니다.");
						}
					}
					, error:function(){
						alert("수정 에러");
					}
				})
			})
			
			// 닉네임 변경
			$("#nickNameBtn").on('click', function(){
				let nickName = $("#nickNameInput").val();
				
				if(nickName == ""){
					alert("수정할 닉네임을 입력해주세요");
					return;
				}
				
				$.ajax({
					type: "post"
					, url: "/user/nickNameUpdate"
					, data:{"nickName":nickName}
					, success:function(data){
						if(data.result == "success"){
							location.reload();
						}else{
							alert("수정 실패");
						}
					}
					, error:function(){
						alert("수정 에러");
					}
				})
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
			
			$("#identityChangeBtn").on("click", function(){
				location.href="/user/signout";
			})
			
			$("#profileImgBtn").on("click", function(){
				$(".profile").click();
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