package controller.join;

import java.sql.Timestamp;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.sist.msk.Action;

import auth.service.LoginFailException;
import auth.service.LoginService;
import auth.service.User;
import controller.member.JoinDBBean;
import controller.member.JoinDataBean;
import member.service.DuplicateIdException;
import member.service.JoinRequest;
import member.service.JoinService;

public class JoinController extends Action{
	

//	private JoinService joinService = new JoinService();
	
	public String joinForm(HttpServletRequest request,
			 HttpServletResponse response)  throws Throwable { 
			 return  "/Myview/joinForm.jsp"; 
			} 
	public String joinSuccess(HttpServletRequest req,
			 HttpServletResponse res)  throws Throwable { 

		JoinDataBean info = new JoinDataBean();
		
	
		info.setId(req.getParameter("id"));
		info.setName(req.getParameter("name"));
		info.setPwd(req.getParameter("pwd"));
		/*info.setConfirmPwd(req.getParameter("confirmPwd"));*/
		info.setGender(req.getParameter("gender"));
		info.setBirthdate(req.getParameter("birthdate"));
		info.setTel(req.getParameter("tel"));
		info.setEmail(req.getParameter("email"));
		info.setCon_past(req.getParameter("con_past"));
		info.setCon_date(req.getParameter("con_date"));
		info.setCon_cat(req.getParameter("con_cat"));
		info.setPosition(req.getParameter("position"));
		//info.setRegdate(new Timestamp(((JoinDataBean) req).getRegdate().getTime()));		
				
		System.out.println(info); 

		JoinDBBean dbPro = JoinDBBean.getInstance();
		dbPro.insertData(info);
		res.sendRedirect(req.getContextPath()+"/Myview/joinSuccess.jsp");
	
		return null;
	}	
	public String loginForm(HttpServletRequest request,
			 HttpServletResponse response)  throws Throwable { 
			 return  "/Myview/loginForm.jsp"; 
			}
	
	
	public String logout(HttpServletRequest request,
			 HttpServletResponse response)  throws Throwable { 
		HttpSession session = request.getSession();
		session.invalidate();
		response.sendRedirect("/innerpeace_action/intro_v1.jsp");
		return  null; 
	} 
}
