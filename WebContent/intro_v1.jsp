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
     	<font color="#808B96">일반인</font>
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
          <label><b>아이디</b></label>
          <input class="w3-input w3-border w3-margin-bottom" type="text" placeholder="아이디를 입력하세요" name="id" required>
          <label><b>비밀번호</b></label>
          <input class="w3-input w3-border" type="password" placeholder="비밀번호를 입력하세요" name="pwd" required>
          <input class="w3-check w3-margin-top" type="checkbox" checked="checked"> 아이디 기억하기
		</div>
      <div class="w3-container w3-border-top w3-padding-16 w3-light-grey">
          <button class="w3-button w3-block w3-grey w3-section w3-padding" type="submit">로그인</button>
      </form>

        	  	<button onclick="document.getElementById('id02').style.display='block'" class="w3-button w3-block w3-grey w3-section w3-padding" type="submit">회원가입</button> 
			   
			   	<div id="id02" class="w3-modal">
			    <div class="w3-modal-content w3-card-4">
			      <header class="w3-container w3-teal"> 
			        <span onclick="document.getElementById('id02').style.display='none'" 
			        class="w3-button w3-display-topright">&times;</span>
			        <h2>innerpeace 회원가입하기</h2>
			      </header>
			       <div class="w3-container w3-display-center" style="width: 60%; margin-left:20%; margin-right:20%;">
					
					<form action="/innerpeace/Intropage/joinSuccess.jsp" method="post" >
			
					기본정보
					<label class="w3-text-teal">
					이름 :<input class="w3-input w3-border w3-light-grey" type="text" name="name" size="20">
					</label><br>
					<label class="w3-text-teal">
					아이디 :<input class="w3-input w3-border w3-light-grey" type="text" name="id" size="20"></label><br>
					<label class="w3-text-teal">
					비밀번호 :<input class="w3-input w3-border  w3-light-grey"  type="password" name="pwd" size="20"></label><br>
					<label class="w3-text-teal">
					비밀번호 확인 :<input class="w3-input w3-border  w3-light-grey" type="password" name="pwdconfirm" size="20"></label><br>
					<label class="w3-text-teal">
					성별 : <input type="radio" name="gender" value="male">남
						 <input type="radio" name="gender" value="female">여</label><br><br>
					<label class="w3-text-teal">
					생년월일 :<input class="w3-input w3-border w3-light-grey" type="date" name="birthdate" size="20"></label><br>
					
						 		
					연락처
					<label class="w3-text-teal">
					전화번호 :<input class="w3-input w3-border w3-light-grey" type="tel" name="tel" size="20">
					</label><br>
					<label class="w3-text-teal">
					이메일:<input class="w3-input w3-border w3-light-grey" type="email" name="email" size="20">
					</label><br>
					
					과거진료이력
					<label class="w3-text-teal">
					과거에 상담 혹은 진료를 받은 적이 있습니까?<br>
					<input type="radio" name="con_past" value="1">있다
					<input type="radio" name="con_past" value="0">없다
					</label><br><br>
			        <label class="w3-text-teal">
					있다면 가장 최근 상담/진료 받으신 날짜를 알려주세요<br>
					<input class="w3-input w3-border w3-light-grey"  type="date" name="con_date" size="20">
					</label><br>
					<label class="w3-text-teal">
					상담받으신 내용을 간단히 알려주세요<br>
					<input class="w3-input w3-border w3-light-grey"  type="text" name="con_cat" size="20">
					</label><br>					
					<label class="w3-text-teal">
					분류 : <input type="radio" name="position" value="patient">일반인
						 <input type="radio" name="position" value="doc">의료진</label><br><br>
					<label>
					
					<input type="submit" value="작성완료">&nbsp;&nbsp;
					<input type="reset" value="다시작성"></label></form>
					
				</form>
			      </div>
			    </div>
			  </div>
        	  	       	  	
        	  </form>
        
        <button onclick="document.getElementById('id01').style.display='none'" type="button" class="w3-button w3-black">취소</button>
              
        <span class="w3-right w3-padding w3-hide-small">Forgot <a href="#">password?</a></span>
      </div>

    </div> -->
    
    <form action="/innerpeace_action/Myview/loginForm.jsp" method="post">
    <button class="w3-button w3-block w3-grey w3-section w3-padding" type="submit">로그인</button></form>
  </div>
  
  <!--Team med Login-->
  <div class="doctor">
	<button onclick="document.getElementById('id01').style.display='block'" 
			id="docfont" 
			class="w3-button w3-white w3-round-large w3-border w3-padding-large w3-xxlarge w3-display-right" style="margin-right: 35%; margin-top: 10%;">
     	<font color="#808B96">의료진</font>
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