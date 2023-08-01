package com.portfolio.delivery.user;

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

import com.portfolio.delivery.user.bo.UserBO;
import com.portfolio.delivery.user.model.User;

@RestController
@RequestMapping("/user")
public class UserRestController {
	
	@Autowired
	public UserBO userBO;
	
	// 회원가입
	@PostMapping("/signup")
	public Map<String, String> userSignup(
			@RequestParam("loginId") String loginId
			, @RequestParam("password") String password
			, @RequestParam("name") String name
			, @RequestParam("phone") String phone
			, @RequestParam("email") String email
			, @RequestParam("nickName") String nickName
			, @RequestParam("grade") String grade){
		
		int count = userBO.addUser(loginId, password, name, phone, email, nickName, grade);
		
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
	
	// user 회원가입시 ID 중복확인
	@GetMapping("/duplicated_id")
	public Map<String, Boolean> duplicatedId(@RequestParam("loginId") String loginId){
		
		boolean isDuplicatedById = userBO.isDuplicated(loginId);
		
		Map<String, Boolean> result = new HashMap<>();
		
		if(isDuplicatedById == true) {
			result.put("is_duplicated", true);
		}else {
			result.put("is_duplicated", false);
		}
		
		
		return result;
	}
	
	// user 회원 로그인
	@PostMapping("/signin")
	public Map<String, String> userSignin(
			@RequestParam("loginId") String loginId
			, @RequestParam("password") String password
			, HttpServletRequest request){
		
		User user = userBO.getUser(loginId, password);
		
		Map<String, String> result = new HashMap<>();
		
		if(user != null) {
			HttpSession session = request.getSession();
			session.setAttribute("userId", user.getId());
		
			result.put("result", "success");
		}else {
			result.put("result", "fail");
		}
		
		return result;
	}
	
	// user 이름과 번호로 id 찾기
	@PostMapping("/findID/phone")
	public String userGetIDByPhone(
			@RequestParam("name") String name
			, @RequestParam("phone") String phone){
		
		return userBO.getUserIDByPhone(name, phone);
	}
	
	// user 이름과 메일로 id 찾기
	@PostMapping("/findID/email")
	public String userGetIDByEmail(
			@RequestParam("name") String name
			, @RequestParam("email") String email){
		
		return userBO.getUserIDByEmail(name, email);
	}
}
