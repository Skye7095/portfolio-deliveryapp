package com.portfolio.delivery.rider.bo;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.portfolio.delivery.common.EncryptUtils;
import com.portfolio.delivery.common.randomPW;
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
	
	// 이름과 번호로 비번 리셋하기
	public String getRiderPWByPhone(
			String name
			, String phone) {
		// 랜덤비번 생성
		String randPW = randomPW.randomNum();
		String encryptNewPW = EncryptUtils.md5(randPW); // 임시비번 암호화

		Rider rider =  riderDAO.selectRiderPWByPhone(name, phone);
		int riderId = 0;
		if(rider != null) {
			riderId = rider.getId();
		}
		
		// 1단계:update 성공여부 판단하기
		int count = riderDAO.updatedRiderPW(riderId, encryptNewPW);
		
		//  2단계: update된 비밀번호 전달하기
		String newPW = "0";
		if(count == 1) {
			newPW = randPW;
		}else {
			newPW = "0";
		}
		
		return newPW;
	}
	
	// 이름과 이메일 비번 리셋하기
	public String getRiderPWByEmail(
			String name
			, String email) {
		// 랜덤비번 생성
		String randPW = randomPW.randomNum();
		String encryptNewPW = EncryptUtils.md5(randPW); // 임시비번 암호화

		Rider rider =  riderDAO.selectRiderPWByEmail(name, email);
		int riderId = 0;
		if(rider != null) {
			riderId = rider.getId();
		}
		
		// 1단계:update 성공여부 판단하기
		int count = riderDAO.updatedRiderPW(riderId, encryptNewPW);
		
		//  2단계: update된 비밀번호 전달하기
		String newPW = "0";
		if(count == 1) {
			newPW = randPW;
		}else {
			newPW = "0";
		}
		
		return newPW;
	}
	
	// id로 rider 모든 정보 불러오기
	public Rider getRiderById(int id) {
		return riderDAO.selectRiderById(id);
	}
	
	// 이메일 중복수량
	public boolean emailDuplicated(String email) {
		int count = riderDAO.selectSameEmail(email);
		
		if(count != 0) { //중복
			return true;
		}else { // 중복하지 않음
			return false;
		}
		
	}
	
	// 이메일 변경
	public int updatedEmail(
			int id
			, String email) {
		return riderDAO.updatedEmail(id, email);
	}
	
	// 번호 중복수량
	public boolean phoneDuplicated(String phone) {
		int count = riderDAO.selectSamePhone(phone);
		
		if(count != 0) { //중복
			return true;
		}else { // 중복하지 않음
			return false;
		}
		
	}
	
	// 번호 변경
	public int updatedPhone(
			int id
			, String phone) {
		return riderDAO.updatedPhone(id, phone);
	}
	
	// 비번 변경
	public int updatedPW(
			int id
			, String newPW) {
		String encryptNewPW = EncryptUtils.md5(newPW); // 임시비번 암호화
		
		return riderDAO.updatedUserNewPW(id, encryptNewPW);	
	}
}
