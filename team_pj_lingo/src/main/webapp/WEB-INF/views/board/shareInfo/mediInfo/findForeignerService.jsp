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
	line-height: 1.6;
	color: #333;
}

table {
	width: 100%;
	border-collapse: collapse;
	margin-top: 20px;
	text-align: center;
}

th {
	background-color: #a7deeb;
	font-weight: bold;
	padding: 15px;
	border: 1px solid #2a97b5;
}

td {
	background-color: #a4dfe9;
	padding: 15px;
	border: 1px solid #2a97b5;
}

tr:first-child th {
	border-top: 2px solid #3992a2;
}

td:first-child {
	background-color: #d7f3f8;
	font-weight: bold;
}

h5 {
	color: #06BBCC !important;
}

.col-wide {
    width: 300px; /* 원하는 너비 설정 */
    text-align: left;
}
        
</style>

</head>
<body>
	<div id="s2_inner">

		<div class="join">

			<form name="loginform" action="loginAction.do" method="post">
				<img src="${path}/resources/images/medi2.jpg" alt="">
				<div class="content">
					<br>
					<h5>
						<i class="fas fa-caret-right"></i> 119
					</h5>
					<ul>
						<li>화재는 물론 응급상황이 발생했을 경우 119로 전화한다.119구조대는 구급차로 환자를 인 의 병원으로
							후송하는 등 즉각적인 서비스를 제공한다. 또한 119에 전화하면 외국어로 통역서비스를 제공하는 기관으로 연결되어
							3자통화로 의사소통이 이루어진다. 이동전화를 사용할 때에는 지역번호 없이 119를 누르고, 공중전화에서 119를 사용
							할 때는 빨간색 긴급통화 버튼을 누르고 119를 누른다.</li>
					</ul>
					
					<br>
					<hr>
					<br>
					
					<!-- 표 시작 -->
					<table>
						<h5><i class="fas fa-caret-right"></i> 전국 주요도시 국제진료센터</h5>
						
						<colgroup>
							<col>
							<col>
							<col>
							<col>
							<col class="col-wide"> 
						</colgroup>	
						
						<thead>
							<tr>
								<th>도시</th>
								<th>병원명</th>
								<th>진료 가능 언어</th>
								<th>대표전화(한국어)</th>
								<th>상담전화(언어별)</th>
							</tr>
						</thead>

						<tbody>
							<tr>
								<td>서울</td>
								<td>서울아산병원<br>국제진료센터</td>
								<td>영어, 일본어<br>중국어, 프랑스어</td>
								<td>1588-4128</td>
								<td>영어 : 02-3010-5000<br>일본어 : 02-3010-5002<br>중국어 : 02-3010-5001<br>프랑스어 : 02-3010-5006</td>
							</tr>
							<tr>
								<td>서울</td>
								<td>세브란스병원<br>국제진료센터</td>
								<td>영어<br>일본어<br>중국어</td>
								<td>1599-1004</td>
								<td>영어 : 02-2228-5800<br>일본어 : 02-2228-5802<br>중국어 : 02-2228-5801</td>
							</tr>
							<tr>
								<td>부산</td>
								<td>부산대학교병원<br>국제진료센터</td>
								<td>영어<br>일본어<br>중국어</td>
								<td>051-253-1231</td>
								<td>영어 : 051-240-7700<br>일본어 : 051-240-7702<br>중국어 : 051-240-7701</td>
							</tr>
							<tr>
								<td>대구</td>
								<td>경북대학교병원<br>국제진료센터</td>
								<td>영어<br>일본어<br>중국어</td>
								<td>053-420-5114</td>
								<td>영어 : 053-668-7000<br>일본어 : 053-668-7002<br>중국어 : 053-668-7001</td>
							</tr>
							<tr>
								<td>인천</td>
								<td>인하대학교병원<br>국제진료센터</td>
								<td>영어<br>일본어<br>중국어</td>
								<td>032-881-7117</td>
								<td>영어 : 032-890-2000<br>일본어 : 032-890-2002<br>중국어 : 032-890-2001</td>
							</tr>
							<tr>
								<td>광주</td>
								<td>전남대학교병원<br>국제진료센터</td>
								<td>영어<br>일본어<br>중국어</td>
								<td>062-220-5114</td>
								<td>영어 : 062-220-5000<br>일본어 : 062-220-5002<br>중국어 : 062-220-5001</td>
							</tr>
							<tr>
								<td>대전</td>
								<td>충남대학교병원<br>국제진료센터</td>
								<td>영어<br>일본어<br>중국어</td>
								<td>042-280-7119</td>
								<td>영어 :  042-280-8114<br>일본어 : 042-280-8116<br>중국어 : 042-280-8115</td>
							</tr>
							<tr>
								<td>울산</td>
								<td>울산대학교병원<br>국제진료센터</td>
								<td>영어<br>일본어<br>중국어</td>
								<td>052-250-8000</td>
								<td>영어 : 052-250-7000<br>일본어 : 052-250-7002<br>중국어 : 052-250-7001</td>
							</tr>
						</tbody>
					</table>
					</div>
					<br>
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