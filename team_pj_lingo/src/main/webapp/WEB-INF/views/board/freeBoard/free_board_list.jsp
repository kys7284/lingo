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

<title>free_board</title>

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
	$(function(){
		$("#btnInsert").click(function(){
			location.href="${path}/free_board_insert.fb"	
		});
	});
</script>

</head>
<body>
<div class="wrap">
   <!-- header 시작 -->
   <%@include file="/WEB-INF/views/common/header.jsp" %> 
   <!-- header 끝    -->

   <!-- 컨텐츠 시작 -->
		<div id="container">
			<div id="contents">
				<!-- 상단 중앙1 시작 -->
				<div>
					<h1 align="center">게시판 목록</h1>
				</div>				
				<!-- 상단 중앙1 종료 -->

				<!-- 상단 중앙2 시작 -->
				<div id="section2">
					
					<!-- 우측 메뉴 시작 -->
						<div id="right">
							<div class="table_div">
								
								<form name="free_boardList">
									<table>

										<tr>
											<th style="width:10%">글번호</th>
											<th style="width:10%">작성자</th>
											<th style="width:15%">글제목 [댓글수]</th>
											<th style="width:10%">이미지</th>
											<th style="width:10%">작성일</th>
											<th style="width:5%">조회수</th>
										</tr>
										
										<!-- 게시글이 있으면  -->
										
											<c:forEach var="dto" items= "${freeBoardList}">											
												<tr>
													<td>${dto.fb_num}</td>
													<td>${dto.fb_writer}</td>
													<td>
														<a href="${path}/freeDetailAction.fb?fb_num=${dto.fb_num}">${dto.fb_title} <span style="color: red">[ ${dto.fb_comment_count} ]</span></a>
													</td>
													<td>
														<img src="${dto.fb_img}" width="100px"> 
													</td>
													<td>${dto.fb_regDate}</td>
													<td>${dto.fb_readCnt}</td>
												</tr>
											</c:forEach>
											<tr>
												<td colspan="6" align="center">
													<!-- 페이징처리 -->
													<!-- 이전 버튼 활성화 -->
													<c:if test="${paging.startPage > 10}">
														<a href="${path}/free_board_list.fb?pageNum=${paging.prev}">[이전]</a>
													</c:if>
													
													<!-- 페이지 번호 처리 -->
													<c:forEach var="num" begin="${paging.startPage}" end="${paging.endPage}">
														<a href="${path}/free_board_list.fb?pageNum=${num}">${num}</a>
													</c:forEach>
													<!-- 다음 버튼 활성화 -->
													<c:if test="${paging.endPage < paging.pageCount}">
														<a href="${path}/free_board_list.fb?pageNum=${paging.next}">[다음]</a>
													</c:if>
												</td>
											</tr>
											<tr>
												<td colspan="6" align="center">
													<input type="button" class="inputButton" value="글쓰기" id="btnInsert">
												</td>
											</tr>
									</table>
								</form>
							</div>
						</div>
					<!-- 우측 메뉴 종료 -->
				</div>
				<!-- 상단 중앙2 종료 -->
			</div>
		</div>
      <!-- 컨텐츠 끝 -->
      

      <!-- footer 시작 -->
      <%@include file="/WEB-INF/views/common/footer.jsp" %>
      <!-- footer 끝 -->
      
      	<!-- Back to Top -->
    <a href="#" class="btn btn-lg btn-primary btn-lg-square back-to-top"><i class="bi bi-arrow-up"></i></a>

    <!-- JavaScript Libraries -->
    <script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/js/bootstrap.bundle.min.js"></script>
    <script src="${path}/resources/css/common/lib/wow/wow.min.js"></script>
    <script src="${path}/resources/css/common/lib/easing/easing.min.js"></script>
    <script src="${path}/resources/css/common/lib/waypoints/waypoints.min.js"></script>
    <script src="${path}/resources/css/common/lib/owlcarousel/owl.carousel.min.js"></script>

    <!-- Template Javascript -->
    <script src="${path}/resources/js/main.js"></script>
   </div>
</body>
</html>