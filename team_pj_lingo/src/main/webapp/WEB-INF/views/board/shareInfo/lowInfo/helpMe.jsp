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

<title>login</title>

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

<link rel="stylesheet" href="${path}/resources/css/shareInfo/helpMe.css">

<!-- Summernote CSS -->
<link
	href="https://cdn.jsdelivr.net/npm/summernote@0.8.20/dist/summernote-lite.min.css"
	rel="stylesheet">
<!-- Bootstrap CSS -->
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
	rel="stylesheet">

<style>
        .container {
            max-width: 1000px;
            background-color: #fff;
            padding: 20px;
            border-radius: 10px;
            box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
        }

        .comment-section {
            margin-top: 30px;
        }

        .comment {
            background-color: #f9f9f9;
            border: 1px solid #ddd;
            border-radius: 10px;
            padding: 15px;
            margin-bottom: 15px;
        }

        .comment .comment-header {
            display: flex;
            justify-content: space-between;
            align-items: center;
            margin-bottom: 10px;
        }

        .comment .comment-body {
            font-size: 14px;
            color: #333;
        }

        .reply-section {
            display: none; /* 기본 숨김 */
            margin-top: 15px;
        }

        .btn-reply {
            background-color: #06bbcc;
            color: #fff;
            border: none;
            padding: 5px 15px;
            border-radius: 5px;
            font-size: 14px;
        }
        
        .btn-reply2 {
            background-color: #DC143C;
            color: #fff;
            border: none;
            padding: 5px 15px;
            border-radius: 5px;
            font-size: 14px;
        }
        

        .btn-reply:hover {
            background-color: #05a9b8;
        }
    </style>
    
<script type="text/javascript">

$(document).ready(function() {
    // 게시글 작성 (INSERT)
    $("#btnSave").click(function() {
        const content = $("#slboard_content").val();
        if (content === "") {
            alert("글 내용을 작성하세요!");
            $("#slboard_content").focus();
            return false;
        }

        const hiddenId = "<%= session.getAttribute("hiddenId") %>";
        if (!hiddenId || hiddenId === "null" || hiddenId === "") {
            alert("로그인 후 작성 가능합니다!");
            location.href = "${path}/login.do";
            return false;
        }

        alert("문의글 추가되었습니다~");
        document.insertForm.action = "${path}/sl_borad_insertAction.eq";
        document.insertForm.submit();
    });

    //  게시글 삭제 (DELETE)
    $(document).on("click", ".btnDelete", function() {
        if (!confirm("정말 삭제하시겠습니까?")) {
            return false;
        }

        // 클릭한 버튼에서 게시글 번호 가져오기
        let postNum = $(this).data("postnum");

        // `editForm`을 찾아서 설정
        let editForm = document.getElementById("editForm");
        if (!editForm) {
            alert("삭제 요청을 처리할 폼이 없습니다.");
            return;
        }

        // 숨겨진 input 필드에 게시글 번호 설정
        document.getElementById("deletePostNum").value = postNum;
        
        // 삭제 요청 전송
        editForm.action = "${path}/sl_borad_deleteAction.eq";
        editForm.submit();
    });
});
</script>


<script type="text/javascript">
$(document).ready(function() {
    // JSP에서 JavaScript 변수로 전달
    let deleteSuccess = "${deleteSuccess}";

    // 삭제 성공 시 알림창 띄우기
    if (deleteSuccess === "true") {
        alert("게시글이 성공적으로 삭제되었습니다.");
    }
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
				<!-- 왼쪽메뉴시작 -->
				<div id="side_menu">

					<h2>법률정보</h2>
					<br> <br>
					<ul>
						<li><a href="${path}/low.eq"> 생활속 법률 </a></li>
					</ul>
					<ul>
						<li><a href="${path}/helpMe.eq"> 도움요청 </a></li>
					</ul>
				</div>
				<!-- 왼쪽메뉴 끝 -->

				<!-- 상단 중앙1 시작  -->
				<div id="section1"
					style="background-image: url('${path}/resources/images/low.png'); background-size: cover; background-position: center; height: 360px;">
					<br> <br><br><br>
					<h1 align="center">법률 도움</h1>
				</div>
				<!-- 상단 중앙2 시작  -->
				<div id="section2">
					<div id="s2_inner">

						<form name="insertForm" method="post" action="${path}/sl_borad_insertAction.eq" enctype="multipart/form-data">

							<div class="container">
							
								 <!-- 메인 글 작성 에디터 -->
                               <table class="section2">
								    <tr>
								        <th style="width: 200px">${sessionScope.hiddenId}님 안녕하세요</th>
								    </tr>
								
								    <tr>
								        <th colspan="3" style="text-align: center;">
								            <!-- 작성창 -->
								            <textarea rows="8" cols="160" name="slboard_content" id="slboard_content"
								                placeholder="${sessionScope.hiddenId}님의 고민을 적어주세요.."></textarea>
								
								            <!-- 사진첨부를 작성창과 버튼 사이에 배치 -->
								            <div style="margin: 15px 0; text-align: center;">
								                <label for="slboard_img"><strong>사진 첨부</strong></label>
								                <input type="file" id="slboard_img" name="slboard_img" accept="image/*"
								                    style="display: block; margin: 10px auto; width: 250px; height: 50px;">
								            </div>
								
								            <!-- 버튼들 -->
								            <br>
								            <input type="button" class="inputButton" value="작성" id="btnSave">
								            <input type="reset" class="inputButton" value="초기화">
								        </th>
								    </tr>
								</table>
								</div>
							</form>
							
							
								<form id="editForm" method="post">
								    <input type="hidden" id="deletePostNum" name="slboard_num" value="">
								</form>
								
								<div class="container">
								
                                <!-- 게시글 목록 -->
                               <c:forEach var="dto" items= "${shareLowList}">	
                              
                                    <div class="comment">
                                        <div class="comment-header">
                                            <strong>${dto.slboard_writer}님</strong>
                                            <span>${dto.slboard_regDate} <br> [${dto.slboard_num}번 게시글]</span>
                                            
                                        </div>
                                        <div class="comment-body">${dto.slboard_content}
                                        
                                        <br>
                                        
                                        <c:if test="${not empty dto.slboard_img}">
										    <img src="${dto.slboard_img}" width="100px">
										</c:if>
                                        
                                        <br>
                                        
           								<button class="btn-reply2 mt-3 btnDelete" data-postnum="${dto.slboard_num}">관리자 게시글 삭제</button>
                                        <!-- Reply Button -->
                                        <button type="button" class="btn-reply mt-2" id="btnCommentSave" onclick="toggleReplyList(this)">답글<span style="color: red">[ ${dto.slboard_comment_count} ]</span></button>
                                       
                                        <!-- 답글 Section -->
                                        <div class="reply-section">
                                            <!-- Reply List -->
                                            <div class="reply-list mt-3">
                                                <div class="comment">
                                                    <div class="comment-header">
                                                        <strong>slcomment_writer</strong>
                                                        <span>slcomment_regDate</span>
                                                    </div>
                                                    <div class="comment-body">slcomment_content</div>
                                                    <button class="btn-reply2 mt-3">관리자 답글 삭제</button>
                                                </div>	
                                            </div>
                                            <!-- Reply Box -->
                                            <div class="reply-box mt-3">
                                                <textarea class="editor" "></textarea>
                                                <div class="d-flex justify-content-start mt-2">
                                                    <button class="btn-reply mt-2">답글 작성</button>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                               </c:forEach>
                               </div>
                               
                               <table>
                               <tr>
								<td colspan="6" align="center">
									<!-- 페이징처리 -->
									<!-- 이전 버튼 활성화 -->
									<c:if test="${paging.startPage > 10}">
										<a href="${path}/helpMe.eq?pageNum=${paging.prev}">[이전]</a>
									</c:if>
									
									<!-- 페이지 번호 처리 -->
									<c:forEach var="num" begin="${paging.startPage}" end="${paging.endPage}">
										<a href="${path}/helpMe.eq?pageNum=${num}">${num}</a>
									</c:forEach>
									<!-- 다음 버튼 활성화 -->
									<c:if test="${paging.endPage < paging.pageCount}">
										<a href="${path}/helpMe.eq?pageNum=${paging.next}">[다음]</a>
									</c:if>
								</td>
							</tr>
							</table>		
									
                            </div>
                        
                    </div>
                </div>
            </div>
        </div>

	<!-- Summernote JS -->
	<script
		src="https://cdn.jsdelivr.net/npm/jquery@3.6.0/dist/jquery.min.js"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/summernote@0.8.20/dist/summernote-lite.min.js"></script>
     <script>
        const summernoteOptions = {
            height: 150,
            placeholder: '내용을 입력하세요...',
            toolbar: [
                ['style', ['bold', 'italic', 'underline', 'clear']],
                ['para', ['ul', 'ol', 'paragraph']],
                ['insert', ['link', 'picture']],
                ['view', ['codeview', 'help']]
            ]
        };

        $(document).ready(function () {
            // Initialize Main Editor
            $('.main-editor').summernote(summernoteOptions);
        });

        function toggleReplyList(button) {
            const replySection = button.nextElementSibling;
            $(replySection).toggle(); // Toggle visibility
            if ($(replySection).is(':visible')) {
                // Initialize Summernote in Reply Box
                $(replySection).find('.editor').summernote({
                    height: 100,
                    placeholder: '답글을 입력하세요...',
                    toolbar: [
                        ['style', ['bold', 'italic', 'underline']],
                        ['para', ['ul', 'ol']],
                        ['view', ['codeview']]
                    ]
                });
            } else {
                $(replySection).find('.editor').summernote('destroy');
            }
        }
    </script>
    
    <script type="text/javascript">
    // 아이디 admin일때 게시글,댓글 삭제 버튼 생김
    $(function () {
        // 현재 로그인한 사용자의 ID를 서버에서 가져온다고 가정
        let hiddenId = "${sessionScope.hiddenId}"; // 실제 서버에서 값 주입

        // 관리자 ID (예: "admin"이 관리자라고 가정)
        let adminId = "admin";

        // 모든 관리자 삭제 버튼 찾기
        let adminDeleteButtons = document.querySelectorAll(".btn-reply2");

        adminDeleteButtons.forEach(button => {
            if (hiddenId !== adminId) {
                button.style.display = "none"; // 관리자가 아니면 버튼 숨기기
            }
        });
    });
    
    
    
    
    
    $(function(){	//(jQuery)상세페이지가 로딩되면
		//(jQuery)상세페이지가 로딩되면 자동으로 댓글목록 호출
		free_comment_list();
	
		//[댓글쓰기 버튼 클릭(1)]
		$('#btnCommentSave').click(function() {
				<%
					if(session.getAttribute("hiddenId") == null)	{
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
				
			})
    	});
		
		// 댓글쓰기 버튼 클릭(2)
		function free_comment_add(){
			// alert('free_comment_add()');
			
			//게시글번호, 댓글작성자,댓글 내용 파라미터로 넘김
			let param = {
					"freeboard_num" : ${dto.fb_num},	// key:value => 댓글번호: 게시글번호
					"writer": $('#fb_writer').val(),
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
</body>

<script
	src="https://cdn.staticfile.net/translate.js/3.12.0/translate.js"></script>
<script>
translate.service.use('client.edge'); //번역기 사용   참조: http://translate.zvo.cn/43086.html
translate.selectLanguageTag.show = false;// 기본 언어선택창 숨김  (true: 표시)
translate.execute();//번역시작
</script>

</html>