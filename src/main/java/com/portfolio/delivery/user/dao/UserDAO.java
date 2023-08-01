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
}
