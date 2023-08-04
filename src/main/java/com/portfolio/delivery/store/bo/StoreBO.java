package com.portfolio.delivery.store.bo;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.portfolio.delivery.common.EncryptUtils;
import com.portfolio.delivery.common.randomPW;
import com.portfolio.delivery.store.dao.StoreDAO;
import com.portfolio.delivery.store.model.Store;
import com.portfolio.delivery.user.model.User;

@Service
public class StoreBO {

	@Autowired
	public StoreDAO storeDAO;
	
	// 회원가입
	public int addStore(
			String businessNumber
			, String password
			, String ownerName
			, String ownerPhone) {
		
		// 비번 암호화
		String encryptPW = EncryptUtils.md5(password);
		
		return storeDAO.insertStore(businessNumber, encryptPW, ownerName, ownerPhone);
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
	
	// 로그인
	public Store getStore(
			String businessNumber
			, String password) {
		String encryptPW = EncryptUtils.md5(password);
		
		return storeDAO.selectStore(businessNumber, encryptPW);
	}
	
	// 비번 리셋
	public String getStorePW(
			String businessNumber
			, String ownerName
			, String ownerPhone) {
		// 랜덤비번 생성
		String randPW = randomPW.randomNum();
		String encryptNewPW = EncryptUtils.md5(randPW); // 임시비번 암호화
		
		Store store = storeDAO.selectStorePW(businessNumber, ownerName, ownerPhone);
		int storeId = 0;
		if(store != null) {
			storeId = store.getId();
		}
		
		// 1단계:update 성공여부 판단하기
		int count = storeDAO.updatedStorePW(storeId, encryptNewPW);
		
		//  2단계: update된 비밀번호 전달하기
		String newPW = "0";
		if(count == 1) {
			newPW = randPW;
		}
		
		return newPW;
	}
}
