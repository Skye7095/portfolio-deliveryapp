<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>가게 리뷰관리</title>
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
			<h1 class="text-center">리뷰관리</h1>
			<button type="button" class="btn home bg-primary"><i class="fa-solid fa-house fa-2xl"></i></button>
		</header>
		
		<section class="container">
			<div class="d-flex justify-content-around my-3">
				<select class="form-control">
				  <option selected>미응답</option>
				  <option value="1">최신순</option>
				  <option value="2">별점 높은 순</option>
				  <option value="3">별점 낮은 순</option>
				</select>
			</div>
			
			<h5 class="font-weight-bold mt-3">총 리뷰 2개</h5>
			<div class="d-flex justify-content-between align-items-center mt-3">
				<span class="text-dark font-weight-bold">홍길동</span>
					<div data-toggle="modal" data-target="#replyBtnModal">
						<button type="button" class="replyBtn btn btn-sm round-pill bg-primary text-white">댓글</button>
					</div>
			</div>
		
			<i class="fa-solid fa-star" style="color: #ece509;"></i><i class="fa-solid fa-star" style="color: #ece509;"></i> <span class="text-secondary">3개월 전</span>
			<br>
			<button type="button" class="btn round-pill bg-light border border-secondary">[일반+매운양념] 순살 반반족발</button>
			<p class="mt-2">리뷰리아러ㅏ얼마어라ㅓㅁ아러ㅏㅁ어람</p>
			<img width="100" src="/static/images/info.png">
			<hr>
		</section>
	</div>
	
	<!-- 댓글 modal -->
	<div class="modal fade" id="replyBtnModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
	  <div class="modal-dialog modal-dialog-centered modal-sm" role="document">
	    <div class="modal-content">
	    	<div class="modal-body">
	    		<h5 class="text-center">댓글 작성</h5>
	    		<textarea class="form-control" rows="10" placeholder="댓글 내용을 입력해주세요"></textarea>
	    		<button type="button" class="btn btn-block btn-primary mt-3">작성완료</button>
	    	</div>
	    </div>
	  </div>
	</div>
	
	<script>
		$(document).ready(function(){
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