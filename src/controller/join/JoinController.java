package controller.join;

import java.sql.Timestamp;


import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.sist.msk.Action;


import controller.member.JoinDBBean;
import controller.member.JoinDataBean;


public class JoinController extends Action{
		
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
		/*info.setRegdate(new Timestamp(((JoinDataBean) req).getRegdate().getTime()));*/
				
		System.out.println(info); 
		JoinDBBean dbPro = JoinDBBean.getInstance();
		dbPro.insertData(info);
		res.sendRedirect(req.getContextPath()+"/Myview/joinSuccess.jsp");
			
		req.setAttribute("info", info);
		
		return null;
	}	
	
	public String login(HttpServletRequest request,
			 HttpServletResponse response)  throws Throwable { 
			 JoinDBBean dbPro = JoinDBBean.getInstance(); 
			 HttpSession session = request.getSession();
	
				String id = request.getParameter("id");
				String pwd = request.getParameter("pwd");
				String name = request.getParameter("name");
				
				int pwcheck = dbPro.login(id, pwd); 
				
				if (pwcheck==-1) {
					
				}else if (pwcheck==0) {
					
				}else if(id.equals("admin")){
		  			  session.setAttribute("id",id);		   
					  response.sendRedirect("/innerpeace_action/oldview/list?id="+id);
			   } 
			   else
			   {
				  session.setAttribute("id",id);
				  session.setAttribute("name", name);	//name 저장 >> welcome 에 name을 넘겨줌
				  System.out.println(name); 
				  
				  response.sendRedirect("/innerpeace_action/mainhome/home?id="+id);
			   }		
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
