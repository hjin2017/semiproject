package mybatis;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service("service")
public class BoardServiceImpl implements BoardService {
	@Autowired
	BoardMybatisDAO dao;
	@Override
	public List<BoardDTO> getAllBoard() {
		return dao.getAllBoard();
	}
	
	public int add(BoardDTO board) {
		return dao.add(board);
	}
	
	public void updateViewCount(int seq) {
		dao.updateViewCount(seq);
	}
	
	public BoardDTO getOneBoard(int seq) {
		return dao.getOneBoard(seq);
	}
}