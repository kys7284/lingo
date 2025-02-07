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

	$(document).ready(function() {
	    $('#findHome').click(function() {
	        $.ajax({
	            url: '${path}/lifeHome.eq',
	            type: 'GET',
	            dataType: 'html',
	            beforeSend: function() {
	                // 로딩 표시
	                $('#loading').show();
	            },
	            complete: function() {
	                // 로딩 숨김
	                $('#loading').hide();
	            },
	            success: function(result) {
	                $('#display').html(result);
	            },
	            error: function(xhr, status, error) {
	                console.error("AJAX Error:", status, error);
	                alert('오류가 발생했습니다.');
	            }
	        });
	    });
	});
	
	$(document).ready(function() {
	    $('#egw').click(function() {
	        $.ajax({
	            url: '${path}/lifeEGW.eq',
	            type: 'GET',
	            dataType: 'html',
	            beforeSend: function() {
	                // 로딩 표시
	                $('#loading').show();
	            },
	            complete: function() {
	                // 로딩 숨김
	                $('#loading').hide();
	            },
	            success: function(result) {
	                $('#display').html(result);
	            },
	            error: function(xhr, status, error) {
	                console.error("AJAX Error:", status, error);
	                alert('오류가 발생했습니다.');
	            }
	        });
	    });
	});
	
	$(document).ready(function() {
	    $('#telecom').click(function() {
	        $.ajax({
	            url: '${path}/lifetelecom.eq',
	            type: 'GET',
	            dataType: 'html',
	            beforeSend: function() {
	                // 로딩 표시
	                $('#loading').show();
	            },
	            complete: function() {
	                // 로딩 숨김
	                $('#loading').hide();
	            },
	            success: function(result) {
	                $('#display').html(result);
	            },
	            error: function(xhr, status, error) {
	                console.error("AJAX Error:", status, error);
	                alert('오류가 발생했습니다.');
	            }
	        });
	    });
	});
	
	$(document).ready(function() {
	    $('#recycle').click(function() {
	        $.ajax({
	            url: '${path}/liferecycling.eq',
	            type: 'GET',
	            dataType: 'html',
	            beforeSend: function() {
	                // 로딩 표시
	                $('#loading').show();
	            },
	            complete: function() {
	                // 로딩 숨김
	                $('#loading').hide();
	            },
	            success: function(result) {
	                $('#display').html(result);
	            },
	            error: function(xhr, status, error) {
	                console.error("AJAX Error:", status, error);
	                alert('오류가 발생했습니다.');
	            }
	        });
	    });
	});
</script>


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

					<h2>생활정보</h2>
					<br> <br>
					<ul>
						<li><a href="${path}/life.eq"> 주거생활 </a></li>
					</ul>
					<ul>
						<li><a href="#"> 경제생활 </a></li>
					</ul>
					<ul>
						<li><a href="#"> 공공기관 이용 </a></li>
					</ul>
				</div>
			<!-- 왼쪽메뉴 끝 -->
			
				<!-- 상단 중앙1 시작  -->
				<div id="section1"
					style="background-image: url('${path}/resources/images/house.jpg'); background-size: cover; background-position: center; height: 300px;">
					<br> 
					<br>
					<h1 align="center">생활정보</h1>
				</div>
				<!-- 상단 중앙2 시작  -->
				<div id="section2">
					<div class="container">
	                  <div class="menu">
	                     <a id="findHome">집구하기</a> 
	                     <a id="egw">전기/가스/수도</a> 
	                     <a id="telecom">통신서비스</a>
	                     <a id="recycle">쓰레기분리수거와 재활용</a>
	                  </div>

						<div id="display">
		                 <!-- 결과출력 위치 -->   
                 
						<div id="s2_inner">

							<div class="join">

								<form name="loginform" action="loginAction.do" method="post">
									<img src="${path}/resources/images/testlife.jpg" alt="">
									<div class="content">
										<br>
										
										<h5><i class="fas fa-caret-right"></i> 한국의 주거 종류</h5>
										<ul>
											<li><strong>단독주택:</strong> 마당이 있고, 한 가족이 독립적으로 사용하는
												주택입니다.</li>
											<li><strong>아파트:</strong> 고층 건물로, 여러 가구가 함께 거주하는 형태입니다.</li>
											<li><strong>오피스텔:</strong> 주거와 업무 공간을 겸할 수 있는 건물입니다.</li>
											<li><strong>다세대·다가구 주택:</strong> 여러 가구가 함께 거주하지만, 각각
												독립적인 공간을 사용하는 주택입니다.</li>
										</ul>
										<br><br>
										<h5><i class="fas fa-caret-right"></i> 주택 구입과 임대차 계약</h5>
										
										<br>
										<h6>주택 구입</h6>
										<ul>
											<li><strong>집의 위치와 방향:</strong> 교통, 편의시설, 학군 등을 고려하여
												편리하고 쾌적한 환경을 선택합니다.</li>
											<li><strong>주변 환경:</strong> 소음, 공해, 치안 등을 고려하여 안전하고 조용한
												환경을 선택합니다.</li>
											<li><strong>등기부등본 확인:</strong> 소유권, 근저당 등의 설정관계를 확인하여
												불이익을 당하지 않도록 합니다.</li>
											<li><strong>계약서 작성:</strong> 필요한 사항을 정확하게 기재하여 불이익을 당하지
												않도록 합니다.</li>
										</ul>
										
										<br>
										<h6>전세</h6>
											
										<ul>
											<li>전세는 한국 특유의 임대 방식입니다. 세입자는 집주인에게 보증금을 맡기고, 계약 기간 동안 집을 사용한 후 보증금을 돌려받습니다.</li>
											<li><strong>보증금:</strong> 집값의 40~80% 선으로, 시세에 따라 달라집니다.</li>
											<li><strong>계약 기간:</strong> 보통 2년 단위로 계약하며, 집주인은 특별한 사유
												없이 계약 기간을 파기할 수 없습니다.</li>
											<li><strong>장점:</strong> 월세 부담 없이 거주할 수 있으며, 계약 만료 시
												보증금을 돌려받을 수 있습니다.</li>
										</ul>
										
										<br>
										<h6>월세</h6>
										<ul>
											<li><strong>보증금:</strong> 전세보다 적은 금액으로, 집주인과 협의하여 조정할 수
												있습니다.</li>
											<li><strong>월세:</strong> 방 크기, 개수, 시설 등에 따라 다르며, 시세에 따라
												변동됩니다.</li>
											<li><strong>장점:</strong> 전세보다 보증금 부담이 적으며, 단기간 거주하기에
												용이합니다.</li>
										</ul>
										<br><br>
										<h5><i class="fas fa-caret-right"></i> 주택을 구할 때 확인해야 할 점</h5>
										<ul>
											<li><strong>부동산 중개업소:</strong> 매물 정보 제공, 계약서 작성, 법률 문제
												상담 등 다양한 서비스를 제공합니다.</li>
											<li><strong>중개수수료:</strong> 주택 가격에 따라 결정되며, 인터넷을 통해 미리
												확인할 수 있습니다.</li>
											<li><strong>불법 중개 행위 신고:</strong> 과다한 중개수수료 요구 등 불법 행위를
												발견하면 신고합니다.</li>
										</ul>
										<br><br>
										<h5><i class="fas fa-caret-right"></i> 외국인을 위한 글로벌 부동산중개사무소</h5>	
										<p>외국인에게는 글로벌 부동산중개사무소를 이용하는 것이 편리합니다. 외국어 상담을 지원하며, 외국인에게
											필요한 정보를 제공합니다.</p>
									</div>
								</div>
							</form>
						</div>
					</div>
				</div>
			</div>
			<%@include file="/WEB-INF/views/common/footer.jsp"%>
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
	</div>


</body>
</html>