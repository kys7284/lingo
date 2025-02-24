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

<title>list</title>

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
	href="${path}/resources/css/shareInfo/travelList.css">


<script type="text/javascript">
	$(function() {
		$("#btnInsert").click(function() {
<%if (session.getAttribute("sessionId") == null) {%>
	alert("로그인이 필요합니다 !");
			location.href = "${path}/login.do"
<%} else {%>
	location.href = "${path}/travel_board_insert.tc"
<%}%>
	});

		$("#btnSearch").click(function() {
			const category = $("#tb_category").val();
			if (category == "") {
				alert("카테고리를 입력해주세요 ! !");
				return false;
			}
			document.travel_boardList.action = "${path}/travel_search.tc"
			document.travel_boardList.submit();
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
					style="background-image: url('${path}/resources/images/travel.jpg'); background-size: cover; background-position: center; height: 300px;">
					<br> <br> <br>
					<h1 align="center" style="padding-bottom: 50px;">여행정보</h1>

					<span
						style="display: flex; justify-content: center; font-weight: bold;">여러분의
						여행을 공유해주세요</span>
				</div>
				<!-- 상단 중앙2 시작 -->

				<div id="section2">
					<!-- 왼쪽메뉴시작 -->
					<div id="side_menu">

						<h2>여행정보</h2>

						<br> <br>

						<ul>
							<li><a href="${path}/travelInfo.tc"> 나의 여행 </a></li>
						</ul>

						<ul>
							<li><a href="${path}/findSpot.tc"> 여행지 찾기 </a></li>
						</ul>

					</div>
					<!-- 왼쪽메뉴 끝 -->
					<!-- 우측 메뉴 시작 -->
					<div id="right">
						<div class="board_list">
							<form name="travel_boardList">
								<div class="travel_boardList">
									<div class="search-container">
										<select name="tb_category" id="tb_category">
											<option value="">카테고리선택</option>
											<option value="여행">여행</option>
											<option value="음식">음식</option>
											<option value="숙소">숙소</option>
											<option value="관광명소">관광명소</option>
											<option value="기타">기타</option>
										</select>
										<button class="search-button" type="button" value="검색"
											id="btnSearch">
											<i class="fa-solid fa-magnifying-glass"></i>
										</button>
										
										<br>
									</div>
									<br>
									<div class="table_div">
										<table>
											<thead>
												<tr>
													<th
														style="background-color: #06BBCC !important; color: white !important; width: 25%;">작성자</th>
													<th
														style="background-color: #06BBCC !important; color: white !important; width: 35%;">[카테고리]
														글제목 [댓글수]</th>
													<th
														style="background-color: #06BBCC !important; color: white !important; width: 25%;">작성일</th>
													<th
														style="background-color: #06BBCC !important; color: white !important; width: 5%;">조회수</th>
												</tr>
											</thead>

											<tbody>
												<c:forEach var="dto" items="${travelList}">
													<tr>
														<td>${dto.tb_writer}</td>
														<td class="text-center"><a
															href="${path}/travelDetailAction.tc?tb_num=${dto.tb_num}&pageNum=${paging.pageNum}">
																<span style="color: black">[${dto.tb_category}]</span>
																${dto.tb_title} <span style="color: red">[${dto.tb_comment_count}]</span>
														</a></td>
														<td>${dto.tb_regDate}</td>
														<td>${dto.tb_readCnt}</td>
													</tr>
												</c:forEach>
											</tbody>
											<tfoot>
												<tr>
													<td colspan="4" class="text-center"><c:if
															test="${paging.startPage > 10}">
															<a href="${path}/travelInfo.tc?pageNum=${paging.prev}">[이전]</a>
														</c:if> <c:forEach var="num" begin="${paging.startPage}"
															end="${paging.endPage}">
															<a href="${path}/travelInfo.tc?pageNum=${num}">${num}</a>
														</c:forEach> <c:if test="${paging.endPage < paging.pageCount}">
															<a href="${path}/travelInfo.tc?pageNum=${paging.next}">[다음]</a>
														</c:if></td>
												</tr>
											</tfoot>
										</table>
									</div>
									<br>
									<div style="text-align: center;">
										<input type="button" class="inputButton" value="글쓰기"
											id="btnInsert">
									</div>
									<br>
								</div>
							</form>

						</div>

					</div>
					<!-- 우측 메뉴 종료 -->
				</div>
				<!-- 상단 중앙2 종료 -->



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
	</div>
</body>
</html>