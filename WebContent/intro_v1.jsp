<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<html>
<title>Login</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link href="https://fonts.googleapis.com/css?family=Ubuntu" rel="stylesheet">
<link rel="stylesheet" href="https://www.w3schools.com/lib/w3-colors-highway.css">

<style type="text/css">

	@import url(//fonts.googleapis.com/earlyaccess/jejugothic.css);

	#patientfont{
		font-family: 'Jeju Gothic', sans-serif;
		font-size: 20pt;
		
	}
	#docfont{
		font-family: 'Jeju Gothic', sans-serif;
		font-size: 20pt;
		
	}
	.signup{
		font-family: 'Jeju Gothic', sans-serif;
		font-size: 15pt;
		font-style: italic;
	}
	body {
		background-size: cover;
		background-color: white;
 		padding-top: 5en;
 		display: flex;
 		justify-content: center;
	}
	label{
		font-family: 'Jeju Gothic', sans-serif;	
	}
	
	/* welcome message typewriter effect */
	.typewriter h1{
		color: white;
		font-family: 'Ubuntu', sans-serif;
		font-size: 8rem;
		font-weight: bold;
		overflow: hidden;
		border-right: .13em solid orange;
		white-space: nowrap;
		margin: 140px auto;
		animation: typing 3.5s steps(30, end), blink-caret .5s step-end infinite;
		width: 100%;
	}
	@keyframes typing{
		from {width:0}
		to {width: 100%}
	}
	@keyframes blink-caret{
		from,to{border-color: transparent}
		50%{border-color: orange}
	}
	
</style>
<body>
	<!--	welcome message typewriter effect   -->
	<div class="typewriter ">
		<h1><div>
		<span style="color:#ffcf3f;">i</span>
		<span style="color:#ffbc49;">n</span>
		<span style="color:#ffa953;">n</span>
		<span style="color:#ff965c;">e</span>
		<span style="color:#ff8366;">r</span>
		<span style="color:#ff7070;">p</span>
		<span style="color:#ff7d7d;">e</span>
		<span style="color:#ff8a8a;">a</span>
		<span style="color:#ff9797;">c</span>
		<span style="color:#ffa4a4;">e</span></div></h1>
	</div>
	
	
	

<div class="w3-container w3-center">
 
   <!--Patient Login-->
   <div class="patient">
     <button onclick="document.getElementById('id01').style.display='block'" 
     			id="patientfont" 
     			class="w3-button w3-white w3-round-large w3-border w3-padding-large w3-xxlarge w3-display-left" style="margin-left: 35%; margin-top: 10%;">
     	<font color="#808B96">�Ϲ���</font>
     </button>
	</div>
   
   <!-- login modal -->
   <!-- <div id="id01" class="w3-modal">
    <div class="w3-modal-content w3-card-4 w3-animate-zoom" style="max-width:400px">

      <div class="w3-center"><br>
        <span onclick="/Myview/loginForm" 
        	 class="w3-button w3-xlarge w3-hover-red w3-display-topright" title="Close Modal">&times;</span>
      </div>

      <form class="w3-container" action="/innerpeace/membershipUser/loginPro.jsp" method="post">
        <div class="w3-section">
          <label><b>���̵�</b></label>
          <input class="w3-input w3-border w3-margin-bottom" type="text" placeholder="���̵� �Է��ϼ���" name="id" required>
          <label><b>��й�ȣ</b></label>
          <input class="w3-input w3-border" type="password" placeholder="��й�ȣ�� �Է��ϼ���" name="pwd" required>
          <input class="w3-check w3-margin-top" type="checkbox" checked="checked"> ���̵� ����ϱ�
		</div>
      <div class="w3-container w3-border-top w3-padding-16 w3-light-grey">
          <button class="w3-button w3-block w3-grey w3-section w3-padding" type="submit">�α���</button>
      </form>

        	  	<button onclick="document.getElementById('id02').style.display='block'" class="w3-button w3-block w3-grey w3-section w3-padding" type="submit">ȸ������</button> 
			   
			   	<div id="id02" class="w3-modal">
			    <div class="w3-modal-content w3-card-4">
			      <header class="w3-container w3-teal"> 
			        <span onclick="document.getElementById('id02').style.display='none'" 
			        class="w3-button w3-display-topright">&times;</span>
			        <h2>innerpeace ȸ�������ϱ�</h2>
			      </header>
			       <div class="w3-container w3-display-center" style="width: 60%; margin-left:20%; margin-right:20%;">
					
					<form action="/innerpeace/Intropage/joinSuccess.jsp" method="post" >
			
					�⺻����
					<label class="w3-text-teal">
					�̸� :<input class="w3-input w3-border w3-light-grey" type="text" name="name" size="20">
					</label><br>
					<label class="w3-text-teal">
					���̵� :<input class="w3-input w3-border w3-light-grey" type="text" name="id" size="20"></label><br>
					<label class="w3-text-teal">
					��й�ȣ :<input class="w3-input w3-border  w3-light-grey"  type="password" name="pwd" size="20"></label><br>
					<label class="w3-text-teal">
					��й�ȣ Ȯ�� :<input class="w3-input w3-border  w3-light-grey" type="password" name="pwdconfirm" size="20"></label><br>
					<label class="w3-text-teal">
					���� : <input type="radio" name="gender" value="male">��
						 <input type="radio" name="gender" value="female">��</label><br><br>
					<label class="w3-text-teal">
					������� :<input class="w3-input w3-border w3-light-grey" type="date" name="birthdate" size="20"></label><br>
					
						 		
					����ó
					<label class="w3-text-teal">
					��ȭ��ȣ :<input class="w3-input w3-border w3-light-grey" type="tel" name="tel" size="20">
					</label><br>
					<label class="w3-text-teal">
					�̸���:<input class="w3-input w3-border w3-light-grey" type="email" name="email" size="20">
					</label><br>
					
					���������̷�
					<label class="w3-text-teal">
					���ſ� ��� Ȥ�� ���Ḧ ���� ���� �ֽ��ϱ�?<br>
					<input type="radio" name="con_past" value="1">�ִ�
					<input type="radio" name="con_past" value="0">����
					</label><br><br>
			        <label class="w3-text-teal">
					�ִٸ� ���� �ֱ� ���/���� ������ ��¥�� �˷��ּ���<br>
					<input class="w3-input w3-border w3-light-grey"  type="date" name="con_date" size="20">
					</label><br>
					<label class="w3-text-teal">
					�������� ������ ������ �˷��ּ���<br>
					<input class="w3-input w3-border w3-light-grey"  type="text" name="con_cat" size="20">
					</label><br>					
					<label class="w3-text-teal">
					�з� : <input type="radio" name="position" value="patient">�Ϲ���
						 <input type="radio" name="position" value="doc">�Ƿ���</label><br><br>
					<label>
					
					<input type="submit" value="�ۼ��Ϸ�">&nbsp;&nbsp;
					<input type="reset" value="�ٽ��ۼ�"></label></form>
					
				</form>
			      </div>
			    </div>
			  </div>
        	  	       	  	
        	  </form>
        
        <button onclick="document.getElementById('id01').style.display='none'" type="button" class="w3-button w3-black">���</button>
              
        <span class="w3-right w3-padding w3-hide-small">Forgot <a href="#">password?</a></span>
      </div>

    </div> -->
    
    <form action="/innerpeace_action/Myview/loginForm.jsp" method="post">
    <button class="w3-button w3-block w3-grey w3-section w3-padding" type="submit">�α���</button></form>
  </div>
  
  <!--Team med Login-->
  <div class="doctor">
	<button onclick="document.getElementById('id01').style.display='block'" 
			id="docfont" 
			class="w3-button w3-white w3-round-large w3-border w3-padding-large w3-xxlarge w3-display-right" style="margin-right: 35%; margin-top: 10%;">
     	<font color="#808B96">�Ƿ���</font>
     </button>
		 <div id="id01" class="w3-modal">
    <div class="w3-modal-content w3-card-4 w3-animate-zoom" style="max-width:400px">
      <div class="w3-center"><br>
        <span onclick="document.getElementById('id01').style.display='none'" class="w3-btn w3-xlarge w3-hover-red w3-display-topright" title="Close Modal">&times;</span>
    </div>     
  </div>
  </div>
</div>
 
 
</body>
</html>