package com.portfolio.delivery.user.dao;

import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import com.portfolio.delivery.user.model.User;

@Repository
public interface UserDAO {

	// 회원가입
	public int insertUser(
			@Param("loginId") String loginId
			, @Param("password") String password
			, @Param("name") String name
			, @Param("phone") String phone
			, @Param("email") String email
			, @Param("nickName") String nickName
			, @Param("grade") String grade);
	
	// 같은 사람이 여러 id를 만들었는지 확인 > 같은 name & phone || 같은 name & email
	public int selectSameUser(
			@Param("name") String name
			, @Param("phone") String phone
			, @Param("email") String email);
	
	// id 중복확인
	public int selectSameId(@Param("loginId") String loginId);
	
	// 로그인
	public User selectUser(
			@Param("loginId") String loginId
			, @Param("password") String password);
	
	// 이름과 번호로 id 찾기
	public String selectUserIDByPhone(
			@Param("name") String name
			, @Param("phone") String phone);
	
	// 이름과 번호로 id 찾기
	public String selectUserIDByEmail(
			@Param("name") String name
			, @Param("email") String email);
	
	// user 비밀번호 찾기 - phone
	public User selectUserPWByPhone(
			@Param("name") String name
			, @Param("phone") String phone);
	
	// user 비밀번호 찾기 - phone
	public User selectUserPWByEmail(
			@Param("name") String name
			, @Param("email") String email);
	
	// id로 user 모든 정보 불러오기
	public User selectUserById(@Param("userId") int userId);
	
	// user 비밀번호 찾기 후 랜덤 비번 생성한 뒤 기존 비번 update
	public int updatedUserPW(
			@Param("userId") int userId
			, @Param("newPW") String newPW);
	
	// 닉네임 변경
	public int updatedNickName(
			@Param("userId") int userId
			, @Param("nickName") String nickName);
	
	// 이메일 변경
	public int updatedEmail(
			@Param("userId") int userId
			, @Param("email") String email);
	
	// 이메일 중복 여부 -- 수량 파악
	public int selectSameEmail(@Param("email") String email);
	
	// 번호 변경
	public int updatedPhone(
			@Param("userId") int userId
			, @Param("phone") String phone);
	
	// 번호 중복 여부 -- 수량 파악
	public int selectSamePhone(@Param("phone") String phone);

}
