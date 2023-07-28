package com.portfolio.delivery.rider;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.portfolio.delivery.rider.bo.RiderBO;
import com.portfolio.delivery.rider.model.Rider;
import com.portfolio.delivery.user.model.User;

@RestController
@RequestMapping("/rider")
public class RiderRestController {
	
	@Autowired
	public RiderBO riderBO;
	
	// 회원가입
	@PostMapping("/signup")
	public Map<String, String> riderSignup(
			@RequestParam("loginId") String loginId
			, @RequestParam("password") String password
			, @RequestParam("name") String name
			, @RequestParam("phone") String phone
			, @RequestParam("email") String email){
		
		int count = riderBO.addRider(loginId, password, name, phone, email);
		
		Map<String, String> result = new HashMap<>();
		
		if(count == -1) {
			result.put("result", "exists");
		}else if(count == 1) {
			result.put("result", "success");
		}else {
			result.put("result", "fail");
		}
		return result;
	}
	
	// rider 회원가입시 ID 중복확인
	@GetMapping("/duplicated_id")
	public Map<String, Boolean> duplicatedId(@RequestParam("loginId") String loginId){
		
		boolean isDuplicatedById = riderBO.isDuplicated(loginId);
		
		Map<String, Boolean> result = new HashMap<>();
		
		if(isDuplicatedById == true) {
			result.put("is_duplicated", true);
		}else {
			result.put("is_duplicated", false);
		}
		
		
		return result;
	}
	
	// 로그인
	@PostMapping("/signin")
	public Map<String, String> riderSignin(
			@RequestParam("loginId") String loginId
			, @RequestParam("password") String password
			, HttpServletRequest request){
		
		Rider rider = riderBO.getRider(loginId, password);
		
		Map<String, String> result = new HashMap<>();
		
		if(rider != null) {
			HttpSession session = request.getSession();
			session.setAttribute("riderId", rider.getId());
			
			result.put("result", "success");
		}else {
			result.put("result", "fail");
		}
		return result;
	}
}