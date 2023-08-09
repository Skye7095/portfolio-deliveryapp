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

import com.portfolio.delivery.common.EncryptUtils;
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
	
	// 이름과 번호로 id 찾기
	@PostMapping("/findID/phone")
	public String riderGetIDByPhone(
			@RequestParam("name") String name
			, @RequestParam("phone") String phone){

		return riderBO.getRiderIDByPhone(name, phone);
	}
	
	// 이름과 메일로 id 찾기
	@PostMapping("/findID/email")
	public String riderGetIDByEmail(
			@RequestParam("name") String name
			, @RequestParam("email") String email){
		
		return riderBO.getRiderIDByEmail(name, email);
	}
	
	// 이름과 번호로 비번 리셋하기
	@PostMapping("/resetPW/phone")
	public Map<String, String> riderGetPWByPhone(
			@RequestParam("name") String name
			, @RequestParam("phone") String phone) {
		
		String newPW = riderBO.getRiderPWByPhone(name, phone);
		
		Map<String, String> result = new HashMap<>();
		if(newPW == "0") {	
			result.put("result", "fail");
		}else {
			result.put("result", "success");
			result.put("newPW", newPW);
		}
		
		return result;
	}
	
	// 이름과 이메일 비번 리셋하기
	@PostMapping("/resetPW/email")
	public Map<String, String> riderGetPWByEmail(
			@RequestParam("name") String name
			, @RequestParam("email") String email) {
		
		String newPW = riderBO.getRiderPWByEmail(name, email);
		
		Map<String, String> result = new HashMap<>();
		if(newPW == "0") {	
			result.put("result", "fail");
		}else {
			result.put("result", "success");
			result.put("newPW", newPW);
		}
		
		return result;
	}
	
	// 변경 시도한 이메일 중복 여부
	@GetMapping("/duplicated_email")
	public Map<String, Boolean> duplicatedEmail(@RequestParam("email") String email){
		
		boolean isDuplicatedByEmail = riderBO.emailDuplicated(email);
		
		Map<String, Boolean> result = new HashMap<>();
		
		if(isDuplicatedByEmail == true) {
			result.put("email_duplicated", true);
		}else {
			result.put("email_duplicated", false);
		}
		
		
		return result;
	}
	
	// 이메일 변경
	@PostMapping("/emailUpdate")
	public Map<String, String> emailUpdate(
			@RequestParam("email") String email
			, HttpServletRequest request){
		
		HttpSession session = request.getSession();
		int id = (Integer)session.getAttribute("riderId");
		
		int count = riderBO.updatedEmail(id, email);
		
		Map<String, String> result = new HashMap<>();
		
		if(count == 1) {
			result.put("result", "success");
		}else {
			result.put("result", "fail");
		}
		return result;
	}
	
	//  변경 시도한 번호 중복 여부
	@GetMapping("/duplicated_phone")
	public Map<String, Boolean> duplicatedPhone(@RequestParam("phone") String phone){
		
		boolean isDuplicatedByPhone = riderBO.phoneDuplicated(phone);
		
		Map<String, Boolean> result = new HashMap<>();
		
		if(isDuplicatedByPhone == true) {
			result.put("phone_duplicated", true);
		}else {
			result.put("phone_duplicated", false);
		}
		
		
		return result;
	}
	
	// 번호 변경
	@PostMapping("/phoneUpdate")
	public Map<String, String> phoneUpdate(
			@RequestParam("phone") String phone
			, HttpServletRequest request){
		
		HttpSession session = request.getSession();
		int id = (Integer)session.getAttribute("riderId");
		
		int count = riderBO.updatedPhone(id, phone);
		
		Map<String, String> result = new HashMap<>();
		
		if(count == 1) {
			result.put("result", "success");
		}else {
			result.put("result", "fail");
		}
		return result;
	}
	
	// 비번 변경
	@PostMapping("/pwUpdate")
	public Map<String, String> pwUpdate(
			@RequestParam("nowPW") String nowPW
			, @RequestParam("newPW") String newPW
			, HttpServletRequest request){
		
		HttpSession session = request.getSession();
		int id = (Integer)session.getAttribute("riderId");
		
		Rider rider = riderBO.getRiderById(id);
		String password = rider.getPassword();
		
		String encryptNowPW = EncryptUtils.md5(nowPW);

		int count = riderBO.updatedPW(id, newPW);
		Map<String, String> result = new HashMap<>();
		
		if(password.equals(encryptNowPW) ) {
			if(count == 1) {
				result.put("result", "success");
			}else {
				result.put("result", "fail");
			}
		}else {
			result.put("result", "fail");
		}

		return result;
	}
}
