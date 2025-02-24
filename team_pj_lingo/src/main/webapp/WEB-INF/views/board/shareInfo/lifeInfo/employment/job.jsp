<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@include file="/WEB-INF/views/common/setting.jsp" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<!-- 반응형 웹  -->
<meta name="viewport" content="width=device-width, initial-scale=1">

<title>login</title>

<!-- css  -->
<!-- 기존설정 그대로 -->
       <meta charset="utf-8">
       <title>Lingo</title>
       <meta content="width=device-width, initial-scale=1.0" name="viewport">
       <meta content="" name="keywords">
       <meta content="" name="description">
   
       <!-- Favicon -->
       <link href="img/favicon.ico" rel="icon">
   
      <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css" rel="stylesheet">
   
       <!-- Google Web Fonts -->
       <link rel="preconnect" href="https://fonts.googleapis.com">
       <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
       <link href="https://fonts.googleapis.com/css2?family=Heebo:wght@400;500;600&family=Nunito:wght@600;700;800&display=swap" rel="stylesheet">
   
       <!-- Icon Font Stylesheet -->
       <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.10.0/css/all.min.css" rel="stylesheet">
       <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.4.1/font/bootstrap-icons.css" rel="stylesheet">
   <!-- 기존설정 그대로 끝-->

    <!-- Libraries Stylesheet -->
    <link href="${path}/resources/css/common/lib/animate/animate.min.css" rel="stylesheet">
    <link href="${path}/resources/css/common/lib/owlcarousel/assets/owl.carousel.min.css" rel="stylesheet">

    <!-- Customized Bootstrap Stylesheet -->
    <link href="${path}/resources/css/common/bootstrap.min.css" rel="stylesheet">

    <!-- Template Stylesheet -->
    <link href="${path}/resources/css/common/style.css" rel="stylesheet">
<script src="${path}/resources/js/member/join.js" defer></script> 

   <link rel="stylesheet" href="${path}/resources/css/shareInfo/life.css">
<script type="text/javascript">

</script>

<!-- <style>
footer {
    position: relative;
    margin-top: auto;  
}
</style> -->

</head>
<body>
<div id="s2_inner">
	<div class="join">
		<form name="loginform" action="loginAction.do" method="post">
			<img src="${path}/resources/images/jobs.png" alt="">
			<div class="content">
				<br>
				<strong>외국인은 입국 목적과 발급받은 비자유형에 따라 취업할 수 있다. 국민배우자(F-6, F-21)비자를 받고 입국한 결혼이민자는 법적으로 취업을 할 수 있는 자격이 허용된다. 본인이 가진 비자로 취업을 할 수 있는지 여부는 외국인종합안내센터 <button> <a href="https://www.hikorea.go.kr/Main.pt" target="_blank"> 바로가기 </a> </button>  TEL.1345  에서 확인 가능하다.</strong>
				<br><br>
				
				<h5><i class="fas fa-caret-right"></i> 일자리 알선기관 방문</h5>
				<ul>
					<li>거주지에서 가장 가까운 고용센터, 취업정보센터, 여성인력개발센터, 외국인인력지원센터, 다문화가족지원센터에 가면 결혼이민자 등 외국인을 위한 일자리에 관한 정보를 안내 받을 수 있다</li>
				</ul>
				
				<br><br>
				
				<h5><i class="fas fa-caret-right"></i> 인터넷 이용</h5>
				
				<br>
				
				<table width="1000px" class="board_table">
					<tr>
						<th>외국인 고용관리시스템</th>
						<td><a href="https://www.eps.go.kr/index.jsp" target="_blank" >www.eps.go.kr</a></td>
					</tr>
					
					<tr>
						<th>취업 및 고용사이트</th>
						<td>
							<a href="https://www.eps.go.kr/index.jsp" target="_blank">www.work.go.kr</a> <br>
							<a href="https://www.workplus.go.kr/index.do" target="_blank"> www.workplus.go.kr </a>
						</td>
					</tr>
					
					<tr>
						<th>여성인력개발센터</th>
						<td><a href="https://www.vocation.or.kr/" target="_blank">www.vocation.or.kr</a></td>
					</tr>
				</table>
			</div>
		</form>
	</div>
</div>                
</body>
<script>
translate.service.use('client.edge'); //번역기 사용   참조: http://translate.zvo.cn/43086.html
translate.selectLanguageTag.show = false;// 기본 언어선택창 숨김  (true: 표시)
translate.execute();//번역시작
</script>
</html>