package com.portfolio.delivery.rider.dao;

import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import com.portfolio.delivery.rider.model.Rider;

@Repository
public interface RiderDAO {

	// 회원가입
	public int insertRider(
			@Param("loginId") String loginId
			, @Param("password") String password
			, @Param("name") String name
			, @Param("phone") String phone
			, @Param("email") String email);
	
	// 같은 사람이 여러 id를 만들었는지 확인 > 같은 name & phone || 같은 name & email
	public int selectSameRider(
			@Param("name") String name
			, @Param("phone") String phone
			, @Param("email") String email);
	
	// id 중복확인
	public int selectSameId(@Param("loginId") String loginId);
	
	// 로그인
	public Rider selectRider(
			@Param("loginId") String loginId
			, @Param("password") String password);
}
