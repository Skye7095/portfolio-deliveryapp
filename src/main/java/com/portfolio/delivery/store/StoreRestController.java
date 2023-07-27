package com.portfolio.delivery.store;

import java.util.HashMap;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.portfolio.delivery.store.bo.StoreBO;

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
			, @RequestParam("name") String name
			, @RequestParam("phone") String phone){
		
		int count = storeBO.addStore(businessNumber, password, name, phone);
		
		Map<String, String> result = new HashMap<>();
		
		if(count == 1) {
			result.put("result", "success");
		}else {
			result.put("result", "fail");
		}
		
		return result;
	}
}
