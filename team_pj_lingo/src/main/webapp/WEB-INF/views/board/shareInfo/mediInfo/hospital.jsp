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

<link rel="stylesheet"
	href="${path}/resources/css/shareInfo/hospital.css">
<script type="text/javascript"
	src="https://dapi.kakao.com/v2/maps/sdk.js?appkey=9cf491c2b4ea282bc575ac43da49ce41&libraries=services"></script>

<script src="${path}/resources/js/hospital.js" defer></script>

</head>
<body>
	<div class="wrap">
		<!-- header 시작 -->
		<%@include file="/WEB-INF/views/common/header.jsp"%>
		<!-- header 끝    -->

		<!-- 컨텐츠 시작 -->

		<div id="container">

			<div id="contents">
				<!-- 왼쪽메뉴시작 -->
				<div id="side_menu">
					<h2>의료정보</h2>
					<h2></h2>
					<br> <br>
					<ul>
						<li><a href="${path}/medi.hl"> 유용한 정보 </a></li>
					</ul>
					<ul>
						<li><a href="${path}/hospital.hl"> 병원찾기 </a></li>
					</ul>
				</div>
				<!-- 왼쪽메뉴 끝 -->

				<!-- 상단 중앙1 시작  -->
				<div id="section1"
					style="background-image: url('${path}/resources/images/medi.png'); background-size: cover; background-position: calc(100% - 100px); height: 350px;">
					<br> <br> <br>
					<h1 align="center">의료정보</h1>
				</div>

				<!-- 검색 섹션 -->
				<div id="section2">
					<div class="container">
						<div><h2 style="text-align: center; color: #06BBCC; margin-bottom: 38px;" >전국 주요도시 병원 정보</h2></div>

						<!-- 검색 영역 -->
						<div class="search-section" style="background-image: url('${path}/resources/images/hospital_bgh.jpg'); background-size: cover;">
							<!-- 상단: 지역 선택 -->
							<label for="city">도시 선택:</label> 
							<select id="city"></select>
							&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
							<label for="province">구 선택:</label> 
							<select id="province"></select>
						</div>

						<!-- 병원 리스트 & 지도 -->
						<div class="list-map-section">
							<!-- 왼쪽: 병원 리스트 -->
							<div class="hospital-list" style="background-image: url('${path}/resources/images/hospital_bg.jpg'); background-size: cover;">
								<h3>병원 리스트</h3>
								<ul id="hospital-list"></ul>
							</div>
							<!-- 오른쪽: 병원 정보 -->
							<div class="hospital-info" style="background-image: url('${path}/resources/images/hospital_bg.jpg'); background-size: cover;">
								<h3>병원 정보</h3>
								<p id="hospital-name">병원을 선택하세요</p>
								<p id="hospital-address"></p>
								<p id="hospital-phone"></p>
							</div>
							<!-- 하단: 지도 / 로드뷰 표시 -->
							<div id="map"></div>
							<div id="roadview"></div>
						</div>
					</div>
				</div>
			</div>
			<%@include file="/WEB-INF/views/common/footer.jsp"%>
		</div>
	</div>
	<!-- 컨텐츠 끝 -->

	<!-- Back to Top -->
	<a href="#" class="btn btn-lg btn-primary btn-lg-square back-to-top"><i
		class="bi bi-arrow-up"></i></a>

	<!-- JavaScript Libraries -->
	<script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/js/bootstrap.bundle.min.js"></script>
	<script src="${path}/resources/css/common/lib/wow/wow.min.js"></script>
	<script src="${path}/resources/css/common/lib/easing/easing.min.js"></script>
	<script
		src="${path}/resources/css/common/lib/waypoints/waypoints.min.js"></script>
	<script
		src="${path}/resources/css/common/lib/owlcarousel/owl.carousel.min.js"></script>

	<!-- Template Javascript -->
	<script src="${path}/resources/js/main.js"></script>
</body>

<script
	src="https://cdn.staticfile.net/translate.js/3.12.0/translate.js"></script>
<script>
	translate.service.use('client.edge'); //번역기 사용   참조: http://translate.zvo.cn/43086.html
	translate.selectLanguageTag.show = false;// 기본 언어선택창 숨김  (true: 표시)
	translate.execute();//번역시작
</script>

</html>