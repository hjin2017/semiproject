package mybatis;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository("dao")
public class BoardMybatisDAO {
	
	@Autowired
	SqlSession session; //mybatis.jar
	
	public List<BoardDTO> getAllBoard(){
		List<BoardDTO> list = session.selectList("board.all");
		return list;
	}
	
	public int add(BoardDTO board) {
		int result = session.insert("add", board);
		return result;
	}
	
	public void updateViewCount(int seq) {
		session.update("plusViewCount", seq);
	}
	
	public BoardDTO getOneBoard(int seq) {
		BoardDTO dto = session.selectOne("selectOne", seq);
		return dto;
	}
}