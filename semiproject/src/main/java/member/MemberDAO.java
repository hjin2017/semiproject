//
//  package member;
//  
//  import java.util.HashMap; import java.util.List;
//  
//  import org.apache.ibatis.session.SqlSession; import
//  org.springframework.beans.factory.annotation.Autowired; import
//  org.springframework.stereotype.Repository;
//  
//  import mybatis.BoardDTO;
//  
//  @Repository("mDAO") 
//  public class MemberDAO {
//  
//  @Autowired 
//  SqlSession session;
//  
//  public int Login(MemberDTO dto) {
//	  return session.selectOne("getOneMember", dto);
//  }
//  
//  
////  public MemberDTO getOneMember(String str, String col) { 
////	  HashMap<String , Object> map = new HashMap<String, Object>();
////	  if(col.equals("id")) {
////		  map.put("id", str); 
////	  }
////	  else if(col.equals("name")) {
////		  map.put("name", str); 
////	  }
////	  return session.selectOne("getOneMember", map); 
////  }
////  
////  public int newMember(MemberDTO m) { 
////	  return session.insert("newMember", m); 
////}
//  
//  
//  
//  }
// 