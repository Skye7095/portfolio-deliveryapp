package com.portfolio.delivery.rider;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.portfolio.delivery.rider.bo.RiderBO;
import com.portfolio.delivery.rider.model.Rider;
import com.portfolio.delivery.user.model.User;

@Controller
@RequestMapping("/rider")
public class RiderController {

	@Autowired
	private RiderBO riderBO;
	
	@GetMapping("/signin/view")
	public String RiderSigninView() {
		return "/rider/signin";
	}
	
	// 로그아웃
	@GetMapping("/signout")
	public String signout(HttpServletRequest request) {
		
		HttpSession session = request.getSession();
		
		session.removeAttribute("riderId");
		session.removeAttribute("riderName");
		
		return "redirect:/app/identity/view";
	}
	
	@GetMapping("/info/view")
	public String RiderInfoView(
			HttpServletRequest request
			, Model model) {
		HttpSession session = request.getSession();
		int id = (Integer)session.getAttribute("riderId");
		
		Rider riderList = riderBO.getRiderById(id);
		model.addAttribute("riderList", riderList);

		return "/rider/info";
	}

		
	@GetMapping("/history/view")
	public String RiderHistoryView() {
		return "/rider/history";
	}
	
	
}
