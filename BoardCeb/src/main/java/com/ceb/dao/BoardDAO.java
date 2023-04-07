package com.ceb.dao;

import java.util.List;

import com.ceb.dto.BoardDTO;

public interface BoardDAO {
	public void create(BoardDTO vo) throws Exception;
	public List<BoardDTO> selectAll() throws Exception;
	public BoardDTO read(int board_num) throws Exception;
	public void update(BoardDTO vo) throws Exception;
	public void delete(int board_num) throws Exception;
	public void viewCnt(int board_num) throws Exception;
}
