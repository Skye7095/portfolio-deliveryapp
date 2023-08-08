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
	
	// user 이름과 번호로 비번 리셋하기
	@PostMapping("/resetPW/phone")
	public Map<String, String> resetpwByPhone(
			@RequestParam("name") String name
			, @RequestParam("phone") String phone) {
		String newPW = userBO.getUserPWByPhone(name, phone);
		
		Map<String, String> result = new HashMap<>();
		if(newPW == "0") {	
			result.put("result", "fail");
		}else {
			result.put("result", "success");
			result.put("newPW", newPW);
		}
		
		return result;
	}
	
	// user 이름과 번호로 비번 리셋하기
	@PostMapping("/resetPW/email")
	public Map<String, String> resetpwByEmail(
			@RequestParam("name") String name
			, @RequestParam("email") String email) {
		String newPW = userBO.getUserPWByEmail(name, email);
		
		Map<String, String> result = new HashMap<>();
		if(newPW == "0") {	
			result.put("result", "fail");
		}else {
			result.put("result", "success");
			result.put("newPW", newPW);
		}
		
		return result;
	}
	
	// user 닉네임 변경
	@PostMapping("/nickNameUpdate")
	public Map<String, String> nickNameUpdate(
			@RequestParam("nickName") String nickName
			, HttpServletRequest request){
		
		HttpSession session = request.getSession();
		int id = (Integer)session.getAttribute("userId");
		
		int count = userBO.updatedNickName(id, nickName);
		
		Map<String, String> result = new HashMap<>();
		
		if(count == 1) {
			result.put("result", "success");
		}else {
			result.put("result", "fail");
		}
		
		return result;
	}
	
	// user 변경 시도한 이메일 중복 여부
	@GetMapping("/duplicated_email")
	public Map<String, Boolean> duplicatedEmail(@RequestParam("email") String email){
		
		boolean isDuplicatedByEmail = userBO.emailDuplicated(email);
		
		Map<String, Boolean> result = new HashMap<>();
		
		if(isDuplicatedByEmail == true) {
			result.put("email_duplicated", true);
		}else {
			result.put("email_duplicated", false);
		}
		
		
		return result;
	}
	
	// user 이메일 변경
	@PostMapping("/emailUpdate")
	public Map<String, String> emailUpdate(
			@RequestParam("email") String email
			, HttpServletRequest request){
		
		HttpSession session = request.getSession();
		int id = (Integer)session.getAttribute("userId");
		
		int count = userBO.updatedEmail(id, email);
		
		Map<String, String> result = new HashMap<>();
		
		if(count == 1) {
			result.put("result", "success");
		}else {
			result.put("result", "fail");
		}
		return result;
	}
	
	// user 변경 시도한 번호 중복 여부
	@GetMapping("/duplicated_phone")
	public Map<String, Boolean> duplicatedPhone(@RequestParam("phone") String phone){
		
		boolean isDuplicatedByPhone = userBO.phoneDuplicated(phone);
		
		Map<String, Boolean> result = new HashMap<>();
		
		if(isDuplicatedByPhone == true) {
			result.put("phone_duplicated", true);
		}else {
			result.put("phone_duplicated", false);
		}
		
		
		return result;
	}
	
	// user 번호 변경
	@PostMapping("/phoneUpdate")
	public Map<String, String> phoneUpdate(
			@RequestParam("phone") String phone
			, HttpServletRequest request){
		
		HttpSession session = request.getSession();
		int id = (Integer)session.getAttribute("userId");
		
		int count = userBO.updatedPhone(id, phone);
		
		Map<String, String> result = new HashMap<>();
		
		if(count == 1) {
			result.put("result", "success");
		}else {
			result.put("result", "fail");
		}
		return result;
	}

}
