<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<html>
<title>Login</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link href="https://fonts.googleapis.com/css?family=Ubuntu" rel="stylesheet">
<link rel="stylesheet" href="https://www.w3schools.com/lib/w3-colors-highway.css">

<style type="text/css">

	body {
		background-size: cover;
		background-color: white;
 		padding-top: 5en;
 		display: flex;
 		justify-content: center;
	}
	#enter{
		font-family: 'Ubuntu', sans-serif;
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
		<div class="typewriter" style="margin-top: 10%;">
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
		
	
	
	<!-- Enter : loginpage  -->
		<div class="w3-container w3-center" id="enter">
		    <form action="/innerpeace_action/Myview/loginForm.jsp" method="post">
		    <button class="w3-button w3-white w3-round-large w3-border w3-padding-large w3-xxlarge w3-display-middle" 
		    		style="margin-top: 10%;"type="submit">Enter</button></form>
		</div>
  
 
 
</body>
</html>