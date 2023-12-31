<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>사장님 메뉴관리</title>
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
			<h1 class="text-center">메뉴 관리</h1>
			<button type="button" class="btn home bg-primary"><i class="fa-solid fa-house fa-2xl"></i></button>
		</header>
		
		<section class="container">
			<div class="d-flex justify-content-around my-3">
					<div data-toggle="modal" data-target="#menuCatBtnModal">
						<button type="button" class="menuCatBtn btn btn-info">메뉴 대분류 작성</button>
					</div>
				<button type="button" class="menuUploadBtn btn btn-primary col-5">신메뉴 업로드</button>
			</div>
			
			<div class="bg-light mt-3 p-1 menuCatDiv">
				예시)
				<p class="font-weight-bold">메인요리</p>
				<div class="d-flex">
					
					<div class="col-9">
						<span class="font-weight-bold">아구찜</span><br>
						<span class="text-secondary" style:"12px">아구+명태곤이+아구특수부위</span><br>
						<span>소(2~3인): 35,000원</span><br>
						<span>중(3~4인): 38,000원</span><br>
						<span>대(4~5인): 42,000원</span><br>
					</div>
					<img width="100" height="100" src="/static/images/info.png">
				</div>
				
			</div>

		</section>
	</div>
	
	<!-- 메뉴대분류작성 modal -->
	<div class="modal fade" id="menuCatBtnModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
	  <div class="modal-dialog modal-dialog-centered modal-sm" role="document">
	    <div class="modal-content">
	    	<div class="modal-body">
	    		<h5 class="text-center">메뉴 대분류 작성</h5>

	    		<c:forEach var="i" begin="1" end="7" step="1" varStatus="vs">
		    		<div class="menuCatDiv my-2 d-none" id="menuCatDiv${vs.index }" data-index-id="${vs.index }">
			    		<div class="d-flex">
				    		<input class="form-control mr-1">
				    		<button type="button" id="menuCatAddBtn${vs.index }" class="menuCatAddBtn btn btn-sm rounded-circle d-none" data-index-id="${vs.index}"><i class="fa-solid fa-plus"></i></button>
						</div>
					</div>
				</c:forEach>
	    		
	    		<button type="button" class="btn btn-block btn-primary">작성완료</button>
	    	</div>
	    </div>
	  </div>
	</div>
	
	<script>
		$(document).ready(function(){
			
			$("#menuCatDiv1").removeClass("d-none");
			$("#menuCatAddBtn1").removeClass("d-none");
			
			$(".menuCatAddBtn").on("click", function(){
				let id = $(this).data("index-id");
				let newId = id + 1;
				$("#menuCatDiv" + newId).removeClass("d-none");
				$("#menuCatAddBtn" + newId).removeClass("d-none");
				$("#menuCatAddBtn" + id).addClass("d-none");
			})
			
			$(".menuUploadBtn").on("click", function(){
				location.href="/store/menuUpload/view";
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