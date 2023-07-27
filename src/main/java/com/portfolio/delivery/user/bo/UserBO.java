package com.portfolio.delivery.user.bo;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.portfolio.delivery.common.EncryptUtils;
import com.portfolio.delivery.user.dao.UserDAO;

@Service
public class UserBO {
	
	@Autowired
	public UserDAO userDAO;
	
	// 회원가입
	public int addUser(
			String loginId
			, String password
			, String name
			, String phone
			, String email
			, String nickName
			, String grade) {
		
		// 비번 암호화
		String encryptPW = EncryptUtils.md5(password);
		
		int userCount = 0;
		
		// 동일인물이 이미 가입했는지 확인
		int count = userDAO.selectSameUser(name, phone, email);
		if(count != 0) {
			// 동일인물이 이미 가입했음
			userCount = -1;
		}else {
			userCount = userDAO.insertUser(loginId, encryptPW, name, phone, email, nickName, grade);
		}
		
		return userCount;
	}
	
	// id 중복확인
	public boolean isDuplicated(String loginId) {
		int count = userDAO.selectSameId(loginId);
		
		if(count != 0) { //중복
			return true;
		}else { // 중복하지 않음
			return false;
		}
	}
}
