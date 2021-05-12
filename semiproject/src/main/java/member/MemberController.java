//  package member;
//  
//  import javax.servlet.http.HttpSession;
//  
//  import org.springframework.beans.factory.annotation.Autowired; import
//  org.springframework.stereotype.Controller; import
//  org.springframework.web.bind.annotation.RequestMapping; import
//  org.springframework.web.bind.annotation.RequestMethod;
//import org.springframework.web.bind.annotation.RequestParam;
//import
//  org.springframework.web.bind.annotation.ResponseBody; import
//  org.springframework.web.servlet.ModelAndView;
//  
//  import mybatis.BoardService;
//  
//  @Controller 
//  public class MemberController {
//  
//  @Autowired 
//  MemberService service;
//  
//  @RequestMapping(value="/login", method=RequestMethod.GET)
//  public String loginPage() {
//	  return "/loginpage";
//  }
//  
//  @RequestMapping(value="/login", method=RequestMethod.POST)
//  public String login(@RequestParam("id") String id, @RequestParam("pw") int pw) {
//	  String path = "";
//	  MemberDTO dto = new MemberDTO();
//	  
//	  dto.setId(id);
//	  dto.setPw(pw);
//	  
//	  int result = service.login(dto);
//	  if(result==1) {
//		  path="/boardlist";
//	  }
//	  else {
//		  path= "/loginPage";
//	  }
//	  return path;
//  }
//  
//  
// }
// 