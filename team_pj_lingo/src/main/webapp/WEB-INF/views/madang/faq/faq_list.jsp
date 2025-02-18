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

<title>FAQ</title>
    
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

	<link rel="stylesheet" href="${path}/resources/css/common/madang.css">
<script type="text/javascript">
	$(function(){	
		// 아이디 찾기 버튼 클릭시
		$('#btnFindId').click(function() {
				location.href="${path}/notice_insert.no"
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
				
				<!-- 상단 중앙1 시작  -->
				<div id="section1"
					style="background-image: url('${path}/resources/images/faq.png'); background-size: cover; background-position: center; height: 300px;">
					<br> <br>
					<h1 align="center">FAQ</h1>
				</div>
				<!-- 상단 중앙2 시작  -->
				<div id="section2">
					<!-- 왼쪽메뉴시작 -->
					<div id="side_menu">
	
						<h2>알림마당</h2>
						<br> <br>
						<ul>
							<li><a href="${path}/notice_list.no"> 공지사항 </a></li>
						</ul>
						<ul>
							<li><a href="${path}/faq_list.faq"> 자주하는 질문</a></li>
						</ul>
						<ul>
							<li><a href="${path}/report.sos">신고 센터</a></li>
						</ul>
						<ul>
							<li><a href="${path}/employment.eq"> 관련 기사 </a></li>
						</ul>
					</div>
					<!-- 왼쪽메뉴 끝 -->
					<div class="container">
					
						<div id="contents">
						
						<div class="menu">
							검색
						</div>

						<div id="display">
							<!-- 결과출력 위치 -->

							<div id="s2_inner">
								<div class="join">
										<form name="noticeList">
									<table>
										<div class="accordion" id="accordionExample">
										  <div class="accordion-item">
										    <h2 class="accordion-header">
										      <button class="accordion-button" type="button" data-bs-toggle="collapse" data-bs-target="#collapseOne" aria-expanded="true" aria-controls="collapseOne">
										        <i class="fa-solid fa-q"></i>. 아이디를 잊어버렸어요. 어떻게 찾나요? 
										      </button>
										    </h2>
										    <div id="collapseOne" class="accordion-collapse collapse show" data-bs-parent="#accordionExample">
										      <div class="accordion-body">
										       <i class="fa-solid fa-a"></i> <strong>. 아이디를 분실하셨을 경우에는 아래와 같은 방법 중에서 회원님께서 이용 가능한 방법을 통해 찾을 수 있습니다.</strong>
										        링고 메인 우측 상단에 위치한 로그인 박스 안의 [아이디 찾기]를 선택하여,
												회원 정보 상의 휴대폰 번호나 이메일 주소를 확인하여 아이디 찾기가 가능하며,
												<a href="#" style="color: skyblue">[ 바로가기 ]</a> 를 클릭하시면 아이디 찾기 페이지로 이동합니다.
										      </div>
										    </div>
										  </div>
										  <div class="accordion-item">
										    <h2 class="accordion-header">
										      <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#collapseTwo" aria-expanded="false" aria-controls="collapseTwo">
										       <i class="fa-solid fa-q"></i>. 비밀번호 분실 시 어떻게 하나요?
										      </button>
										    </h2>
										    <div id="collapseTwo" class="accordion-collapse collapse" data-bs-parent="#accordionExample">
										      <div class="accordion-body">
										      <i class="fa-solid fa-a"></i> <strong>. 비밀번호를 분실하셨을 경우에는 아래와 같은 방법 중에서 회원님께서 이용 가능한 방법을 통해 찾을 수 있습니다.</strong>
										        링고 메인 우측 상단에 위치한 로그인 박스 안의 [비밀번호 찾기]를 선택하여,
												회원 정보 상의 휴대폰 번호나 이메일 주소를 확인하여 비밀번호 재설정이 가능하며,
												중복가입 확인 정보로 비밀번호 재설정 할 수 있습니다.
												<a href="#" style="color: skyblue">[ 바로가기 ]</a> 를 클릭하시면 비밀번호 찾기 페이지로 이동합니다.
										      </div>
										    </div>
										  </div>
										  <div class="accordion-item">
										    <h2 class="accordion-header">
										      <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#collapseThree" aria-expanded="false" aria-controls="collapseThree">
										       <i class="fa-solid fa-q"></i>. 개명을 했는데, 이름 변경은 어떻게 하나요?
										      </button>
										    </h2>
										    <div id="collapseThree" class="accordion-collapse collapse" data-bs-parent="#accordionExample">
										      <div class="accordion-body">
										      	<i class="fa-solid fa-a"></i> <strong>. 이름을 개명한 경우 [마이페이지]의 회원정보 수정에서 이름을 변경할 수 있습니다.</strong>
										      	로그아웃 상태라면, 링고 메인 우측 상단에 위치한 로그인 후 사용하실 수 있습니다. 단, 회원님의 개명 후 이름이 신용평가기관에 등록되어 있는 경우, 즉시 이름이 변경됩니다. 
												<a href="#" style="color: skyblue">[ 바로가기 ]</a> 를 클릭하시면 회원정보 수정 페이지로 이동합니다.
										      </div>
										    </div>
										  </div>
										  <div class="accordion-item">
										    <h2 class="accordion-header">
										      <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#collapseFour" aria-expanded="false" aria-controls="collapseFour">
										        <i class="fa-solid fa-q"></i>. 개인정보 보호관리가 되는지 궁금해요.
										      </button>
										    </h2>
										    <div id="collapseFour" class="accordion-collapse collapse" data-bs-parent="#accordionExample">
										      <div class="accordion-body">
										       <i class="fa-solid fa-a"></i> <strong>. 링고는 개인정보보호법에 따라 이용자의 개인정보 보호 및 권익을 보호하고 개인정보와 관련한 이용자의 고충을 원활하게 처리할 수 있도록 다음과 같은 처리 방침을 두고 있습니다.
										        이 개인정보처리방침은 시행일로부터 적용되며, 법령 및 방침에 따른 변경내용의 추가, 삭제 및 정정이 있는 경우에는 개별 웹사이트 및 공지사항을 통하여 공지 할 것입니다.</strong><br><br>
										        제1조 개인정보의 처리목적, 개인정보의 처리 및 보유기간, 처리하는 개인정보의 항목<br>
												1. 개인정보의 처리 목적<br>
												시스템은 개인정보를 다음의 목적이외의 용도로는 이용하지 않으며 이용 목적이 변경될 경우에는 동의를 받아 처리하겠습니다.<br>
												가. 회원가입 및 관리<br>
												회원 서비스 이용에 따른 본인확인, 개인 식별, 불만처리 등 민원처리, 고지사항 전달 등을 목적으로 개인정보를 처리합니다.<br>
												나. 교육 관련 서비스 제공<br>
												교육 참여 및 연계, 프로그램 정보·교육정보 제공, 만족도 조사, 이벤트 참여, 접속빈도 파악 또는 서비스 이용에 대한 통계 등을 목적으로 개인정보를 처리합니다.<br>
												다. 민원처리<br>
												개인정보 열람, 개인정보 정정·삭제, 개인정보 처리정지 요구, 개인정보유출사고 신고, 개인정보 침해 사실 신고 접수·처리, 스팸민원고충처리, 해킹신고 등 민원처리를 목적으로 개인정보를 처리합니다.<br>
												2. 개인정보의 처리 및 보유기간<br>
												이용자 개인정보는 원칙적으로 개인정보의 처리목적이 달성되면 지체 없이 파기합니다.<br>
												3. 홈페이지에서 운영하는 보안조치<br>
												홈페이지의 보안 또는 지속적인 서비스를 위해, 시스템은 네트워크 트래픽의 통제(Monitor)는 물론 불법적으로 정보를 변경하는 등의 시도를 탐지하기 위해 여러 가지 보안프로그램을 운영하고 있습니다.<br>
												4. 링크, 배너<br>
												시스템 내 링크 또는 배너를 클릭하여 내부 또는 외부기관 홈페이지로 옮겨갈 경우 해당 홈페이지는 해당사이트에서 게시한 개인정보 처리방침이 적용되므로 방문한 해당 홈페이지의 개인정보 처리방침을 확인하시기 바랍니다.<br>
												5. 처리하는 개인정보 항목 및 수집방법<br>
												6. 동의거부 권리 및 불이익 내용<br>
												개인정보보호법 제15조에 따라서 개인정보 수집에 동의를 거부할 수 있으며, 필수항목을 입력하지 않을 경우 회원가입이 불가하며, 선택항목을 입력하지 않을 경우 링고시스템을 이용할 수 없습니다.
										      </div>
										    </div>
										  </div>
										</div>
									</table>
								</form>
								</div>
							</div>
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
	</div>


</body>
</html>