package com.ceb.ex;

import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.ceb.dto.BoardDTO;
import com.ceb.model.IBoardModel;

/**
 * Handles requests for the application home page.
 */
@Controller
@RequestMapping("/board/*")
public class BoardController {
	
	@Autowired
	private IBoardModel bm;

	
	@RequestMapping(value = "/write", method = RequestMethod.GET)
	public String write() throws Exception {
		
		return "/board/write";
	}
	@RequestMapping(value = "/write", method = RequestMethod.POST)
	public String writeBoard(BoardDTO dto, Model model,RedirectAttributes ra) throws Exception {
		bm.write(dto);
		return "redirect:/board/list";
	}
	@RequestMapping(value="/modify", method = RequestMethod.GET)
	public String modify(@RequestParam("board_num")int board_num, Model model) throws Exception {
		model.addAttribute("board", bm.read(board_num));
		return "/board/modify";
	}
	@RequestMapping(value="/modify", method = RequestMethod.POST)
	public String modifyBoard(BoardDTO dto, Model model) throws Exception {
		bm.modify(dto);
		model.addAttribute("board", bm.read(dto.getBoard_num()));
		return "/board/readBoard";
	}
	@RequestMapping(value = "/remove", method = RequestMethod.GET)
	public String remove(@RequestParam("board_num")int board_num, RedirectAttributes ra) throws Exception {
		bm.remove(board_num);
		return "redirect:/board/list";
	}
	@RequestMapping(value = "/list", method = RequestMethod.GET)
	public String list(Model model) throws Exception {
		List<BoardDTO> bDto = bm.selectAll();
		model.addAttribute("list",bDto);
		
		return "/board/main";
	}
	@RequestMapping(value = "/read", method = RequestMethod.GET)
	public String read(@RequestParam("board_num")Integer board_num, Model model) throws Exception {
		bm.readPost(board_num);
		BoardDTO dto = bm.read(board_num);
		model.addAttribute("board", dto);
		return "/board/readBoard";
	}
	
}
