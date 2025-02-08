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
    $('#job').click(function() {
        $.ajax({
            url: '${path}/job.eq',
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
    $('#empInsurance').click(function() {
        $.ajax({
            url: '${path}/employInsurance.eq',
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
    $('#accident').click(function() {
        $.ajax({
            url: '${path}/accidentInsurance.eq',
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
						<li><a href="${path}/employment.eq"> 취업 </a></li>
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
	                     <a id="job">취업</a> 
	                     <a id="empInsurance">고용보험</a> 
	                     <a id="accident">산업재해보험</a>
	                  </div>

						<div id="display">
		                 <!-- 결과출력 위치 -->   
                 
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