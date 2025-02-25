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

<title>notice</title>
    
<!-- css  -->
<!-- 기존설정 그대로 -->
	    <meta charset="utf-8">
	    <title>Lingo 1</title>
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
	<link rel="stylesheet" href="${path}/resources/css/common/madang.css">

<script type="text/javascript">
	$(function(){	
		
		// [게시글 목록 버튼] 클릭시 컨트롤러의 목록으로 이동 
		$("#btnList").click(function(){
			location.href="${path}/notice_list.no";
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
				
				<!-- 상단 중앙1 시작  -->
				<div id="section1"
					style="background-image: url('${path}/resources/images/megaphone.png'); background-color: #D3ECF1; background-size:50% auto; background-position: 200px center; height: 280px; background-repeat: no-repeat;">
					<br> <br>
					<h1 align="center">공지사항</h1>
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
							<li><a href="${path}/harmInsert.hr">신고 센터</a></li>
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
									<form name="detailForm" method="post">
								<table>

									<tr>
										<th style="width: 200px">번호</th>
										<td style="width: 200px" style="text-align:center"> ${dto.notice_num}</td>
										
										<th style="width: 200px">조회수</th>
										<td style="width: 200px" style="text-align:center"> ${dto.notice_readCnt}</td>
									</tr>
									
									<tr>
										<th style="width: 200px">작성자</th>
										<td colspan="3" style="width: 200px; text-align:center"> ${dto.notice_writer}</td>
									</tr>
									
									<tr>
										<th style="width: 200px">글제목</th>
										<td colspan="3" style="text-align:center"> ${dto.notice_title} </td>
									</tr>
									
									<tr>
										<th style="width: 200px">내용</th>
										<td colspan="3"  style="text-align:center"> ${dto.notice_content} </td>
									</tr>
									
									<tr>
										<th style="width: 200px">작성일</th>
										<td colspan="3"  style="text-align:center"> ${dto.notice_regDate}</td>
									</tr>
									
									<tr>
										<td colspan="6" align="center">
											<input type="button" class="inputButton" value="목록" id="btnList">
                                            <input type="hidden" name="hidden_notice_num" value="${dto.notice_num}">
										</td>
									</tr>
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