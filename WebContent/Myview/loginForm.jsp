<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<title>W3.CSS</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<body>


<div class="w3-container w3-half w3-margin-top w3-display-middle" style="width:30%">
  <ul class="w3-ul w3-border  w3-hover-shadow">
  <li class="w3-teal w3-xlarge w3-center w3-padding-32">�α����ϱ�</li>
<form class="w3-container w3-card-4" action="/innerpeace_action/mainhome/home" method="post">

<p>
<input class="w3-input" type="text" style="width:90%" required>
<label>���̵�</label></p>
<p>
<input class="w3-input" type="password" style="width:90%" required>
<label>��й�ȣ</label></p>

<p>
<input id="milk" class="w3-check" type="checkbox" checked="checked">
<label>���̵� ����ϱ�</label></p>

<p class="w3-center">
<button class="w3-button w3-section w3-teal w3-ripple" type="submit"> �α��� </button>
<!-- <a href="/innerpeace_action/mainhome/home.jsp"></a> -->

<button class="w3-button w3-section w3-teal w3-ripple" type="button" 
		onclick="window.location.href='joinForm.jsp'"> ȸ�������ϱ� </button></p>

</form>
</ul>
</div>


</body>
</html> 
