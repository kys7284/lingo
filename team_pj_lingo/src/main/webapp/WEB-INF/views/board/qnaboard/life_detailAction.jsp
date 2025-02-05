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

<title>Q&A_life</title>

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
		comment_list();
		
		//(jQuery)상세페이지가 로딩되면 자동으로 댓글목록 호출
		//commentListAction();
	
		//[댓글쓰기 버튼 클릭(1)]
		$('#btnCommentSave').click(function() {
			comment_insert();
		});
		
		 //[게시글 수정삭제 버튼] 클릭시 [게시글 수정/삭제 화면]으로 이동 (컨트롤러에서 패스워드 체크 후)
		$("#btnEdit").click(function() {
			document.detailForm.action="${path}/password_chkAction.eq";
			document.detailForm.submit();
		});
		//[게시글 목록 버튼] 클릭시 컨트롤러의 목록으로 이동 
		$("#btnList").click(function(){
			location.href="${path}/life.eq";
		});
	});
	
	   // 댓글 쓰기 버튼 클릭(2)
	   function comment_insert(){
	      // alert('comment_add()');
	      // 게시글번호, 댓글작성자, 댓글 내용을 파라미터로 넘김
	      let param = {
	         "board_num" : ${dto.b_num}, //key:value => 댓글번호 : 게시글번호
	         "writer"    : $('#c_writer').val(),
	         "content"   : $('#c_content').val()
	      }
	      $.ajax({
	         url : '${path}/comment_insert.eq',
	         type : 'POST',
	         data : param, 
	         success : function() {		// (6)
	             console.log("서버 응답:", response);
	        	 $('#c_writer').val();
	            $('#c_content').val();
	            comment_list();  //댓글목록 새로고침(7)
	         } ,
	         error : function(){
	             console.error("AJAX 오류:", xhr.responseText);

	        	 alert('comment_add()오류');
	         }
	      });
	   }
	   // 댓글 목록 
	   function comment_list(){	// (8)
	     // alert("comment_list()");
	      $.ajax({
	         url : '${path}/comment_list.eq', // 컨트롤러로 이동 (9)
	         type : 'POST',
	         data : 'board_num=${dto.b_num}',
	         success : function(result){		// 콜백함수(13) =>result는 comment_list.jsp(컨트롤러에서 넘긴)
	            $('#commentList').html(result); // div id가 commentList 자리에 댓글 리스트페이지 출력

	         } ,
	         error : function(){
	            alert('comment_list()오류');
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
					<h1 align="center">문의 상세</h1>
				</div>				
				<!-- 상단 중앙1 종료 -->

				<!-- 상단 중앙2 시작 -->
				<div id="section2">
					
					<!-- 우측 메뉴 시작 -->
						<div id="right">
							<div class="table_div">
								<form name="detailForm" method="post">
									<table>
										<tr>
											<th style="width: 200px">글번호</th>
											<td style="width: 200px" style="text-align:center"> ${dto.b_num} </td>
											
											<th style="width: 200px">조회수</th>
											<td style="width: 200px" style="text-align:center"> ${dto.b_readCnt} </td>
										</tr>
										
										<tr>
											<th style="width: 200px">작성자</th>
											<td style="width: 200px" style="text-align:center"> ${dto.b_writer} </td>
											
											<th style="width: 200px">비밀번호</th>
											<td style="width: 200px" style="text-align:center"> 
												<input style="width: 200px" type="password" class="input" name="b_password" 
													id="b_password" size="30" placeholder="비밀번호 입력" required autofocus> 
												<c:if test="${param.message == 'error'}">
													<br><span style="color:red">비밀번호 불일치 ! !</span> 
												</c:if>
													
											</td>
										</tr>
										
										<tr>
											<th style="width: 200px">글제목</th>
											<td colspan="3" style="text-align:center"> ${dto.b_title} </td>
										</tr>
										
										<tr>
											<th style="width: 200px">내용</th>
											<td colspan="3"  style="text-align:center"> ${dto.b_content} </td>
										</tr>
										
										<tr>
											<th style="width: 200px">작성일</th>
											<td colspan="3"  style="text-align:center"> ${dto.b_regDate} </td>
										</tr>
										<tr>
											<td colspan="4" align="center">
												<!-- 게시글번호 hidden 추가 : input이 없으므로(게시글번호는 입력받지않는다 input 없음) -->
												<input type="hidden" name="hidden_b_num" value="${dto.b_num}">  
												<input type="button" class="inputButton" value="수정/삭제" id="btnEdit">
												<input type="button" class="inputButton" value="목록" id="btnList">
											</td>
										</tr>
									</table>
									
									<br><br>
									
									<!-- 댓글 목록 코드  -->
                     <div id="commentList" align="center">
                     <!-- 댓글 목록  -->
                     </div>
                     
                     <!-- 댓글 입력 코드  -->
                      <table>
                              <tr>                              
                                 <th style="width: 400px"> 댓글작성자 </th>
                                 <td style="width: 200px" style="text-align:left">
                                    <input style="width: 250px" type="text" class="input"
                                        name="c_writer" id="c_writer" size="30" placeholder="작성자 입력">
                                 </td>
                                 <th style="width: 40px" rowspan="2" align="right">
                                 <center><input type="button" class="inputButton" value="작성" id="btnCommentSave"></center>
                              </tr>
                              <tr>
                                 <th style="width: 300px"> 글내용 </th>
                                 <td style="width: 170px" style="text-align:center">
                                    <textarea style="width: 600px" rows="5" cols="93" name="c_content" id="c_content" placeholder="댓글입력"></textarea>
                                 </td>
                              </tr>
                           </table>
                  </form>
                 </div>
               </div>
               <!-- 우측 메뉴 종료  -->
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