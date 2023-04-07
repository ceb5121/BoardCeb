package com.ceb.model;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ceb.dao.BoardDAO;
import com.ceb.dto.BoardDTO;

@Service
public class BoardModelImpl implements IBoardModel {
	@Autowired
	private SqlSession sqlsession;
	
	@Override
	public void write(BoardDTO vo) throws Exception {
		BoardDAO dao = sqlsession.getMapper(BoardDAO.class);
		dao.create(vo);
	}
	
	@Override
	public List<BoardDTO> selectAll() throws Exception {
		BoardDAO dao = sqlsession.getMapper(BoardDAO.class);
		return dao.selectAll();
	}
	
	@Override
	public BoardDTO read(int board_num) throws Exception {
		BoardDAO dao = sqlsession.getMapper(BoardDAO.class);
		return dao.read(board_num);
	}

	@Override
	public void modify(BoardDTO vo) throws Exception {
		BoardDAO dao = sqlsession.getMapper(BoardDAO.class);
		dao.update(vo);
	}

	@Override
	public void remove(int board_num) throws Exception {
		BoardDAO dao = sqlsession.getMapper(BoardDAO.class);
		dao.delete(board_num);
	}

}
