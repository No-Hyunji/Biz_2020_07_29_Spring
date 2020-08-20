package com.biz.shop.service.impl;

import java.util.List;

import org.springframework.stereotype.Service;

import com.biz.shop.model.ProductVO;
import com.biz.shop.service.ProductService;


@Service(value="/proServiceV1")
public class ProductServiceImplV1 implements ProductService{

	@Override
	public List<ProductVO> selectAll() {
		
		return null;
	}

	@Override
	public ProductVO findById(String id) {
		
		return null;
	}

	@Override
	public int insert(ProductVO VO) {
		
		return 0;
	}

	@Override
	public int update(ProductVO VO) {
		
		return 0;
	}

	@Override
	public int delete(String id) {
		
		return 0;
	}

	@Override
	public List<ProductVO> findByTitle(String title) {
		
		return null;
	}

}
