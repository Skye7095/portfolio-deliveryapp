<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원가입</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">

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
			<h1 class="text-center">회원가입</h1>
		</header>
		
		<section  class="container">
			<div class="btn-group my-3 d-flex justify-content-center">
				<input type="radio" class="btn-check" name="identityRadio" id="user" value="user" autocomplete="off" checked>
				<label class="btn btn-outline-primary" for="user">미식가</label>
				
				<input type="radio" class="btn-check" name="identityRadio" id="store" value="store" autocomplete="off">
				<label class="btn btn-outline-primary" for="store">사장님</label>
				
				<input type="radio" class="btn-check" name="identityRadio" id="rider" value="rider" autocomplete="off">
				<label class="btn btn-outline-primary" for="rider">라이더</label>
			</div>
			
			<article class="userSignupBox my-3 border border-secondary">
				<div class="my-3 container">
					<div>
					<div class="input-group mb-3">
						<input type="text" class="form-control" placeholder="아이디" id="userIdInput">
						<button class="btn btn-primary" type="button" id="duplicatedChecked1">중복확인</button>
					</div>
					<span class="text-success d-none ml-5" id="avaliableId1">사용가능한 아이디입니다.</span>
					<span class="text-danger d-none ml-5" id="isDuplicatedId1">중복된 아이디입니다.</span>
					<div class="input-group mb-3 userPwEye">
						<input type="password" class="form-control" placeholder="비밀번호" id="userPasswordInput">
						<button class="btn border border-secondary" type="button" id="userPwEyeBtn"><i class="fa-solid fa-eye"></i></button>
					</div>
					<input type="password" class="form-control my-3" placeholder="비밀번호 재확인" id="userPasswordDoubleInput">
					<input type="text" class="form-control my-3" placeholder="이름" id="userNameInput">
					<input type="text" class="form-control my-3" placeholder="휴대폰번호" id="userPhoneInput">
					<input type="text" class="form-control my-3" placeholder="이메일" id="userEmailInput">
					<input type="text" class="form-control my-3" placeholder="닉네임" id="userNickNameInput">
					
					<div class="d-flex justify-content-center align-items-center mt-5 mb-3">
						<button type="button" class="col-6 btn btn-primary" id="userSignupBtn">미식가 가입</button>
					</div>
				</div>
			</article>
			
			<article class="storeSignupBox my-3 border border-secondary d-none">
				<div class="my-3 container">
					<div class="input-group mb-3">
						<input type="text" class="form-control" placeholder="사업자등록번호" id="storeBusinessNumberInput">
						<button class="btn btn-primary" type="button" id="duplicatedChecked2">중복확인</button>
					</div>
					<span class="text-success d-none ml-5" id="avaliableId2">가입가능한 사업자입니다.</span>
					<span class="text-danger d-none ml-5" id="isDuplicatedId2">이미 가입된 사업자입니다.</span>
					<div class="input-group mb-3 storePwEye">
						<input type="password" class="form-control" placeholder="비밀번호" id="storePasswordInput">
						<button class="btn border border-secondary" type="button" id="storePwEyeBtn"><i class="fa-solid fa-eye"></i></button>
					</div>
					<input type="password" class="form-control my-3" placeholder="비밀번호 재확인" id="storePasswordDoubleInput">
					<input type="text" class="form-control my-3" placeholder="대표자 이름" id="storeOwnerNameInput">
					<input type="text" class="form-control my-3" placeholder="대표자 휴대폰번호" id="storeOwnerPhoneInput">
					
					<div class="d-flex justify-content-center align-items-center mt-5 mb-3">
						<button type="button" class="col-6 btn btn-primary" id="storeSignupBtn">사장님 가입</button>
					</div>
				</div>
			</article>
			
			<article class="riderSignupBox my-3 border border-secondary d-none">
				<div class="my-3 container">
					<div class="input-group mb-3">
						<input type="text" class="form-control" placeholder="아이디" id="riderIdInput">
						<button class="btn btn-primary" type="button" id="duplicatedChecked3">중복확인</button>
					</div>
					<span class="text-success d-none ml-5" id="avaliableId3">사용가능한 아이디입니다.</span>
					<span class="text-danger d-none ml-5" id="isDuplicatedId3">중복된 아이디입니다.</span>
					<div class="input-group mb-3 riderPwEye">
						<input type="password" class="form-control" placeholder="비밀번호" id="riderPasswordInput">
						<button class="btn border border-secondary" type="button" id="riderPwEyeBtn"><i class="fa-solid fa-eye"></i></button>
					</div>
					<input type="password" class="form-control my-3" placeholder="비밀번호 재확인" id="riderPasswordDoubleInput">
					<input type="text" class="form-control my-3" placeholder="이름" id="riderNameInput">
					<input type="text" class="form-control my-3" placeholder="휴대폰번호" id="riderPhoneInput">
					<input type="text" class="form-control my-3" placeholder="이메일" id="riderEmailInput">
					
					<div class="d-flex justify-content-center align-items-center mt-5 mb-3">
						<button type="button" class="col-6 btn btn-primary" id="riderSignupBtn">라이더 가입</button>
					</div>
				</div>
			</article>
		</section>
	</div>
	
	<script>
		$(document).ready(function(){
			
			// riderId 중복체크
			var isDuplicatedCheck3 = false;
			var isDuplicatedId3 = true;
			
			$("#duplicatedChecked3").on("click", function(){
				let id = $("#riderIdInput").val();
				
				if(id == ""){
					alert("아이디를 입력하세요");
					return;
				}
				
				$.ajax({
					type:"get"
					, url:"/rider/duplicated_id"
					, data:{"loginId":id}
					, success:function(data){
						isDuplicatedCheck3 = true;
						
						if(data.is_duplicated == true){
							isDuplicatedId3 = true;
							$("#isDuplicatedId3").removeClass("d-none");
							$("#avaliableId3").addClass("d-none");
						}else{
							isDuplicatedId3 = false;
							$("#isDuplicatedId3").addClass("d-none");
							$("#avaliableId3").removeClass("d-none");
						}
					}
					, error:function(){
						alert("중복체크 에러");
					}
				}) 
			});
			
			// rider 회원가입
			$("#riderSignupBtn").on("click", function(){
				let id = $("#riderIdInput").val();
				let password = $("#riderPasswordInput").val();
				let passwordConfirm = $("#riderPasswordDoubleInput").val();
				let name = $("#riderNameInput").val();
				let phone = $("#riderPhoneInput").val();
				let email = $("#riderEmailInput").val();

				if(id == ""){
					alert("아이디를 입력하세요");
					return;
				}
				
				if(isDuplicatedCheck3 == false){
					alert("아이디 중복확인하세요");
					return;
				}
				
				if(isDuplicatedId3 == true){
					alert("아이디 중복되었습니다");
					return;
				}
				
				if(password.length < 6){
					alert("비밀번호가 6자 이상이어야 해요");
					return;
				}
				
				if(passwordConfirm != password){
					alert("비밀번호 다시 확인해주세요");
					return;
				}
				
				if(name == ""){
					alert("이름을 입력하세요");
					return;
				}
				
				if(!phone.startsWith("010") || phone.length != 11){
					alert("010로 시작한 11자리 전화번호를 입력하세요");
					return;
				}
				
				if(!$.isNumeric(phone)){
					alert("전화번호 숫자만 입력하세요");
					return;
				}

				if(email == ""){
					alert("이메일을 입력해주세요");
					return;
				}
				
				if(email.includes("@") == false || email.endsWith(".com") == false){
					alert("이메일은 @를 포함해야하며 .com로 끝나야 합니다");
					return;
				}
				
				$.ajax({
					type: "post"
					, url: "/rider/signup"
					, data:{"loginId":id, "password":password, "name":name, "phone":phone, "email":email}
					, success:function(data){
						if(data.result == "success"){
							alert("회원가입 성공");
							location.href = "/rider/signin/view";
						}else if(data.result == "exists"){
							alert("이미 가입했습니다");
							location.href = "/rider/signin/view";
						}else{
							alert("회원가입 실패");
						}
					}
					, error:function(){
						alert("회원가입 에러");
					}				
				})
			})
			
			// store businessNumber 중복체크
			var isDuplicatedCheck2 = false;
			var isDuplicatedId2 = true;
			
			$("#duplicatedChecked2").on("click", function(){
				let businessNumber = $("#storeBusinessNumberInput").val();
				
				if(businessNumber == ""){
					alert("사업자등록번호를 입력하세요");
					return;
				}
				
				$.ajax({
					type:"get"
					, url:"/store/duplicated_id"
					, data:{"businessNumber":businessNumber}
					, success:function(data){
						isDuplicatedCheck2 = true;
						
						if(data.is_duplicated == true){
							isDuplicatedId2 = true;
							$("#isDuplicatedId2").removeClass("d-none");
							$("#avaliableId2").addClass("d-none");
						}else{
							isDuplicatedId2 = false;
							$("#isDuplicatedId2").addClass("d-none");
							$("#avaliableId2").removeClass("d-none");
						}
					}
					, error:function(){
						alert("중복체크 에러");
					}
				})
			});
			
			// store 회원가입
			$("#storeSignupBtn").on("click", function(){
				let businessNumber = $("#storeBusinessNumberInput").val();
				let password = $("#storePasswordInput").val();
				let passwordConfirm = $("#storePasswordDoubleInput").val();
				let ownerName = $("#storeOwnerNameInput").val();
				let ownerPhone = $("#storeOwnerPhoneInput").val();
				
				if(businessNumber == ""){
					alert("사업자등록번호를 입력하세요");
					return;
				}
				
				if(businessNumber.length != 10 || !$.isNumeric(businessNumber)){
					alert("사업자등록번호는 10자리이며 숫자만 입력해주세요");
					return;
				}
				
				if(isDuplicatedCheck2 == false){
					alert("사업자번호 중복 여부 확인하세요");
					return;
				}
				
				if(isDuplicatedId2 == true){
					alert("해당 사업자번호 이미 가입했으며 로그인하세요");
					location.href="/store/signin/view";
					return;
				}
				
				if(password.length < 6){
					alert("비밀번호가 6자 이상이어야 해요");
					return;
				}
				
				if(passwordConfirm != password){
					alert("비밀번호 다시 확인해주세요");
					return;
				}
				
				if(ownerName == ""){
					alert("대표자 이름을 입력하세요");
					return;
				}
				
				if(!ownerPhone.startsWith("010") || ownerPhone.length != 11){
					alert("010로 시작한 11자리 전화번호를 입력하세요");
					return;
				}
				
				if(!$.isNumeric(ownerPhone)){
					alert("전화번호 숫자만 입력하세요");
					return;
				}
				
				$.ajax({
					type: "post"
					, url: "/store/signup"
					, data:{"businessNumber":businessNumber, "password":password, "ownerName":ownerName, "ownerPhone":ownerPhone}
					, success:function(data){
						if(data.result == "success"){
							alert("회원가입 성공");
							location.href = "/store/signin/view";
						}else{
							alert("회원가입 실패");
						}
					}
					, error:function(){
						alert("회원가입 에러");
					}				
				})
			})
			
			// userId 중복체크
			var isDuplicatedCheck1 = false;
			var isDuplicatedId1 = true;
			
			$("#duplicatedChecked1").on("click", function(){
				let id = $("#userIdInput").val();
				
				if(id == ""){
					alert("아이디를 입력하세요");
					return;
				}
				
				$.ajax({
					type:"get"
					, url:"/user/duplicated_id"
					, data:{"loginId":id}
					, success:function(data){
						isDuplicatedCheck1 = true;
						
						if(data.is_duplicated == true){
							isDuplicatedId1 = true;
							$("#isDuplicatedId1").removeClass("d-none");
							$("#avaliableId1").addClass("d-none");
						}else{
							isDuplicatedId1 = false;
							$("#isDuplicatedId1").addClass("d-none");
							$("#avaliableId1").removeClass("d-none");
						}
					}
					, error:function(){
						alert("중복체크 에러");
					}
				}) 
			});
			
			// user 회원가입
			$("#userSignupBtn").on("click", function(){
				let id = $("#userIdInput").val();
				let password = $("#userPasswordInput").val();
				let passwordConfirm = $("#userPasswordDoubleInput").val();
				let name = $("#userNameInput").val();
				let phone = $("#userPhoneInput").val();
				let email = $("#userEmailInput").val();
				let nickName = $("#userNickNameInput").val();

				if(id == ""){
					alert("아이디를 입력하세요");
					return;
				}
				
				if(isDuplicatedCheck1 == false){
					alert("아이디 중복확인하세요");
					return;
				}
				
				if(isDuplicatedId1 == true){
					alert("아이디 중복되었습니다");
					return;
				}
				
				if(password.length < 6){
					alert("비밀번호가 6자 이상이어야 해요");
					return;
				}
				
				if(passwordConfirm != password){
					alert("비밀번호 다시 확인해주세요");
					return;
				}
				
				if(name == ""){
					alert("이름을 입력하세요");
					return;
				}
				
				if(!phone.startsWith("010") || phone.length != 11){
					alert("010로 시작한 11자리 전화번호를 입력하세요");
					return;
				}
				
				if(!$.isNumeric(phone)){
					alert("전화번호 숫자만 입력하세요");
					return;
				}

				if(email == ""){
					alert("이메일을 입력해주세요");
					return;
				}
				
				if(email.includes("@") == false || email.endsWith(".com") == false){
					alert("이메일은 @를 포함해야하며 .com로 끝나야 합니다");
					return;
				}
				
				if(nickName == ""){
					alert("닉네임을 입력하세요");
					return;
				}
				
				$.ajax({
					type: "post"
					, url: "/user/signup"
					, data:{"loginId":id, "password":password, "name":name, "phone":phone, "email":email, "nickName":nickName, "grade":"고마운분"}
					, success:function(data){
						if(data.result == "success"){
							alert("회원가입 성공");
							location.href = "/user/signin/view";
						}else if(data.result == "exists"){
							alert("이미 가입했습니다");
							location.href = "/user/signin/view";
						}else{
							alert("회원가입 실패");
						}
					}
					, error:function(){
						alert("회원가입 에러");
					}				
				})
			})
			
			// identity에 따라서 관련된 div를 숨기기/나타나기
			$("input[name=identityRadio]").on('change', function() {
                if($(this).val() == 'user') {
                	$(".userSignupBox").removeClass("d-none");
                	$(".storeSignupBox").addClass("d-none");
        			$(".riderSignupBox").addClass("d-none");
                } else if($(this).val() == 'store'){
                	$(".userSignupBox").addClass("d-none");
                	$(".storeSignupBox").removeClass("d-none");
        			$(".riderSignupBox").addClass("d-none");
                } else{
                    $(".userSignupBox").addClass("d-none");
                    $(".storeSignupBox").addClass("d-none");
                    $(".riderSignupBox").removeClass("d-none");
                }
            });
			
			// 비번 입력시 눈 보이기/ 숨기기 이벤트
			$("#userPwEyeBtn").on('click',function(){
				$("#userPasswordInput").toggleClass("active");
				
				if($("#userPasswordInput").hasClass("active") == true){
					$("#userPasswordInput").attr('type', "text");
					$("#userPasswordDoubleInput").attr('type', "text");
					$("i").attr("class","fa-solid fa-eye-slash");
				}else{
					$("#userPasswordInput").attr('type', "password");
					$("#userPasswordDoubleInput").attr('type', "password");
					$("i").attr("class","fa-solid fa-eye");
				}
		    });
			
			$("#storePwEyeBtn").on('click',function(){
				$("#storePasswordInput").toggleClass("active");
				
				if($("#storePasswordInput").hasClass("active") == true){
					$("#storePasswordInput").attr('type', "text");
					$("#storePasswordDoubleInput").attr('type', "text");
					$("i").attr("class","fa-solid fa-eye-slash");
				}else{
					$("#storePasswordInput").attr('type', "password");
					$("#storePasswordDoubleInput").attr('type', "password");
					$("i").attr("class","fa-solid fa-eye");
				}
		    });
			
			$("#riderPwEyeBtn").on('click',function(){
				$("#riderPasswordInput").toggleClass("active");
				
				if($("#riderPasswordInput").hasClass("active") == true){
					$("#riderPasswordInput").attr('type', "text");
					$("#riderPasswordDoubleInput").attr('type', "text");
					$("i").attr("class","fa-solid fa-eye-slash");
				}else{
					$("#riderPasswordInput").attr('type', "password");
					$("#riderPasswordDoubleInput").attr('type', "password");
					$("i").attr("class","fa-solid fa-eye");
				}
		    });
		})
	</script>
</body>
</html>