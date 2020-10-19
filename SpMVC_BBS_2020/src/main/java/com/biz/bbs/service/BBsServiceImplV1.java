package com.biz.bbs.service;

import java.util.List;

import org.springframework.stereotype.Service;

import com.biz.bbs.mapper.BBsDao;

import lombok.RequiredArgsConstructor;

@RequiredArgsConstructor
@Service("bbsServiceV1")
public class BBsServiceImplV1 implements BBsService{
	
	private final BBsDao bbsDao;
	@Override
	public List<BBcVO> selectAll() {
		return bbsDao.selectAll();
	}

}
