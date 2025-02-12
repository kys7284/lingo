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

	<link rel="stylesheet" href="${path}/resources/css/common/board.css">

<script type="text/javascript">
	$(function(){	//(jQuery)상세페이지가 로딩되면
		//(jQuery)상세페이지가 로딩되면 자동으로 댓글목록 호출
		free_comment_list();
	
		//[댓글쓰기 버튼 클릭(1)]
		$('#btnCommentSave').click(function() {
				<%
					if(session.getAttribute("sessionId") == null)	{
				%>
					alert("로그인이 필요합니다 !");
					location.href="${path}/login.do"
				
				<%
					}	else	{
				%>
				
						free_comment_add();
				
				<%
						}
				%>
				
			});
		
		
		 //[게시글 수정/삭제 버튼] 클릭시 [게시글 수정/삭제 화면]으로 이동 (컨트롤러에서 패스워드 체크 후)
		$("#btnEdit").click(function() {
			document.detailForm.action="${path}/password_chkAction.fb";
			document.detailForm.submit();
		});
		//[게시글 목록 버튼] 클릭시 컨트롤러의 목록으로 이동 
		$("#btnList").click(function(){
			location.href="${path}/free_board_list.fb";
		});
	});
	
	// 댓글쓰기 버튼 클릭(2)
	function free_comment_add(){
		// alert('free_comment_add()');
		
		//게시글번호, 댓글작성자,댓글 내용 파라미터로 넘김
		let param = {
				"freeboard_num" : ${dto.fb_num},	// key:value => 댓글번호: 게시글번호
				"writer":  $('#fb_writer').val(),
				"content": $('#fb_content').val()
		}
		
		$.ajax({
			url:'${path}/insertComment.fb',	//컨트롤러로 이동(3)
			type:'POST',
			data: param,
			success:function(){		//콜백함수(6)=> 댓글쓰기가 완료되면 서버에서 콜백함수 호출
				$('#fb_writer').val("");
				$('#fb_content').val("");
				free_comment_list();		//댓글목록 새로고침(7)
			},
			error:function() {
				alert('댓글 내용을 입력하세요 !');
			}
		});
	}
	
	//댓글 목록
	function free_comment_list(){	//(8)
		//alert('free_comment_list()');
	
		$.ajax({
			url: '${path}/free_comment_list.fb', //컨트롤러로 이동(9)
			type: 'POST',
			data: 'freeboard_num=${dto.fb_num}',
			
			success:function(result){	//콜백함수(13)=> result는 comment_list.jsp(컨트롤러에서 넘긴)	
				$('#freeCommentList').html(result);	// div id가 free_commentList인 자리에 댓글 리스트페이지 출력
			},
			error:function() {
				alert('error');
			}
		});
	}
</script>

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
					<h1 align="center">게시판 상세페이지</h1>
				</div>				
				<!-- 상단 중앙1 종료 -->

				<!-- 상단 중앙2 시작 -->
				<div id="section2">
					
					<!-- 우측 메뉴 시작 -->
						<div id="right">
							<div class="table_div">
								<form name="detailForm" method="post" >
									<table>
									
									<!-- hidden : 직접 input박스에서 입력받지 못한 값들을 전달할 때 사용 -->
									<input type="hidden" name="hiddenPageNum" value="${pageNum}">
									<input type="hidden" name="hidden_fb_num" value="${dto.fb_num}">
									<input type="hidden" name="hidden_fb_img" value="${dto.fb_img}">
									
										<tr>
											<th style="width: 200px">글번호</th>
											<td style="width: 200px" style="text-align:center"> ${dto.fb_num} </td>
											
											<th style="width: 200px">조회수</th>
											<td style="width: 200px" style="text-align:center"> ${dto.fb_readCnt} </td>
										</tr>
										
										<tr>
											<th style="width: 200px">작성자</th>
											<td style="width: 200px" style="text-align:center"> ${dto.fb_writer} </td>
											
											<th style="width: 200px">비밀번호</th>
											<td style="width: 200px" style="text-align:center"> 
												<input style="width: 200px" type="password" class="input" name="fb_password" 
													id="fb_password" size="30" placeholder="비밀번호 입력" required autofocus> 
												<c:if test="${param.message == 'error'}">
													<br><span style="color:red">비밀번호 불일치 ! !</span> 													
												</c:if>
													
											</td>
										</tr>
										
										<tr>
											<th style="width: 200px">글제목</th>
											<td colspan="3" style="text-align:center"> ${dto.fb_title} </td>
										</tr>
										
										<tr style="border: 1px solid;">
											<th style="width: 200px; border-right: 1px solid;">내용</th>
											<!-- 이미지가 null이 아닐때 사진과 함께 표시 -->
											<c:if test="${dto.fb_img != null}">
			                              		<td colspan="3"  style="text-align:center; "><div style="display:flex; flex-wrap: wrap;"><img src="${dto.fb_img}" 
			                              			style="width:200px; margin:0 auto;"><div style="width:100%">${dto.fb_content}</div></div></td>
											</c:if>
				                            <!-- 이미지가 null일떄 표시 -->
				                            <c:if test="${dto.fb_img == null}">
				                            	<td colspan="3" style="text-align:center">${dto.fb_content} </td>
				                            </c:if>
			                            </tr>
										<tr>
											<th style="width: 200px">작성일</th>
											<td colspan="3"  style="text-align:center"> ${dto.fb_regDate} </td>								
										</tr>
										
										<tr>
											<td colspan="4" align="center">
												<!-- 게시글번호 hidden 추가 : input이 없으므로(게시글번호는 입력받지않는다 input 없음) -->
												<input type="hidden" name="hidden_fb_num" value="${dto.fb_num}">
												<input type="hidden" name="hiddenPageNum" value="${pageNum}">
												<input type="hidden" name="hidden_fb_img" value="${dto.fb_img}">  												
												<input type="button" class="inputButton" value="수정/삭제" id="btnEdit">
												<input type="button" class="inputButton" value="목록" id="btnList">
											</td>
										</tr>
									</table>
									
									<br><br>
									
									<!-- 댓글 목록 코드 -->
									<div id="freeCommentList" align="center">
									<!-- 댓글 목록 -->
									</div>
									<hr><br><br>
									<!-- 댓글 입력 코드 -->
									<div style="margin-left: 800px;">
									<table>
										 <!-- 로그인시에만 댓글입력란이 보임 -->
                          			    <c:if test="${! empty sessionScope.sessionId}">
										<tr>
			                                 <th style="width: 200px; ">아이디</th>
			                                 <td style="width: 200px; text-align:left"> 
			                                    <input style="width: 200px" type="text" class="input" 
			                                    name="fb_writer" id="fb_writer" size="30" value="${sessionScope.hiddenId}" placeholder="${sessionScope.hiddenId}" readonly>
			                                 </td>
			                                 <th style="width: 40px" rowspan="2" align="right"> 
			                                    <input type="button" class="inputButton" value="작성" id="btnCommentSave">
			                                 </th>
			                              </tr>
			                              
			                              <tr>
			                                 <th style="width: 200px; border-top: 1px solid black;"> 글 내용</th>
			                                 <td style="width: 170px" style="text-align:center">
			                                    <textarea style="width:600px" rows="5" cols="93" name="fb_content" id="fb_content" placeholder="댓글입력"></textarea>
			                                 </td>
			                              </tr>   
			                              </c:if>      
									</table>
								<!-- 댓글 입력 코드 끝 -->
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