package com.portfolio.delivery.store;

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

import com.portfolio.delivery.store.bo.StoreBO;
import com.portfolio.delivery.store.model.Store;

@RestController
@RequestMapping("/store")
public class StoreRestController {
	
	@Autowired
	public StoreBO storeBO;
	
	// 회원가입시 businessNumber 중복확인
	@GetMapping("/duplicated_id")
	public Map<String, Boolean> duplicatedId(@RequestParam("businessNumber") String businessNumber){
		
		boolean isDuplicatedStore = storeBO.isDuplicated(businessNumber);
		
		Map<String, Boolean> result = new HashMap<>();
		
		if(isDuplicatedStore == true) {
			result.put("is_duplicated", true);
		}else {
			result.put("is_duplicated", false);
		}
		
		return result;
	}
	
	// 회원가입
	@PostMapping("/signup")
	public Map<String, String> userSignup(
			@RequestParam("businessNumber") String businessNumber
			, @RequestParam("password") String password
			, @RequestParam("ownerName") String ownerName
			, @RequestParam("ownerPhone") String ownerPhone){
		
		int count = storeBO.addStore(businessNumber, password, ownerName, ownerPhone);
		
		Map<String, String> result = new HashMap<>();
		
		if(count == 1) {
			result.put("result", "success");
		}else {
			result.put("result", "fail");
		}
		
		return result;
	}
	
	// store 로그인
	@PostMapping("/signin")
	public Map<String, String> storeSignin(
			@RequestParam("businessNumber") String businessNumber
			, @RequestParam("password") String password
			, HttpServletRequest request){
		
		Store store = storeBO.getStore(businessNumber, password);
		
		Map<String, String> result = new HashMap<>();
		
		if(store != null) {
			HttpSession session = request.getSession();
			session.setAttribute("id", store.getId());
			
			result.put("result", "success");
		}else {
			result.put("result", "fail");
		}
		
		return result;
	}
}
