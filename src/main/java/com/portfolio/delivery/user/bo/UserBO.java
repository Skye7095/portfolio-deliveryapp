package com.portfolio.delivery.user.bo;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.portfolio.delivery.common.EncryptUtils;
import com.portfolio.delivery.common.randomPW;
import com.portfolio.delivery.user.dao.UserDAO;
import com.portfolio.delivery.user.model.User;

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
	
	// 로그인
	public User getUser(
			String loginId
			, String password) {
		String encryptPW = EncryptUtils.md5(password);
		
		return userDAO.selectUser(loginId, encryptPW);
	}
	
	// 이름과 번호로 id 찾기
	public String getUserIDByPhone(
			String name
			, String phone) {
		
		return userDAO.selectUserIDByPhone(name, phone);
	}
	
	// 이름과 번호로 id 찾기
	public String getUserIDByEmail(
			String name
			, String email) {
		
		return userDAO.selectUserIDByEmail(name, email);
	}
	
	// 이름과 번호로 비번 리셋하기
	public String getUserPWByPhone(
			String name
			, String phone) {
		// 랜덤비번 생성
		String randPW = randomPW.randomNum();
		String encryptNewPW = EncryptUtils.md5(randPW); // 임시비번 암호화

		User user =  userDAO.selectUserPWByPhone(name, phone);
		int userId = user.getId();
		
		// 1단계:update 성공여부 판단하기
		int count = userDAO.updatedUserPW(userId, encryptNewPW);
		
		//  2단계: update된 비밀번호 전달하기
		String newPW = "0";
		if(count == 1) {
			newPW = randPW;
		}else {
			newPW = "0";
		}
		
		return newPW;
	}
	
	// 이름과 번호로 비번 리셋하기
	public String getUserPWByEmail(
			String name
			, String email) {
		// 랜덤비번 생성
		String randPW = randomPW.randomNum();
		String encryptNewPW = EncryptUtils.md5(randPW); // 임시비번 암호화

		User user =  userDAO.selectUserPWByEmail(name, email);
		int userId = user.getId();
		
		// 1단계:update 성공여부 판단하기
		int count = userDAO.updatedUserPW(userId, encryptNewPW);
		
		//  2단계: update된 비밀번호 전달하기
		String newPW = "0";
		if(count == 1) {
			newPW = randPW;
		}else {
			newPW = "0";
		}
		
		return newPW;
	}
}
