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
	
	// 비번 찾기
	public Store selectStorePW(
			@Param("businessNumber") String businessNumber
			, @Param("ownerName") String ownerName
			, @Param("ownerPhone") String ownerPhone);
	
	// 리셋 비번 변경
	public int updatedStorePW(
			@Param("storeId") int storeId
			, @Param("newPW") String newPW);
	
	// id로 store 모든 정보 불러오기
	public Store selectStoreById(@Param("storeId") int storeId);
	
	// 가게 정보 입력
	public int insertStoreInfo(
			@Param("storeId") int storeId
			, @Param("phone") String phone
			, @Param("category") String category
			, @Param("storeImgPath") String storeImgPath
			, @Param("name") String name
			, @Param("introduction") String introduction
			, @Param("minOrderPrice") int minOrderPrice
			, @Param("deliveryBasicFee") int deliveryBasicFee
			, @Param("deliveryArea") String deliveryArea
			, @Param("operationHours") String operationHours
			, @Param("closedDays") String closedDays);
}
