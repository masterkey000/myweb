<%@ page contentType="text/html; charset=UTF-8" %>

<!DOCTYPE html>
<html lang="ko">
<head>
  <!-- Theme Made By www.w3schools.com - No Copyright -->
  <title>index2.jsp</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <link href="https://fonts.googleapis.com/css?family=Montserrat" rel="stylesheet">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
  
  <!-- 사용자 정의 파일(CSS,JS) import -->
  <link rel="stylesheet" href="css/mystyle.css">
  <script src="js/myscript.js"></script>
  
  <style>
	.time{font-weight:bold;}
  </style>
  <script > 
	function showtime(){
		var today=new Date();
		var str="";
		str += today.getFullYear()+".";
		if(today.getMonth()+1<10){
			str +="0";	//글자갯수를 2자리로 맞추기 위해
		}
		str += (today.getMonth()+1)+".";
		if(today.getDate()+1<10) {
			str +="0";
		}
		str += today.getDate();
		switch (today.getDay())
		{
		case 0: str += " (월) "; break;
		case 1: str += " (화) "; break;
		case 2: str += " (수) "; break;
		case 3: str += " (목) "; break;
		case 4: str += " (금) "; break;
		case 5: str += " (토) "; break;
		case 6: str += " (일) "; break;
		}//switch end
		if(today.getHours()<12){
			str +="AM ";
		} else {
			str +="PM ";
		}//if end
		if(today.getHours()>=13){ //시
			str += (today.getHours()-12)+":";
		} else {
			str += today.getHours()+":";
		}//if end
		if(today.getMinutes()<10) { //분
			str += "0";
		}
		str += today.getMinutes()+":"
		if(today.getSeconds()<10) {	//초
			str += "0";
		}
		str += today.getSeconds();

		document.getElementById('clock').innerHTML=str;
		timer= setTimeout(showtime, 1000);
	}//showtime() end

	var timer;
	function killtime(){
		clearTimeout(timer);
	}//killtime() end
  </script>
</head>
<body  onload='showtime()' onunload='killtime()'>

<!-- 메인 카테고리 시작 -->
<nav class="navbar navbar-default">
  <div class="container">
    <div class="navbar-header">
      <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>                        
      </button>					<!-- /절대경로 -->
      <a class="navbar-brand" href="index.jsp">HOME</a>
    </div>
    <div class="collapse navbar-collapse" id="myNavbar">
      <ul class="nav navbar-nav navbar-right">
        <li><a href="./bbs/bbsList.jsp">계시판</a></li>
        <li><a href="./notice/noticeList.jsp">공지사항</a></li>
        <li><a href="./member/loginForm.jsp">로그인</a></li>
        <li><a href="./pds/pdsList.jsp">포토갤러리</a></li>
        <li><a href="./mail/mailForm.jsp">메일보내기</a></li>
        <li><a href="./bbs2/bbsList.do">계시판(MVC)</a></li>
        <li><a href="./member2/loginform.do">로그인(MVC)</a></li>
      </ul>
    </div>
  </div>
</nav>
<!-- 메인카테고리 끝 -->

<!-- Container 시작 -->
<div class="container-fluid bg-1 text-center">
  <h3 class="margin">Welcome To MyWeb</h3>
  <img src="./images/reed.jpg" class="img-responsive img-circle margin" style="display:inline" alt="reed" width="350" height="350">
</div>

<div class="container-fluid bg-3 text-center">    
  <div class="row">
    <div class="col-sm-12"> 
		<!-- 디지털 시계 -->
		<div id="clock" class="time">
		
		</div>
		<input type='button' value='시계시작' onclick='showtime()'>
		<input type='button' value='시계중지' onclick='killtime()'>
    </div>
  </div>
</div>
<!-- Container 끝 -->

<!-- Footer -->
<footer class="container-fluid bg-4 text-center">
  Copyright &copy; 2020 MyWeb
</footer>

</body>
</html>
