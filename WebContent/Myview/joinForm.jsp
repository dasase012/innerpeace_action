<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css"></head>
<style>
	@import url(//fonts.googleapis.com/earlyaccess/jejugothic.css);
	body{
		font-family: 'Jeju Gothic', sans-serif;
		font-size: 15pt;
	}	
	h2{
		font-family: 'Jeju Gothic', sans-serif;
		font-size: 20pt;
	}
</style>
<html>

<head>

<meta charset="UTF-8">

<title>�̳��ǽ� ȸ������</title>

</head>

<body>
		
 <div class="w3-container w3-card-4 w3-display-center w3-teal" style="width: 40%; height: 60%; margin-top: 10%;margin-left:30%; margin-right:30%;">
	
		<hr width = 50% size=2 >

		<h2 align="center">innerpeace ȸ�� ����</h2>
	
		<hr width = 50% size=2 >
	</div>
	 <div class="w3-container w3-card-4 w3-display-center" style="width: 40%; height: 60%; margin-top: 1%; margin-bottom: 15%; margin-left:30%; margin-right:30%;">
	
	
	
	<form class="w3-container " action="joinSuccess" method="post">
	<input type="hidden" name="id" value="${info.id }">
	<input type="hidden" name="id" value="${info.name }">
		<!-- �⺻���� -->
			<p>
			<label class="w3-text-teal">
			�̸� :<input class="w3-input w3-border w3-light-grey" type="text" name="name" size="20">
			</label><br>
			<label class="w3-text-teal">
			���̵� :<input class="w3-input w3-border w3-light-grey" type="text" name="id" size="20"></label><br>
			<label class="w3-text-teal">
			��й�ȣ :<input class="w3-input w3-border  w3-light-grey"  type="password" name="pwd" size="20"></label><br>
			<label class="w3-text-teal">
			��й�ȣ Ȯ�� :<input class="w3-input w3-border  w3-light-grey" type="password" name="confirmPwd" size="20"></label><br>
			<label class="w3-text-teal">
			���� : <input type="radio" name="gender" value="male">��
				 <input type="radio" name="gender" value="female">��</label><br><br>
			<label class="w3-text-teal">
			������� :<input class="w3-input w3-border w3-light-grey" type="date" name="birthdate" size="20"></label>
			</p>
				
		<!-- ����ó -->
			<p>
			<label class="w3-text-teal">
			��ȭ��ȣ :<input class="w3-input w3-border w3-light-grey" type="tel" name="tel" size="20">
			</label><br>
			<label class="w3-text-teal">
			�̸���:<input class="w3-input w3-border w3-light-grey" type="email" name="email" size="20">
			</label>
			</p>
			
		<!-- ���������̷� -->
			<p>
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
				 <input type="radio" name="position" value="doc">�Ƿ���</label>
			</p>
			
			<p>
			<label>
			<input type="submit" value="�ۼ��Ϸ�"><!-- &nbsp;&nbsp; -->
			<input type="reset" value="�ٽ��ۼ�">
			<input type="button" value="���" onclick="window.location.href='/innerpeace_action/intro_v1.jsp'">
			</label></p>		
		</form>
	</div>

</body>

</html>



