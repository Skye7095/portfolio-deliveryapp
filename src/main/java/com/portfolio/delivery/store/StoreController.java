package com.portfolio.delivery.store;

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
	
	@GetMapping("/mypage/view")
	public String StoreMypageView() {
		return "/store/mypage";
	}
	
	@GetMapping("/info/view")
	public String StoreInfoView() {
		return "/store/info";
	}
}
