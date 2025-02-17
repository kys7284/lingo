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

<style>
body {
	font-family: Arial, sans-serif;
	line-height: 1.8;
	color: #333;
}

.info-box {
	border: 1px solid #ddd;
	padding: 15px;
	border-radius: 5px;
	background-color: #f9f9f9;
	font-family: Arial, sans-serif;
	line-height: 1.8;
	display: flex;
	flex-direction: column;
	gap: 5px;
}

.info-item {
	display: flex;
	align-items: center;
}

.info-item i {
	color: #6abf69;
	margin-right: 5px;
}

.info-box i {
	color: #06BBCC;
	margin-right: 10px;
}

.main-box {
	border: 1px solid #ddd;
	padding: 15px;
	border-radius: 5px;
	background-color: #f9f9f9;
}

.main-box h4 {
	display: flex;
	align-items: center;
	font-size: 18px;
	margin: 0;
	color: #333;
}

.main-box i {
	color: #06BBCC;
	margin-right: 10px;
}

.main-box ul {
	margin-top: 10px;
	padding-left: 20px;
}

.main-box li {
	list-style-type: none;
	position: relative;
	padding-left: 15px;
}

.main-box li::before {
	content: "•";
	position: absolute;
	left: 0;
	color: #6abf69;
	font-weight: bold;
}

.link-button {
	display: inline-flex;
	align-items: center;
	padding: 5px 10px;
	font-size: 14px;
	color: #666;
	background-color: #ddd;
	border-radius: 15px;
	text-decoration: none;
	font-weight: bold;
}

.link-button i {
	margin-left: 5px;
	font-size: 12px;
}

.link-button:hover {
	background-color: #bbb;
}
</style>

</head>
<body>
	<div id="s2_inner">

		<div class="join">

			<form name="loginform" action="loginAction.do" method="post">
				<img src="${path}/resources/images/medi3.jpg" alt="">
				<div class="content">
					<br> <strong>대한민국은 소득에 따라 매달 일정금액의 보험료를 납부하는 건강보험 제도를
						실시하고 있다. 국민건강보험에 가입하면 저렴한 비용으로 의료기관을 이용할 수 있으며, 정기적으로 건강검진도 받을 수
						있다. </strong> <br> <br>
					<hr>
					<br>

					<h6>
						<strong>외국인·재외국민 건강보험 제도 안내</strong>
					</h6>
					<br>
					<h6>
						<i class="fas fa-caret-right"></i> 가입자 관리
					</h6>
					<ul>
						<li><strong>(가입대상) 6개월 이상 체류자 중 건강보험 미가입자</strong></li>
					</ul>
					- 결혼이민(F-6)은 입국일(다만, 입국일보다 외국인등록 늦은 경우 등록일)<br>
					<br> &nbsp;&nbsp;&nbsp;&nbsp;*&nbsp;&nbsp;체류자격이 A(외교), B(관광),
					C(단기), G1(기타)을 제외한 외국인<br>
					&nbsp;&nbsp;&nbsp;&nbsp;*&nbsp;&nbsp;D2(유학생), D4(일반연수)는 당연가입
					유예(‘21.2.28.까지)<br>
					<br> - 현재 지역가입자로 자격이 있는 유학생은 선납보험료 미납시 자격상실되며 재가입 불가함. 다만
					직장가입은 가능 <br>
					<br>
					<ul>
						<li><strong>(가입절차) 별도의 신고절차 없이 공단에서 일괄 가입처리</strong></li>
					</ul>
					<div class="info-box">

						<i class="fas fa-info-circle"></i> 등록관청에 체류지(거소지)를 변경신고하는 경우에는
						동·호수 등 상세주소를 정확히 신고하여 우편물 미송달로 인한 불이익이 발생하지 않도록 주의
					</div>

					<!-- 주요 내용 박스 -->
					<div class="main-box">
						<h4>
							<i class="fas fa-comments"></i> 건강보험 가입제외 신청 대상 및 구비서류
						</h4>
						<ul>
							<li><b>(신청대상)</b> 외국의 법령·보험 및 사용자와의 계약으로 법 제41조에 따른 요양급여에
								상당하는 의료보장을 받을 수 있는 경우</li>
						</ul>
						&nbsp;&nbsp;&nbsp;&nbsp;-&nbsp;&nbsp;외국의 보험은 국내 장기체류(외국인 등록 등) 이전에
						가입한 경우만 인정<br> &nbsp;&nbsp;&nbsp;&nbsp;-&nbsp;&nbsp;외국의 보험 및
						사용자와의 계약은 가입제외 기간이 1년이고, 해당기간이 지난 후 다시 가입제외신청 필요 <br>


						<ul>
							<li><b>(신청서류) 자격상실신고서, 건강보험가입 제외 신청서 및 구비서류(한글번역 포함)</b></li>
						</ul>
						&nbsp;&nbsp;&nbsp;&nbsp;<b>-&nbsp;&nbsp;외국의 법령‧보험 : </b>외국법령 적용대상
						확인서나 보험계약서 등<br> &nbsp;&nbsp;&nbsp;&nbsp;<b>-&nbsp;&nbsp;사용자와의
							계약 : </b>근로계약서 등 의료보장을 받을 수 있다는 서류
					</div>
					<br>
					<h6>
						<i class="fas fa-caret-right"></i> 보험료 부과 및 납부<br>
					</h6>

					<b>보험료는 소득‧재산에 따라 개인(가족)단위로 산정하며, 산정된 보험료가 전년도 11월 전체가입자 평균보험료
						미만인 경우는 평균보험료 적용</b><br> <b>*&nbsp;&nbsp;2019년도 11월 평균보험료 :
						123,080원</b><br>
					<br> &nbsp;&nbsp;&nbsp;&nbsp;-&nbsp;&nbsp;다만, 난민인정자(F-2-4) 및 그
					가족(F-1-16), 19세미만 단독세대는 평균보험료 미만시에도 평균보험료를 적용하지 않고 내국인과<br>
					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;동일하게 보험료 산정 <br> <br>
					<div class="info-box">
						<div class="info-item">
							<i class="fas fa-info-circle"></i> 외국인은 본국의 재산‧소득 등의 파악이 어려워
							평균보험료를 부과하고 있음<br>
						</div>
						<p>
							&nbsp;&nbsp;&nbsp;&nbsp;-&nbsp;&nbsp;더 자세한 정보는 국민건강보험 홈페이지<a
								href="https://www.nhis.or.kr/break/break.html" target="_blank"
								class="link-button">바로가기 <i class="fas fa-external-link-alt"></i>
							</a> 참조
						</p>
						<div class="info-item">
							<i class="fas fa-info-circle"></i> 영어, 중국어, 일본어, 베트남어, 우즈벡어 안내문
							있음
						</div>
					</div>


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