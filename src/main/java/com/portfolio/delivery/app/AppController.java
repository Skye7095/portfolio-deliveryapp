package com.portfolio.delivery.app;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/app")
public class AppController {
	
	@GetMapping("/identity/view")
	public String appView() {
		return "/app/identity";
	}
	
	@GetMapping("/signup/view")
	public String signupView() {
		return "/app/signup";
	}
	@GetMapping("/findID/view")
	public String findIDView() {
		return "/app/findID";
	}
	
	@GetMapping("/resetPW/view")
	public String resetPWView() {
		return "/app/resetPW";
	}
	
	@GetMapping("/main/view")
	public String mainView() {
		return "/app/main";
	}
	
	@GetMapping("/category/view")
	public String categoryView() {
		return "/app/category";
	}
	
	@GetMapping("/search/view")
	public String searchView() {
		return "/app/search";
	}
}
