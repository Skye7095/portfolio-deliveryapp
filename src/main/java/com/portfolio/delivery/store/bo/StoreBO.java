package com.portfolio.delivery.store.bo;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.portfolio.delivery.common.EncryptUtils;
import com.portfolio.delivery.store.dao.StoreDAO;

@Service
public class StoreBO {

	@Autowired
	public StoreDAO storeDAO;
	
	// 회원가입
	public int addStore(
			String businessNumber
			, String password
			, String name
			, String phone) {
		
		// 비번 암호화
		String encryptPW = EncryptUtils.md5(password);
		
		return storeDAO.insertStore(businessNumber, encryptPW, name, phone);
	}
	
	// businessNumber 중복확인
	public boolean isDuplicated(String businessNumber) {
		int count = storeDAO.selectSameStore(businessNumber);
		
		if(count != 0) { //중복
			return true;
		}else { // 중복하지 않음
			return false;
		}
	}
}
