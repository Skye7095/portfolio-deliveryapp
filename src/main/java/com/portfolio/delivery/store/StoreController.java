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
}
