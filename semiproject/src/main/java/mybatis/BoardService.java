package mybatis;

import java.util.List;

public interface BoardService {
	List<BoardDTO> getAllBoard();
	int add(BoardDTO board);
	void updateViewCount(int seq);
	public BoardDTO getOneBoard(int seq);
}
