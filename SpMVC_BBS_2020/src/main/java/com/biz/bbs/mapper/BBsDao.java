package com.biz.bbs.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Select;

import com.biz.bbs.model.BBsVO;

public interface BBsDao {
	
	@Select("SELECT * FROM tbl_bbs")
	public List<BBsVO> selectAll();
	
	@Select("SELECT * FROM tbl_bbs WHRER b_seq = #{seq}")
	public BBsVO findBySeq(long seq);
	public int insert(BBsVO bbsVO);
	public int update(BBsVO bbsVO);
	
	@Delete("DELETE FROM tbl_bbs WHERE b_seq = #{seq}")
	public int delete(long seq);

}
