package com.portfolio.delivery.store;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/store")
public class StoreController {
	
	@GetMapping("/signin/view")
	public String StoreSigninView() {
		return "/store/signin";
	}
	
	// 로그아웃
	@GetMapping("/signout")
	public String signout(HttpServletRequest request) {
		
		HttpSession session = request.getSession();
		
		session.removeAttribute("storeId");
		
		return "redirect:/app/identity/view";
	}
	
	@GetMapping("/mypage/view")
	public String StoreMypageView() {
		return "/store/mypage";
	}
	
	@GetMapping("/info/view")
	public String StoreInfoView() {
		return "/store/info";
	}
	
	@GetMapping("/menuManagement/view")
	public String StoreMenuManagementView() {
		return "/store/menuManagement";
	}
	
	@GetMapping("/menuUpload/view")
	public String StoreMenuUploadView() {
		return "/store/menuUpload";
	}
	
	@GetMapping("/order/view")
	public String StoreOrderView() {
		return "/store/order";
	}
	
	@GetMapping("/review/view")
	public String StoreReviewView() {
		return "/store/review";
	}
	
	@GetMapping("/statistics/view")
	public String StoreStatisticsView() {
		return "/store/statistics";
	}
}
