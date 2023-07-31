package com.portfolio.delivery.rider;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/rider")
public class RiderController {

	@GetMapping("/signin/view")
	public String RiderSigninView() {
		return "/rider/signin";
	}
	
	@GetMapping("/mypage/view")
	public String RiderMypageView() {
		return "/rider/mypage";
	}
	
	@GetMapping("/history/view")
	public String RiderHistoryView() {
		return "/rider/history";
	}
}
