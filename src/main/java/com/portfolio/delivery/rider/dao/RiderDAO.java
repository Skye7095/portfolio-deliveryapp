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
	
	// 이름과 번호로 id 찾기
	public String selectRiderIDByPhone(
			@Param("name") String name
			, @Param("phone") String phone);
	
	// 이름과 번호로 id 찾기
	public String selectRiderIDByEmail(
			@Param("name") String name
			, @Param("email") String email);
	
	// rider 비밀번호 찾기 - phone
	public Rider selectRiderPWByPhone(
		@Param("name") String name
		, @Param("phone") String phone);
		
	// rider 비밀번호 찾기 - phone
	public Rider selectRiderPWByEmail(
			@Param("name") String name
			, @Param("email") String email);
	
	// rider 비밀번호 찾기 후 랜덤 비번 생성한 뒤 기존 비번 update
	public int updatedRiderPW(
			@Param("riderId") int riderId
			, @Param("newPW") String newPW);
	
	// id로 rider 모든 정보 불러오기
	public Rider selectRiderById(@Param("riderId") int riderId);
	
	// 이메일 변경
	public int updatedEmail(
			@Param("riderId") int riderId
			, @Param("email") String email);
	
	// 이메일 중복 여부 -- 수량 파악
	public int selectSameEmail(@Param("email") String email);
	
	// 번호 변경
	public int updatedPhone(
			@Param("riderId") int riderId
			, @Param("phone") String phone);
	
	// 번호 중복 여부 -- 수량 파악
	public int selectSamePhone(@Param("phone") String phone);
	
	// 새 비번 update
	public int updatedUserNewPW(
			@Param("riderId") int riderId
			, @Param("newPW") String newPW);
}
