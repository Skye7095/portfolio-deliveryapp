<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>사장님 메뉴업로드</title>
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
			<h1 class="text-center">메뉴 업로드</h1>
			<button type="button" class="btn home bg-primary"><i class="fa-solid fa-house fa-2xl"></i></button>
		</header>
		
		<section class="container">
			<div class="text-center my-3">
				<button type="button" id="menuImgBtn" class="btn"><img width="100" src="/static/images/image.png"></button>
				<input class="profile mt-3 d-none" type="file" multiple id="profileFileInput">
			</div>
			
			<div class="d-flex justify-content-center">
				<input class="form-control col-8" placeholder="메뉴 이름을 입력해주세요">
			</div>
			
			<textarea class="form-control mt-2" rows="5" placeholder="메뉴를 소개해주세요"></textarea>
			
			<div class="d-flex justify-content-between align-items-center mt-2">
				<span>가격</span>
				<div class="d-flex col-6 align-items-center">
					<input class="form-control mr-1">
					<span>원</span>
				</div>
			</div>
			
			
			<div class="bg-light mt-3 p-1">
			<c:forEach var="i" begin="1" end="3" step="1" varStatus="vs">
				<div class="menuOptionDiv d-none" id="menuOptionDiv${vs.index }" data-index-id="${menuOptionDetailAddBtn }">
					<div class="d-flex">
						<input class="form-control mr-1" placeholder="옵션란 이름을 적어주세요">
						<button type="button" id="menuOptionAddBtn${vs.index }" class="menuOptionAddBtn btn btn-sm rounded-circle d-none" data-index-id="${vs.index}"><i class="fa-solid fa-plus"></i></button>
					</div>
				
					<table class="table mt-2">					
						<tbody class="menuOptionDetailDiv" id="menuOption${vs.index }DetailDiv" data-index-id="${vs.index}">
							<c:forEach var="i" begin="1" end="3" step="1" varStatus="vsDetail">
							<tr class="menuOptionDetailTr d-none" id="menuOption${vs.index }DetailTr${vsDetail.index }" data-index-id="${vs.index}" data-index2-id="${vsDetail.index}">
								<td class="border border-dark col-2"><button type="button" id="menuOption${vs.index }DetailAddBtn${vsDetail.index }" class="menuOptionDetailAddBtn btn btn-sm rounded-circle" data-index-id="${vs.index}" data-index2-id="${vsDetail.index }"><i class="fa-solid fa-plus"></i></button></td>
								<td class="border border-dark col-5"><input placeholder="아주 맵게" class="col-12" id="menuOption${vs.index }Detail${vsDetail.index }Input"></td>
								<td class="border border-dark col-5"><span>+ </span><input placeholder="500" class="col-8">원</td>
							</tr>
							</c:forEach>
						</tbody>
					</table>
				</div>
			</c:forEach>
			</div>
			
			<button type="button" class="btn btn-block btn-primary">작성완료</button>
		</section>
	</div>
	
	<script>
		$(document).ready(function(){
						
			/* var menuOptionDetailAdd = '<tr>' +
				'<td class="border border-dark col-2"></td>' +
				'<td class="border border-dark col-5"><input placeholder="아주 맵게" class="col-12" id="menuOption${vs.index }Detail${repeat}"></td>' +
				'<td class="border border-dark col-5"><span>+ </span><input placeholder="500" class="col-8">원</td>' +
			'</tr>' */
			
			$("#menuOptionDiv1").removeClass("d-none");
			$("#menuOptionAddBtn1").removeClass("d-none");
			$("#menuOption1DetailTr1").removeClass("d-none");
			
			$(".menuOptionAddBtn").on("click", function(){
				let id = $(this).data("index-id");
				let newId = id + 1;
				if(id < 2){
					$("#menuOptionDiv" + newId).removeClass("d-none");
					$("#menuOptionAddBtn" + newId).removeClass("d-none");
					$("#menuOptionAddBtn" + id).addClass("d-none");
					$("#menuOption" + newId + "DetailTr1").removeClass("d-none");
				}else{
					$("#menuOptionDiv" + newId).removeClass("d-none");
					$("#menuOptionAddBtn" + id).addClass("d-none");
					$("#menuOption" + newId + "DetailTr1").removeClass("d-none");

				}
			})
			
			
			
			$(".menuOptionDetailAddBtn").on("click", function(){
				let id1 = $(this).data("index-id");
				let newId1 = id1 + 1;
				let id2 = $(this).data("index2-id");
				let newId2 = id2 + 1;
				
				if(id2 <= 2){
					$("#menuOption" + id1 + "DetailTr" + newId2).removeClass("d-none");
					$("#menuOption" + id1 + "DetailAddBtn" + newId2).removeClass("d-none");
					$("#menuOption" + id1 + "DetailAddBtn" + id2).addClass("d-none");
				}else{
					$("#menuOption" + id1 + "DetailTr" + newId2).removeClass("d-none");
					$("#menuOption" + id1 + "DetailAddBtn" + id2).addClass("d-none");
				}
				
				$("#menuOption" + id1 + "DetailAddBtn3").addClass("d-none");
			})
			
			/* var repeat = 1;
			$(".menuOptionDetailAddBtn").on("click", function(){
				let id = $(this).data("index-id");
				$("#menuOptionDetailDiv" + id).append(menuOptionDetailAdd + repeat);
				repeat++;
				if(repeat >= 3){
					$("#menuOptionDetailAddBtn" + id).addClass("d-none");
				}else{
					
				}
				
			})  */
			
			$("#menuImgBtn").on("click", function(){
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