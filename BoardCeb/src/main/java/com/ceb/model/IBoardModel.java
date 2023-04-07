package com.ceb.model;

import java.util.List;

import com.ceb.dto.BoardDTO;

public interface IBoardModel {
	public void write(BoardDTO vo) throws Exception;
	public List<BoardDTO> selectAll() throws Exception;
	public BoardDTO read(int board_num) throws Exception;
	public void modify(BoardDTO vo) throws Exception;
	public void remove(int board_num) throws Exception;
	public void readPost(int board_num) throws Exception;
}
