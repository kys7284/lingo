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

	<link rel="stylesheet" href="${path}/resources/css/board/boardDetail.css">

<script type="text/javascript">
	$(function() {	// 상세페이지가 로딩되면
		// [게시글 목록 버튼] 클릭시 컨트롤러의 목록으로 이동
		$("#btnList").click(function() {
			location.href="${path}/free_board_list.fb";
		});
	
		// [게시글 수정 버튼] 클릭시 [게시글 수정 화면]버튼
		$("#btnEdit").click(function() {
			
			const password = $("#fb_password").val();
			const title = $("#fb_title").val();
			const content = $("#fb_content").val();
			
			
			if(password == "") {
				 alert("비밀번호를 입력하세요 !"); 				
				$("#fb_password").focus();
				return false;
			}
			if(title == "") {
				alert("글 제목을 입력하세요 !");
				$("#fb_title").focus();
				return false;
			}
			if(content == "") {
				alert("글 내용을 입력하세요 !");
				$("#fb_content").focus();
				return false;
			}
			
			document.editForm.action="${path}/free_board_updateAction.fb";
			document.editForm.submit();
		});
		
		// [게시글 삭제 버튼] 클릭시 [게시글 삭제 화면]버튼
		$("#btnDelete").click(function() {
			document.editForm.action="${path}/free_board_deleteAction.fb";
			document.editForm.submit();
		});
	});

</script>
</head>
<body>
	<div class="wrap">
		<!-- header 시작 -->
		<%@ include file="/WEB-INF/views/common/header.jsp"%>
		<!-- header 끝 -->
	
	
		<!-- 컨텐츠 시작 -->
		<div id="container">
			<div id="contents">
				<!-- 상단 중앙1 시작 -->
				<div>
					<div id="section1"
					style="background-image: url('${path}/resources/images/to.jpg'); background-size: 117%; background-position: center; height: 300px;">
					<br> <br><br><br><br>
					<h1 align="center"  style="color:white">게시판 수정/삭제 페이지</h1>
				</div>
				<!-- 상단 중앙1 종료 -->
				
				<!-- 상단 중앙2 시작 -->
				<div id="section2">
					<!-- 우측 메뉴 시작 -->
						<div id="right">
							<div class="table_div">
								<form name="editForm" method="post" enctype="multipart/form-data">
									<table>
										<tr>
											<th style="width: 200px">글번호</th>
											<td style="width: 200px; text-align:center">${dto.fb_num}</td>
											
											<th style="width: 200px">조회수</th>
											<td style="width: 200px; text-align:center">${dto.fb_readCnt}</td>
										
										</tr>
										
										<tr>
											<th style="width: 200px">작성자</th>
											<td style="width: 200px; text-align:center">${dto.fb_writer}</td>
											
											<th style="width: 200px">비밀번호</th>
											<td style="width: 200px; text-align:center">
												<input style="width:200px" type="password" class="input" name="fb_password" id="fb_password" size="30" placeholder="비밀번호 입력" required autofocus>
											</td>
										
										</tr>
										
										<tr>
											<th style="width: 200px">글제목</th>
											
											<td colspan="3" style="text-align:center">
												<input style="width: 700px" type="text" class="input" name="fb_title" 
														id="fb_title" size="50" value="${dto.fb_title}" placeholder="글제목 입력" required>
											</td>
										</tr>
										
										<tr>
											<th style="width: 200px">글내용</th>
											<td colspan="3" style="text-align:center">
												<textarea class="textarea" rows="5" cols="93" name="fb_content" id="fb_content">${dto.fb_content}</textarea>
											</td>
										</tr>
										
										<tr>
											<th>이미지</th>
												<td  colspan="3"  style="text-align:center; "> 
												<img src="${dto.fb_img}" style="width:200px"><br>
												<input type="file" class="input" id="fb_Img" name="fb_Img" accept="image/*">
												</td>
										</tr>
										
										<tr>
											<th style="width: 200px">작성일</th>
											<td colspan="3" style="text-align:center">${dto.fb_regDate}</td>
											
										</tr>

																				
										<tr>
											<td colspan="4" align="center">
												<input type="hidden" name="hidden_fb_num" value="${dto.fb_num}">
												<input type="hidden" name="hiddenPageNum" value="${pageNum}">
												<input type="hidden" name="hidden_fb_img" value="${dto.fb_img}">
												<input type="button" class="inputButton" value="수정" id="btnEdit">
												<input type="button" class="inputButton" value="삭제" id="btnDelete">
												<input type="button" class="inputButton" value="목록" id="btnList">
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