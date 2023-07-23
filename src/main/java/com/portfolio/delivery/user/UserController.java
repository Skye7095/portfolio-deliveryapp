package com.portfolio.delivery.user;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/user")
public class UserController {
	
	@GetMapping("/signin/view")
	public String UserSigninView() {
		return "/user/signin";
	}
	
	@GetMapping("/mypage/view")
	public String UserMyPageView() {
		return "/user/mypage";
	}
	
	@GetMapping("/grade/view")
	public String UserGradeView() {
		return "/user/grade";
	}
	
	@GetMapping("/point/view")
	public String UserPointView() {
		return "/user/point";
	}
	
	@GetMapping("/info/view")
	public String UserInfoView() {
		return "/user/info";
	}
	
	@GetMapping("/like/view")
	public String UserLikeView() {
		return "/user/like";
	}
	
	@GetMapping("/history/view")
	public String UserHistoryView() {
		return "/user/history";
	}
	
	@GetMapping("/review/view")
	public String UserReviewView() {
		return "/user/review";
	}
	
	@GetMapping("/cart/view")
	public String UserCartView() {
		return "/user/cart";
	}
	
	@GetMapping("/payment/view")
	public String UserPaymentView() {
		return "/user/payment";
	}
}
