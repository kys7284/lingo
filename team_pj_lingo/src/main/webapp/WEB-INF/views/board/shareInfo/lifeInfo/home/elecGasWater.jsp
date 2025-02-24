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
			<img src="${path}/resources/images/gas.jpg" alt="">
			<div class="content">
				<br>

				<h5>
					<i class="fas fa-caret-right"></i> 전기
				</h5>
				<ul>
					<li>한국의 가정용 전기의 기준 전압은 220V이다.</li>
					<li>해외에서 가져온 전기제품사용 시 전압을 반드시 확인하고 사용해야 한다.</li>
					<li>한국에서 전기서비스는 한국전력공사가 공급하고 있으므로, 전기 요금, 사고, 가입 등은 한국전력공사로
						문의하면 된다.</li>
				</ul>
				<img src="${path}/resources/images/gas1.png" width="1000px;" alt="">
				<br>
				<br>

				<h5>
					<i class="fas fa-caret-right"></i> 가스
				</h5>

				<ul>
					<li>도시가스를 사용하기 위해서는 도시가스회사(CNCITY 에너지 1666- 0009)에 연락해서 서비스 신청을 해야 한다. 사용 개시 일에 맞춰서 가스 회사 기술 담당자가 방문, 설치해 준다.</li>
					<li>LP 가스를 사용하는 주택인 경우, 근처 가스판매소에 연락해서 LP 가스 설치에 대해 문의하기 바란다.</li>
				</ul>

				<h5>
					<i class="fas fa-caret-right"></i> 수도
				</h5>
				<ul>
					<li>거의 모든 주택에 기본적으로 수도가 설치되어 있어 바로 사용할 수 있다. 만약, 수도꼭지를 틀어도 물이 안 나올 경우 수도밸브를 확인해 봐야한다.</li>
				</ul>
				
				<img src="${path}/resources/images/gas2.png" width="1000px;" alt="">
				
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