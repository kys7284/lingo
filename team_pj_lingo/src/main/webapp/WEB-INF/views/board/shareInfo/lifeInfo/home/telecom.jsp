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
				<img src="${path}/resources/images/telecom.jpg" alt="">
				<div class="content">
					<br>

					<h5>
						<i class="fas fa-caret-right"></i> 휴대폰
					</h5>
					<ul>
						<li>가입방법 : 국내 이동통신 3사(SKT, KT, LG U+) 대리점을 방문하여 가입 신청서를 작성하고, 가입비, 휴대폰 기기대금을 지불하면 된다</li>
						<li>구비서류 : 외국인 등록증, 여권, 자동이체 통장 등</li>
						<li>주요 이동통신사</li>
							<p>- SK텔레콤 : 1599-0011</p>
							<p>- KT olleh : 100</p>
							<p>- LG U+ : 1544-0010</p>
					</ul>

					<br>
					<br>

					<h5>
						<i class="fas fa-caret-right"></i> 일반전화

					</h5>

					<br>
					<h6>주택 구입</h6>
					<ul>
						<li>일반전화 서비스 업체 홈페이지 및 전화번호</li>
					</ul>
						<p>- KT : 100(한국어) / 1588-8448(외국어)</p>
						<p>- SK브로드밴드 : 106</p>


					<h5>
						<i class="fas fa-caret-right"></i> 국제전화
					</h5>
					<ul>
						<li>일반전화 서비스 업체 홈페이지 및 전화번호</li>
					</ul>
						<p>- 국제전화 서비스번호 + 국가번호 + 지역번호 + 전화번호</p>
					<img src="${path}/resources/images/telecom1.png" width="1000px;" alt="">
					
					<ul>
						<li>주요 국제전화 서비스번호</li>
					</ul>
						<p>- KT(001), LG U+(002), SK텔링크(00700)</p>
					<img src="${path}/resources/images/telecom2.png" width="1000px;" alt="">
					
					
					
					<h5>
						<i class="fas fa-caret-right"></i> 인터넷
					</h5>
					<ul>
						<li>가입방법 : 인터넷 통신업체에 전화를 걸어 서비스를 신청한다. 가입비, 월이용료 등은 통신업체에 따라 다르므로 자세히 비교해 본 뒤 신청하는 것이 좋다.</li>
						<li>주요 국제전화 서비스번호</li>
						<li>주요 통신업체 : 인터넷 통신업체에 전화를 걸어 서비스를 신청한다. 가입비, 월이용료 등은 통신업체에 따라 다르므로 자세히 비교해 본 뒤 신청하는 것이 좋다.</li>
					</ul>
						<p>- KT : 100</p>
						<p>- SK브로드밴드 : 106</p>
						<p>- LG U+ : 101</p>
					
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