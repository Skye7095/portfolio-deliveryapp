package com.portfolio.delivery.store.dao;

import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import com.portfolio.delivery.store.model.Store;

@Repository
public interface StoreDAO {

	// 회원가입
	public int insertStore(
			@Param("businessNumber") String businessNumber
			, @Param("password") String password
			, @Param("ownerName") String ownerName
			, @Param("ownerPhone") String ownerPhone);
	
	// businessNumber 중복확인
	public int selectSameStore(@Param("businessNumber") String businessNumber);
	
	// 로그인
	public Store selectStore(
			@Param("businessNumber") String businessNumber
			, @Param("password") String password);
}
