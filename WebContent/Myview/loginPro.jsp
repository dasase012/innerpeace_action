<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<c:if test="${pwcheck==-1 }">
		<script>
	      alert("ID�� �������� �ʽ��ϴ�!");
	      history.back();
	    </script>
	</c:if>
	<c:if test="${pwcheck==0 }">
	     <script>
	      alert("��й�ȣ�� Ʋ���ϴ�!");
	      history.back();
	     </script>
	 </c:if>
	 <%--
	    }else if(id.equals("admin")){
  			  session.setAttribute("id",id);
			   
			  response.sendRedirect("/innerpeace/membershipAdmin/list.jsp?id="+id);
	   } 
	   else
	   {
		  session.setAttribute("id",id);
		  session.setAttribute("name", name);	//name ���� >> welcome �� name�� �Ѱ���
		  System.out.println(name); 
		  
		  response.sendRedirect("/innerpeace/mainhome/home.jsp?id="+id);
	   }		
	%> --%>
</body>
</html>