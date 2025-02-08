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

   <link rel="stylesheet" href="${path}/resources/css/member/login.css">
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
			<img src="${path}/resources/images/empInsurance.png" alt="">
			<div class="content">
				<br>
				<strong>안전한 고용을 유지하고, 실직했을 경우 실업급여를 제공하여 생활안정을 도모하기 위한 사회보장보험이다.</strong>
				
				<br><br>
				
				<h5><i class="fas fa-caret-right"></i> 적용대상 </h5>
				<ul>
					<li>근로자 1인 이상의 사업 또는 사업장에서 체류자격별로 의무가입 및 외국 인 근로자와 기업이 원하는 경우 임의 가입할 수 있다.</li>
				</ul>
				
				<br><br>
				
				<h5><i class="fas fa-caret-right"></i> 실업 급여 </h5>
				
				<br>
				
				<ul>
					<li><i style="text-weight:bold;">수급기간</i> <br> 
						퇴직당시 연령과 보험가입기간에 따라 최소 90일에서 최대 240일까지 실업급여를 받을 수 있다.
					</li>
				</ul>
				
				<table width="1000px" class="board_table">
					<tr>
						<th style="text-align: left;"><i class="fas fa-caret-right"></i>고용노동부 고객상담센터 : TEL.1350</th>
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