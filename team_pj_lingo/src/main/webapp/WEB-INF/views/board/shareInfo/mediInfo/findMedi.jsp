<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@include file="/WEB-INF/views/common/setting.jsp"%>
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

<link
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css"
	rel="stylesheet">

<!-- Google Web Fonts -->
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link
	href="https://fonts.googleapis.com/css2?family=Heebo:wght@400;500;600&family=Nunito:wght@600;700;800&display=swap"
	rel="stylesheet">

<!-- Icon Font Stylesheet -->
<link
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.10.0/css/all.min.css"
	rel="stylesheet">
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.4.1/font/bootstrap-icons.css"
	rel="stylesheet">
<!-- 기존설정 그대로 끝-->

<!-- Libraries Stylesheet -->
<link href="${path}/resources/css/common/lib/animate/animate.min.css"
	rel="stylesheet">
<link
	href="${path}/resources/css/common/lib/owlcarousel/assets/owl.carousel.min.css"
	rel="stylesheet">

<!-- Customized Bootstrap Stylesheet -->
<link href="${path}/resources/css/common/bootstrap.min.css"
	rel="stylesheet">

<!-- Template Stylesheet -->
<link href="${path}/resources/css/common/style.css" rel="stylesheet">
<script src="${path}/resources/js/member/join.js" defer></script>

<link rel="stylesheet" href="${path}/resources/css/shareInfo/low.css">
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
				<img src="${path}/resources/images/medi1.jpg" alt="">
				<div class="content">
					<br> <strong>병원은 종합병원과 전문 의원으로 나뉜다. 종합병원은 첨단 의료시설을
						갖추고 다양한 진료과목과 많은 전공의사 및 보조 시설이 있지만, 환자가 많은 편이고 대기시간이 길은 편이다. 반대로
						전문의원은 일반적으로 1~2명의 의사가 내과나 소아과처럼 특정한 진료과목으로 환자에게 진료서비스를 한다. 전문의원은
						가까운 동네에 많이 있으며 대기시간이 짧아 감기 등 간단한 질병의 치료에 편리하다.</strong> <br> <br>
					<hr>
					<br>
					<h5>
						<i class="fas fa-caret-right"></i> 병원 예약 방법
					</h5>
					<ul>
						<li>신속하고 편리하게 병원을 이용하기 위해서는 사전 예약이 필요하다. 사전 예약은 병원에 따라 방문 또는
							전화, 인터넷 홈페이지 등을 통해 가능하다.</li>
					</ul>
					<br>
					<h5>
						<i class="fas fa-caret-right"></i> 의료 부담
					</h5>
					<ul>
						<li>대부분의 병원에서 신용카드로 납부 가능하며 원무과에서 처리한다. 간혹 국제진료소가 따로 분리된
							병원에서는 국제진료소에서 따로 납부 가능하다. 일반적으로 대부분 종합병원에서는 요청 시 영문 영수증 발급이 가능하다.
							보험 가입여부에 따라 진료비가 다르고, 해외에서 가입한 보험의 경우 병원에 따라 적용되지 않을 수 있으며 의료비 선납
							후 보험금 지급 요청절차를 통해 진료비를 돌려받는 경우도 있다.</li>
					</ul>
				</div>
			</form>
		</div>

	</div>
</body>
<script
	src="https://cdn.staticfile.net/translate.js/3.12.0/translate.js"></script>
<script>
translate.service.use('client.edge'); //번역기 사용   참조: http://translate.zvo.cn/43086.html
translate.selectLanguageTag.show = false;// 기본 언어선택창 숨김  (true: 표시)
translate.execute();//번역시작
</script>
</html>