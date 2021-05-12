package mybatis;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;


@Controller
public class BoardController {
	@Autowired
	BoardService service;
	
	@RequestMapping("/boardlist")
	public ModelAndView getAllEmp() {
		ModelAndView mv = new ModelAndView();
		List<BoardDTO> boardlist = service.getAllBoard();
		mv.addObject("boardlist" , boardlist);
		mv.setViewName("/board/list");
		return mv;
	}
	
	@RequestMapping(value="/board/add", method=RequestMethod.GET)
	public String  addform() {
		return "/board/addform";
	}
	
	@RequestMapping(value="/board/add", method=RequestMethod.POST)
	public ModelAndView addresult(BoardDTO dto) {
		ModelAndView mv = new ModelAndView();
		service.add(dto);
		mv.addObject("status", "게시물 저장 완료");
		return mv;
	}
	
	@RequestMapping(value="/board/detail")
	public ModelAndView updateViewCount(@RequestParam("seq") int seq) {
		service.updateViewCount(seq);
		BoardDTO dto = service.getOneBoard(seq);
		ModelAndView mv = new ModelAndView();
		mv.addObject("board", dto );
		
		return mv;
	}
	
	

}
