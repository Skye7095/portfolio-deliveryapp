package com.portfolio.delivery.rider.bo;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.portfolio.delivery.common.EncryptUtils;
import com.portfolio.delivery.rider.dao.RiderDAO;
import com.portfolio.delivery.rider.model.Rider;

@Service
public class RiderBO {
	
	@Autowired
	public RiderDAO riderDAO;
	
	// 회원가입
	public int addRider(
			String loginId
			, String password
			, String name
			, String phone
			, String email) {
		
		// 비번 암호화
		String encryptPW = EncryptUtils.md5(password);
		
		int userCount = 0;
		
		// 동일인물이 이미 가입했는지 확인
		int count = riderDAO.selectSameRider(name, phone, email);
		if(count != 0) {
			// 동일인물이 이미 가입했음
			userCount = -1;
		}else {
			userCount = riderDAO.insertRider(loginId, encryptPW, name, phone, email);
		}
		
		return userCount;
	}
	
	// id 중복확인
	public boolean isDuplicated(String loginId) {
		int count = riderDAO.selectSameId(loginId);
		
		if(count != 0) { //중복
			return true;
		}else { // 중복하지 않음
			return false;
		}
	}
	
	// 로그인
	public Rider getRider(
			String loginId
			, String password) {
		String encryptPW = EncryptUtils.md5(password);
		
		return riderDAO.selectRider(loginId, encryptPW);
	}
	
	// 이름과 번호로 id 찾기
	public String getRiderIDByPhone(
			String name
			, String phone) {
		
		return riderDAO.selectRiderIDByPhone(name, phone);
	}
	
	// 이름과 번호로 id 찾기
	public String getRiderIDByEmail(
			String name
			, String email) {
		
		return riderDAO.selectRiderIDByEmail(name, email);
	}
}
