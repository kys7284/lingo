<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="/WEB-INF/views/common/setting.jsp" %>        
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
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
    
    <!-- 디테일 css  -->
    <link href="${path}/resources/css/board/board.css" rel="stylesheet">

<script type="text/javascript">
	$(function() {
		
		$("#btnEdit").click(function() {
			
			const password = $("#tb_password").val();
			const category = $("#tb_category").val();
			const title = $("#tb_title").val();
			const content = $("#tb_content").val();
			
			if(password == ""){
				alert("수정하실 비밀번호를 입력해주세요 ! !");
				$("#tb_password").focus();
				return false
			}
			
			if(category == ""){
				alert("카테고리를 선택해주세요 ! !");
				$("#tb_category").focus();
				return false
			}
			
			if(title == ""){
				alert("제목을 입력해주세요 ! !");
				$("#tb_title").focus();
				return false
			}
			
			if(content == ""){
				alert("내용을 입력해주세요 ! !");
				$("#tb_content").focus();
				return false
			}
		
			document.travel_detailForm.action="${path}/travelBoard_updateAction.tc";
			document.travel_detailForm.submit();
		});
		
		$("#btnDelete").click(function() {
			let result = confirm("정말 해당 게시글을 삭제하시겠습니까 ?");
			if(result){
				document.travel_detailForm.action="${path}/travelBoard_deleteAction.tc"
				document.travel_detailForm.submit();
			}
		})
		
		$("#btnList").click(function() {
			alert("목록으로 이동합니다");
			location.href="${path}/travelInfo.tc"
		});
	});		
</script>
<title>travelBoard_edit</title>
</head>
<body>
<div class="wrap">
		<!-- header 시작 -->
		<%@include file="/WEB-INF/views/common/header.jsp" %>
		<!-- header 끝 -->
		
		<!-- 컨텐츠 시작 -->
		<div id="container">
			<div id="contents">
				<!-- 상단 중앙1 시작 -->
				<div>
					<h1 align="center"> ${dto.tb_title}</h1>
				</div>				
				<!-- 상단 중앙1 종료 -->

				<!-- 상단 중앙2 시작 -->
				<div id="section2">
					
					<!-- 왼쪽메뉴시작 -->
					<div id="side_menu">
	
						<h2>여행정보</h2>

						<br><br>

						<ul>
							<li><a href="${path}/travelInfo.tc"> 나의 여행 </a></li>
						</ul>
	
						<ul>
							<li><a href="#"> 여행지 찾기 </a></li>
						</ul>
						
					</div>
					<!-- 왼쪽메뉴 끝 -->
					
					<!-- 우측메뉴 시작 -->
						<div id="right">
							<div class="table_div">
								<form name="travel_detailForm" method="post" enctype="multipart/form-data">
									<table class="detail_table">
									<!-- hidden : 직접 input박스에서 입력받지 못한 값들을 전달할 때 사용 -->
									
										
									<tr style="border: 1px solid;">
										<th style="width: 200px; border-right: 1px solid;">글번호</th>
										<td style="width: 200px; border-right: 1px solid;" style="text-align:center"> ${dto.tb_num} </td>
										
										<th style="width: 200px; border-right: 1px solid;">조회수</th>
										<td style="width: 200px;" style="text-align:center"> ${dto.tb_readCnt} </td>
									</tr>
									
									<tr style="border: 1px solid; border-right: 1px solid;">
										<th style="width: 200px; border-right: 1px solid;">작성자</th>
										<td style="width: 200px; border-right: 1px solid;" style="text-align:center"> ${dto.tb_writer} </td>
										
										<th style="width: 200px; border-right: 1px solid;">비밀번호</th>
										<td style="width: 200px" style="text-align:center" > 
											<input style="width: 200px" type="password" class="input" name="tb_password" 
												id="tb_password" size="30" placeholder="비밀번호 입력" required autofocus> 
										</td>
									</tr>
									
									<tr style="border: 1px solid;">
										<th style="width: 200px; border-right: 1px solid;">카테고리</th>
										<td colspan="3" style="text-align:center"> 
											<select name="tb_category" id="tb_category"> 
												<option value="">카테고리선택</option>
												<option <c:if test="${dto.tb_category == '여행'}">selected</c:if> value="여행">여행</option>
												<option <c:if test="${dto.tb_category == '음식'}">selected</c:if> value="음식">음식</option>
												<option <c:if test="${dto.tb_category == '숙소'}">selected</c:if> value="숙소">숙소</option>
												<option <c:if test="${dto.tb_category == '관광명소'}">selected</c:if> value="관광명소">관광명소</option>
												<option <c:if test="${dto.tb_category == '기타'}">selected</c:if> value="기타">기타</option>
											</select>
										</td>
									</tr>
									
									<tr style="border: 1px solid;">
										<th style="width: 200px; border-right: 1px solid;">글제목</th>
										<td colspan="3" style="text-align:center">  
											<input type="text" name="tb_title" id="tb_title" value="${dto.tb_title}">
										</td>
									</tr>
									
									<tr style="border: 1px solid;">
										<th style="width: 200px; border-right: 1px solid;">내용</th>
									
										<!-- 이미지가 null이 아닐때 사진과 함께 표시 -->
										<td colspan="3"  style="text-align:center; ">
											<div style="display:flex; flex-wrap: wrap;">
											<div style="width:100%">
											<textarea rows="10" cols="60" name="tb_content" id="tb_content"> ${dto.tb_content}</textarea></div></div>
										</td>
									</tr>
									
									<tr>
										<th>사진업로드</th>
										<td> 
											<img src="${dto.tb_img}" style="width:200px"><br>
											<input type="file" class="input" id="tb_img" name="tb_img" accept="image/*">
										</td>
									</tr>
																		
									<tr style="border: 1px solid;">
										<th style="width: 200px; border-right: 1px solid;">작성일</th>
										<td colspan="3"  style="text-align:center"> ${dto.tb_regDate} </td>
									</tr>
									
									<tr style="border: 1px solid;">
										<td colspan="4" align="center">
											<!-- 게시글번호 hidden 추가 : input이 없으므로(게시글번호는 입력받지않는다 input 없음) -->
											<input type="hidden" name="hiddenPageNum" value="${pageNum}">
											<input type="hidden" name="hidden_tb_num" value="${dto.tb_num}">
											<input type="hidden" name="hidden_tb_img" value="${dto.tb_img}">
											<input type="button" class="inputButton" value="수정하기" id="btnEdit">
											<input type="button" class="inputButton" value="삭제하기" id="btnDelete">
											<input type="button" class="inputButton" value="목록으로" id="btnList">
										</td>
									</tr>
									</table>
									</form>
									</div>
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
</body>
<script>
translate.service.use('client.edge'); //번역기 사용   참조: http://translate.zvo.cn/43086.html
translate.selectLanguageTag.show = false;// 기본 언어선택창 숨김  (true: 표시)
translate.execute();//번역시작
</script>
</html>