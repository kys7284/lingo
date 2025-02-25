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

<title>notice 1</title>
    
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
<script src="${path}/resources/js/report/harmReport.js" defer></script> 

	<link rel="stylesheet" href="${path}/resources/css/common/madang.css">
<script type="text/javascript">

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
					style="background-image: url('${path}/resources/images/report.jpg');background-color: #B6EBFF; background-size:auto; background-position: top; height: 250px; background-repeat: no-repeat;">
					<br><br><br><br><br>
					<h1 align="center">신고 센터</h1>
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
						

						<div id="display">
							<!-- 결과출력 위치 -->

							<div id="s2_inner">
								<div class="join">
	
							<form id="harmForm" action="harmReportInsert.hr" method="post">
							<h1>무엇이 불편하세요?</h1>
							<table class="join">
								<tr>
									<th>게시글 번호</th>
									<td><input class="textarea" type="text" id="harm_report_num" name="harm_report_num" ></td>
									<td><input type="button" id="numBtn" value="입력"></td>
								</tr>	
								
								<tr>
									<th>게시글 제목</th>
									<td>
										<c:if test="${selectCnt == 1}">
											<c:if test="${map.FB_TITLE != null}">
												<input type=text name="harm_report_title" value="${map.FB_TITLE}" readonly>	
												<input type="hidden" name="board_writer" value="${map.FB_WRITER }">				
											</c:if>
										</c:if>	
										<c:if test="${selectCnt != 1 && selectCnt != null}">
											<script type="text/javascript">
												alert("일치하는 게시글이 없습니다")
											</script>
										</c:if>
									</td>
								</tr>	
								<tr>
									<th>신고 유형</th>
									<td>
										<select name="harm_report_category" required>
											<option value="0">신고유형을 골라주세요</option>
											<option value="pornoGraphy">음란물</option>
											<option value="hatePost">혐오게시글</option>
											<option value="disInfo">허위사실유포</option>
											<option value="serviceError">서비스장애/오류</option>
										</select>
									</td>
								</tr>
								
								<tr>
									<th>신고내용</th>
									<td>
										<textarea class="textarea" rows="4" cols="50" name="harm_report_content" required></textarea>
									</td>
								</tr>
							
								<tr>
									<td colspan="2" style="border-bottom: none">
									<br>
									<div align="center">
									<c:if test="${sessionScope.sessionId != null}">
										<input class="inputButton" id="rptBtn" type="submit" value="신고등록" >
									</c:if>	
									
									<c:if test="${sessionScope.sessionId == null}">
										<input class="inputButton" type="button" value="로그인" onclick="window.location='${path}/login.do'">
									</c:if>	
									
										<input class="inputButton" type="reset" value="초기화" >
									
										<input class="inputButton" type="button" id="backBtn" value="뒤로가기" >
									</div>		
									
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