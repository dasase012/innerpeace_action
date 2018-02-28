<%@page import="java.text.SimpleDateFormat"%>
<%@page import="login.JoinDataBean"%>
<%@page import="login.JoinDBBean"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<html>
<head>
<meta charset="euc-kr" />
<link href="/innerpeace/mainhome/fullcalendar-3.8.2/fullcalendar.min.css" rel="stylesheet" />
<link href="/innerpeace/mainhome/fullcalendar-3.8.2/fullcalendar.print.min.css" rel="stylesheet" media="print" />
<link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<script src="/innerpeace/mainhome/fullcalendar-3.8.2/lib/moment.min.js"></script>
<script src="/innerpeace/mainhome/fullcalendar-3.8.2/lib/jquery.min.js"></script>
<script src="/innerpeace/mainhome/fullcalendar-3.8.2/fullcalendar.min.js"></script>
<script>

  $(document).ready(function() {

    $('#calendar').fullCalendar({
      header: {
        left: 'prev,next',
        center: 'title',
        right: 'month'
      },
      defaultDate: '2018-02-12',
      navLinks: true, // can click day/week names to navigate views
      selectable: true,
      selectHelper: true,
      select: function(start, end) {
          var title = prompt('Event Title:');
          var eventData;
          if (title) {
            eventData = {
              title: title,
              start: start,
              end: end
            };
            $('#calendar').fullCalendar('renderEvent', eventData, true); // stick? = true
          }
          $('#calendar').fullCalendar('unselect');
        },          
      editable: true,
      eventLimit: true, // allow "more" link when too many events
      events: [
        {
          title: 'All Day Event',
          start: '2018-02-01'
        },
        {
          id: 999,
          title: 'Repeating Event',
          start: '2018-02-09T16:00:00'
        },
        {
          title: 'Conference',
          start: '2018-02-11',
          end: '2018-02-13'
        },
        {
          title: 'Meeting',
          start: '2018-02-12T10:30:00',
          end: '2018-02-12T12:30:00'
        },
        {
          title: 'Lunch',
          start: '2018-02-12T12:00:00'
        },
        {
          title: 'Meeting',
          start: '2018-02-12T14:30:00'
        },
        {
          title: 'Click for Google',
          url: 'http://google.com/',
          start: '2018-02-28'
        }
      ]
    });

  });
  $(document).ready(function() {

	    $('#calendar-list').fullCalendar({
	      header: {
	        left: 'today',
	        right: 'listDay,listWeek'
	      },
	      views: {
	          listDay: { buttonText: 'list day' },
	          listWeek: { buttonText: 'list week' }
	        },

	        defaultView: 'listDay',
	        defaultDate: '2018-02-12',
	        navLinks: true, // can click day/week names to navigate views
	        editable: true,
	        eventLimit: true
	    });
  });

</script>
<style>
  i{
  	margin-left: 80%;
  }
 
  body {
    margin: 40px 10px;
    padding: 0;
    font-family: "Lucida Grande",Helvetica,Arial,Verdana,sans-serif;
    font-size: 14px;
  }

  #calendar {
    max-width: 45%;
    margin: 0 auto;
    margin-top: 2%;
    margin-right: 40%;
    margin-bottom: 20%;
    
  }
	#calendar-list{
	max-width: 20%;
    margin: 0 auto;

    margin-right: 18%;

	}

  #navigation{
  	width: 60%;
  	margin-left: 20%;
  	margin-right: 20%;
  }	
</style>
</head>
<%
	String id = request.getParameter("id");
	
	String pageNum = request.getParameter("pageNum");
	if(pageNum == null || pageNum ==""){
		pageNum="1";} 
	SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd hh:mm");

	try{
		JoinDBBean dbPro = JoinDBBean.getInstance();
		JoinDataBean member = dbPro.getMember(id, "content");


%>
<body>
	
	<!-- home logo top right -->
		<a href="/innerpeace/mainhome/home.jsp">
		<i id="home" class="material-icons" style="font-size:36px">home</i>
		</a>
	<!-- Logout logo top right -->
		<a href="/innerpeace/membershipUser/logout.jsp">
		<i id="logout" class="material-icons" style="font-size:36px">power_settings_new</i>
		</a>
		
	<!-- Mypage logo top right -->
		<a href="/innerpeace/membershipUser/updateLogin.jsp">
		<i id="mypage" class="material-icons" style="font-size:36px">portrait</i>
		</a>
	<h1 class="w3-center">WELCOME
	</h1>
	
	
	<!-- header navigation -->
	<div class="w3-bar w3-border w3-light-grey" id="navigation">
	  <a href="/innerpeace/doc_find/map.jsp" class="w3-bar-item w3-button w3-mobile w3-light-grey" style="width:25%">의료진/병원 찾기</a>
	  <a href="/innerpeace/reservation/reservation.jsp" class="w3-bar-item w3-button w3-mobile" style="width:25%">예약관리</a>
	  <a href="#" class="w3-bar-item w3-button w3-mobile" style="width:25%">원격진료</a>
	  <a href="#" class="w3-bar-item w3-button w3-mobile" style="width:25%">진료기록</a>
	</div>
	
	<!-- calendar left-body -->
	<div id='calendar'></div>
	
	<!-- calendar right-body -->
	<div id="calendar-list" class="w3-display-right"></div>	
		<!-- db에 연동해서 왼쪽 바디 캘린더에 들어간 예약 내용을 오른쪽 리스트에 뿌려주면 됨 -->
	
	<!-- footer contact admin -->
	<h6 class="w3-bottom" align="center">contact: admin@innerpeace.com</h6>
	<%
		}catch(Exception e){}%>
</body>
</html>