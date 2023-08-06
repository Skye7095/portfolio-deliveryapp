package com.portfolio.delivery.user;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.portfolio.delivery.user.bo.UserBO;
import com.portfolio.delivery.user.model.User;

@Controller
@RequestMapping("/user")
public class UserController {
	
	@Autowired
	private UserBO userBO;
	
	// 로그인
	@GetMapping("/signin/view")
	public String UserSigninView() {
		return "/user/signin";
	}
	
	// 로그아웃
	@GetMapping("/signout")
	public String signout(HttpServletRequest request) {
		
		HttpSession session = request.getSession();
		
		session.removeAttribute("userId");
		session.removeAttribute("userName");
		
		return "redirect:/app/identity/view";
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
	
	// 개인정보
	@GetMapping("/info/view")
	public String UserInfoView(
			HttpServletRequest request
			, Model model) {
		HttpSession session = request.getSession();
		int id = (Integer)session.getAttribute("userId");
		
		User userList = userBO.getUserById(id);
		model.addAttribute("userList", userList);

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
