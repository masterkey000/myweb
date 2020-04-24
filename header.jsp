<%@ page contentType="text/html; charset=UTF-8" %>


<!DOCTYPE html>
<html lang="ko">
<head>
  <!-- Theme Made By www.w3schools.com - No Copyright -->
  <title>index.jsp</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <link href="https://fonts.googleapis.com/css?family=Montserrat" rel="stylesheet">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
  
  
  <!-- 사용자 정의 파일(CSS,JS) import -->
  <link rel="stylesheet" href="../css/mystyle.css">
  <script src="../js/myscript.js"></script>
  
  
  <style>
  @import url('https://fonts.googleapis.com/css2?family=Nanum+Gothic&display=swap');
  @import url('https://fonts.googleapis.com/css2?family=Black+Han+Sans&display=swap');
  @import url(//fonts.googleapis.com/earlyaccess/kopubbatang.css);
  @import url(//fonts.googleapis.com/earlyaccess/jejuhallasan.css);
  @import url(//fonts.googleapis.com/earlyaccess/hanna.css);
  @import url('https://fonts.googleapis.com/css2?family=Black+Han+Sans&display=swap');
  .bhs{font-family: 'Black Han Sans', sans-serif;}
  .ng{font-family: 'Nanum Gothic', sans-serif;}
  .kb{font-family: 'KoPub Batang', serif;}
  .hn{font-family: 'Hanna', sans-serif;}
  .jh{font-family: 'Jeju Hallasan', cursive;}
  .ngc{font-family: 'Nanum Gothic Coding', monospace;}
  .bhs{font-family: 'Black Han Sans', sans-serif;}
#customers {
  font-family: "Trebuchet MS", Arial, Helvetica, sans-serif;
  border-collapse: collapse;
  width: 100%;
}

#customers td, #customers th {
  border: 1px solid #ddd;
  padding: 8px;
}

#customers tr:nth-child(even){background-color: #f2f2f2;}

#customers tr:hover {background-color: #ddd;}

#customers th {
  padding-top: 12px;
  padding-bottom: 12px;
  text-align: left;
  background-color: #4CAF50;
  color: white;
}
.grid-container {
  display: grid;
  grid-template-columns: auto auto auto auto;
  grid-gap: 10px;
  background-color: #339933;
  padding: 10px;
}

.grid-container > div {
  background-color: rgba(255, 255, 255, 0.8);
  border: 1px solid black;
  text-align: center;
  font-size: 30px;
}
.thumbnail-wrappper { width: 25%; }


.thumbnail {
	
    position: relative;
    padding-top: 5px;  /* 1:1 ratio */
    overflow: hidden;
}

.thumbnail .centered  {
	
    position: absolute;
    top: 0;
    left: 0;
    right: 0;
    bottom: 0;
    -webkit-transform: translate(50%,50%);
    -ms-transform: translate(50%,50%);
    transform: translate(50%,50%);
}

.thumbnail .centered img {

    position: absolute;
    top: 0;
    left: 0;   
    max-width: 100%;
    height: auto;
    -webkit-transform: translate(-50%,-50%);
    -ms-transform: translate(-50%,-50%);
    transform: translate(-50%,-50%);
}
img {
	
    max-width: 100%;
    height: auto;
}

.img-box{
	border: 10px solid #339933;
	width: 100%;
	padding: 5px;
	justify-content: center; aling-items: center;
	font-size : 10pt;
	
	}
.list{
	 display:grid;
	 grid-template-columns: auto auto auto auto;
  grid-gap: 10px;
  font-family: 'Jeju Hallasan', cursive;
  
	}

</style>

</head>
<body>

<!-- 메인 카테고리 시작 -->
<nav class="navbar navbar-default">
  <div class="container">
    <div class="navbar-header">
      <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>                        
      </button>					<!-- /절대경로 -->
      <a class="navbar-brand" href="<%=request.getContextPath() %>/index.jsp">HOME</a>
    </div >
    <div class="collapse navbar-collapse" id="myNavbar">
      <ul class="nav navbar-nav navbar-right">
        <li class="hn"><a href="../bbs/bbsList.jsp">계시판</a></li>
        <li class="hn"><a href="../notice/noticeList.jsp">공지사항</a></li>
        <li class="hn"><a href="../member/loginForm.jsp">로그인</a></li>
        <li class="hn"><a href="../pds/pdsList.jsp">포토갤러리</a></li>
        <li class="hn"><a href="../mail/mailForm.jsp">메일보내기</a></li>
        <li class="hn"><a href="../bbs2/bbsList.do">계시판(MVC)</a></li>
        <li class="hn"><a href="../member2/loginform.do">로그인(MVC)</a></li>
      </ul>
    </div>
  </div>
</nav>
<!-- 메인카테고리 끝 -->

<!-- Container 시작 -->


<div class="container-fluid bg-3 text-center">    
  <div class="row">
    <div class="col-sm-12"> 

