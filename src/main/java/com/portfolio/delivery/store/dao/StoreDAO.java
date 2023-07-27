package com.portfolio.delivery.store.dao;

import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

@Repository
public interface StoreDAO {

	// 회원가입
	public int insertStore(
			@Param("businessNumber") String businessNumber
			, @Param("password") String password
			, @Param("name") String name
			, @Param("phone") String phone);
	
	// businessNumber 중복확인
	public int selectSameStore(@Param("businessNumber") String businessNumber);
}
