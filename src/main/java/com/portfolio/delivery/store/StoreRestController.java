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
import org.springframework.web.multipart.MultipartFile;

import com.portfolio.delivery.common.EncryptUtils;
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
			session.setAttribute("storeId", store.getId());
			
			result.put("result", "success");
		}else {
			result.put("result", "fail");
		}
		
		return result;
	}
	
	// 비번 리셋하기
	@PostMapping("/resetPW")
	public Map<String, String> storeResetPW(
			@RequestParam("businessNumber") String businessNumber
			, @RequestParam("ownerName") String ownerName
			, @RequestParam("ownerPhone") String ownerPhone){
		
		String newPW = storeBO.getStorePW(businessNumber, ownerName, ownerPhone);
		
		Map<String, String> result = new HashMap<>();
		if(newPW == "0") {	
			result.put("result", "fail");
		}else {
			result.put("result", "success");
			result.put("newPW", newPW);
		}
		
		return result;
	}
	
	// store 비번 변경
	@PostMapping("/pwUpdate")
	public Map<String, String> pwUpdate(
			@RequestParam("nowPW") String nowPW
			, @RequestParam("newPW") String newPW
			, HttpServletRequest request){
		
		HttpSession session = request.getSession();
		int id = (Integer)session.getAttribute("storeId");
		
		Store store = storeBO.getStoreById(id);
		String password = store.getPassword();
		
		String encryptNowPW = EncryptUtils.md5(nowPW);

		int count = storeBO.updatedPW(id, newPW);
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
	
	// store 가게 정보 입력
	@PostMapping("/createStore")
	public Map<String, String> createStore(
			@RequestParam("phone") String phone
			, @RequestParam("category") String category
			, @RequestParam("storeImg") MultipartFile storeImg
			, @RequestParam("name") String name
			, @RequestParam("introduction") String introduction
			, @RequestParam("minOrderPrice") int minOrderPrice
			, @RequestParam("deliveryBasicFee") int deliveryBasicFee
			, @RequestParam("deliveryArea") String deliveryArea
			, @RequestParam("operationHours") String operationHours
			, @RequestParam("closedDays") String closedDays
			, HttpServletRequest request){
		HttpSession session = request.getSession();
		int id = (Integer)session.getAttribute("storeId");
		
		int count = storeBO.addStoreInfo(id, phone, category, storeImg, name, introduction, minOrderPrice, deliveryBasicFee, deliveryArea, operationHours, closedDays);
		
		Map<String, String> result = new HashMap<>();
		
		if(count == 1) {
			result.put("result", "success");
		}else {
			result.put("result", "fail");
		}
		
		return result;
	}
}
