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
		travel_comment_list();
		
		$('#btnCommentSave').click(function() {
			travel_comment_add();
		});
		// 댓글쓰기 버튼 클릭(2)
		function travel_comment_add(){
			
			//게시글번호, 댓글작성자,댓글 내용 파라미터로 넘김
			let param = {
					"travelboard_num" : ${dto.tb_num},	// key:value => 댓글번호: 게시글번호
					"writer": $('#tb_writer').val(),
					"content": $('#tb_content').val()
			}
			
			$.ajax({
				url:'${path}/insertComment.tc',	//컨트롤러로 이동(3)
				type:'POST',
				data: param,
				success:function(){		//콜백함수(6)=> 댓글쓰기가 완료되면 서버에서 콜백함수 호출
					$('#tb_writer').val("");
					$('#tb_content').val("");
					travel_comment_list();		//댓글목록 새로고침(7)
				},
				error:function() {
					alert('댓글 내용을 입력하세요 !');
				}
			});
		}
		/* 댓글목록 */
		function travel_comment_list(){
			//alert("travel_comment_list");
			
			$.ajax({
				url:'${path}/travel_comment_list.fb',
				type:'POST',
				data:'tb_num=${dto.tb_num}',
				success:function(result){
					$('#travelCommentList').html(result);
				},
				error:function(){
					alert(error);
				}
			});
		} 
	});
</script>
<title>travelBoard_detail</title>
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
								<form name="travel_detailForm" method="post">
									<table class="detail_table">
									<!-- hidden : 직접 input박스에서 입력받지 못한 값들을 전달할 때 사용 -->
									<input type="hidden" name="hiddenPageNum" value="${pageNum}">
									<input type="hidden" name="hidden_tb_num" value="${dto.tb_num}">
									<input type="hidden" name="hidden_tb_img" value="${dto.tb_img}">
										
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
											<c:if test="${param.message == 'error'}">
												<br><span style="color:red">비밀번호 불일치 ! !</span> 
											</c:if>
										</td>
									</tr>
									
									<tr style="border: 1px solid;">
										<th style="width: 200px; border-right: 1px solid;">카테고리</th>
										<td colspan="3" style="text-align:center"> ${dto.tb_category} </td>
									</tr>
									
									<tr style="border: 1px solid;">
										<th style="width: 200px; border-right: 1px solid;">글제목</th>
										<td colspan="3" style="text-align:center"> ${dto.tb_title} </td>
									</tr>
									
									<tr style="border: 1px solid;">
										<th style="width: 200px; border-right: 1px solid;">내용</th>
										<!-- 이미지가 null이 아닐때 사진과 함께 표시 -->
										
										<c:if test="${dto.tb_img != null}">
										<td colspan="3"  style="text-align:center; "><div style="display:flex; flex-wrap: wrap;"><img src="${dto.tb_img}" style="width:200px; margin:0 auto;"><div style="width:100%">${dto.tb_content}</div></div></td>
										</c:if>
										<!-- 이미지가 null일떄 표시 -->
										<c:if test="${dto.tb_img == null}">
										<td colspan="3" style="text-align:center">${dto.tb_content} </td>
										</c:if>
									</tr>
									
									<%-- <tr style="border: 1px solid;">
										<th style="border-right: 1px solid;">이미지</th>
										<td colspan="2" style="120px; "> 
											<img src="${dto.tb_img}" style="width:200px;"><br>
										</td>
									</tr> --%>
									
									<tr style="border: 1px solid;">
										<th style="width: 200px; border-right: 1px solid;">작성일</th>
										<td colspan="3"  style="text-align:center"> ${dto.tb_regDate} </td>
									</tr>
									
									<tr style="border: 1px solid;">
										<td colspan="4" align="center">
											<!-- 게시글번호 hidden 추가 : input이 없으므로(게시글번호는 입력받지않는다 input 없음) -->
											<input type="hidden" name="hidden_tb_num" value="${dto.tb_num}">  
											<input type="button" class="inputButton" value="수정/삭제" id="btnEdit">
											<input type="button" class="inputButton" value="목록" id="btnList">
										</td>
									</tr>
									</table>
									</div>
									<br><br>
									
									<!-- 댓글 목록 코드 -->
									<div id="travelCommentList" align="center">
									
									<!-- 댓글 목록 -->
									
									</div>
									<hr><br><br>
									<!-- 댓글 입력 코드 -->
									<table>
										<!-- 로그인시에만 댓글입력란이 보임 -->
										<c:if test="${! empty sessionScope.sessionId}">
										<tr>
											<th style="width: 200px; ">아이디</th>
											<td style="width: 200px; text-align:left"> 
												<input style="width: 200px" type="text" class="input" 
												name="tb_writer" id="tb_writer" size="30" value="${sessionScope.sessionId}" placeholder="${sessionScope.sessionId}" readonly>
											</td>
											<th style="width: 40px" rowspan="2" align="right"> 
												<input type="button" class="inputButton" value="작성" id="btnCommentSave">
											</th>
										</tr>
										
										<tr>
											<th style="width: 200px; border-top: 1px solid black;"> 글 내용</th>
											<td style="width: 170px" style="text-align:center">
												<textarea style="width:600px" rows="5" cols="93" name="tb_content" id="tb_content" placeholder="댓글입력"></textarea>
											</td>
										</tr>	
										</c:if>		
										<!--  -->						
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
</body>
<script>
translate.service.use('client.edge'); //번역기 사용   참조: http://translate.zvo.cn/43086.html
translate.selectLanguageTag.show = false;// 기본 언어선택창 숨김  (true: 표시)
translate.execute();//번역시작
</script>
</html>