package com.biz.shop.persistence;

import java.util.List;

import org.apache.ibatis.annotations.Select;

import com.biz.shop.model.ProductVO;

public interface ProductDao extends GenericDao<ProductVO, String> {
	public List<ProductVO> findByTitle(String title);
	/*
	 * Mybatis 3.4.x이상에서 사용하는 SQL Mapper방식
	 * mapper.xml파일을 작성하지 않고 직접 
	 */
	@Select("SELECT MAX(p_code) FROM tbl_product")
	public String maxPCode();
	
	

}
