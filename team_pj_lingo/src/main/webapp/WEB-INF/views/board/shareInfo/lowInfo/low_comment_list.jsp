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
</head>

<style>

    .comment-section {
        margin-top: 30px;
    }

    .comment2 {
        background-color: #f9f9f9;
        border: 1px solid #ddd;
        border-radius: 10px;
        padding: 15px;
        margin-bottom: 10px;
    }

    .comment .comment-header2 {
        display: flex;
        flex-direction: column; /* 수직 정렬 */
        justify-content: flex-start; /* 위쪽 정렬 */
        align-items: flex-start; /* 왼쪽 정렬 */
        font-weight: bold;
        margin-bottom: 5px;
    }

    .comment .comment-body2 {
        font-size: 14px;
        color: #333;
        text-align: left; /* 왼쪽 정렬 */
        margin-top: 5px;
    }
    
    .btn-reply2 {
    background-color: #DC143C;
    color: #fff;
    border: none;
    padding: 5px 15px;
    border-radius: 5px;
    font-size: 14px;
    margin-left: 0; /* 왼쪽 정렬 */
    display: block; /* 블록 요소로 변경하여 왼쪽 정렬 */
}
</style>

<%
String memStatus = (session.getAttribute("mem_status") != null) ? session.getAttribute("mem_status").toString() : "";
String hiddenId = (session.getAttribute("hiddenId") != null) ? session.getAttribute("hiddenId").toString() : "";
System.out.println("🔍 [DEBUG] mem_status: " + memStatus);
System.out.println("🔍 [DEBUG] hiddenId: " + hiddenId);
%>

<script type="text/javascript">
$(document).ready(function () {
    // JSP에서 가져온 값이 `null`이면 빈 문자열("")로 설정
    let userStatus = "<%= (memStatus != null) ? memStatus : "" %>";
    let loggedInUser = "<%= (hiddenId != null) ? hiddenId : "" %>";

    console.log("userStatus:", userStatus);
    console.log("loggedInUser:", loggedInUser);

    //  [관리자용] 관리자가 아닐 경우 삭제 버튼 숨기기
    $(".btn-reply2").each(function () {
        if (userStatus.trim() !== "admin") {
            $(this).hide();
            console.log("Hiding admin delete button (not admin)");
        }
    });

    // 댓글 삭제 (DELETE)
    $(document).off("click", ".btnCommentDelete").on("click", ".btnCommentDelete", function(event) {
        event.preventDefault(); // 기본 동작 방지

        if (!confirm("정말 삭제하시겠습니까?")) {
            return false;
        }

        let postNum_comment = $(this).closest('.comment2').find('input[name="slcomment_num"]').val();
        if (!postNum_comment) {
            alert("댓글 번호를 찾을 수 없습니다.");
            return;
        }

        console.log("삭제 요청 댓글 번호:", postNum_comment);

        // AJAX 요청 실행
        $.ajax({
            type: "POST",
            url: "${path}/delectComment.eq",
            data: { slcomment_num: postNum_comment },
            success: function(response) {
                console.log("서버 응답:", response);
                if (response.trim() === "success") {
                    alert("댓글이 삭제되었습니다.");
                    setTimeout(function() { location.reload(); }, 500); //  0.5초 후 새로고침 (연속 실행 방지)
                } else {
                    alert("삭제 실패! 다시 시도해주세요.");
                }
            },
            error: function(xhr, status, error) {
                console.error("삭제 요청 오류:", xhr.responseText);
                alert("서버 오류로 인해 삭제할 수 없습니다.");
            }
        });
    });
});
</script>
 
<body>




	<form id="editForm_comment" method="post">
	    <input type="hidden" id="deletePostNum_comment" name="slcomment_num" value="">
	</form>

	<form name="commentList">
		<c:forEach var="dto" items="${list}">
			<div class="comment2">
				<div class="comment-header2">
				<input type="hidden" name="slcomment_num" value="${dto.slcomment_num}">
					<span>${dto.slcomment_writer}님의 답글</span> 
					<span
						style="font-size: 12px; color: gray;">작성일:
						${dto.slcomment_regDate}
					</span>
				</div>
				<br>
				<div class="comment-body2">${dto.slcomment_content}</div>
				<div style="text-align: left; margin-top: 10px;">
					<button class="btn-reply2 mt-3 btnCommentDelete">관리자 답글 삭제</button>
				</div>
			</div>
		</c:forEach>
	</form>

	<script type="text/javascript">
	$(document).ready(function() {
	    // 기존 이벤트 제거 후 다시 등록하여 중복 방지
	    $(document).off("click", ".btnCommentDelete").on("click", ".btnCommentDelete", function(event) {
	        event.preventDefault(); // 기본 동작 방지

	        if (!confirm("정말 삭제하시겠습니까?")) {
	            return false;
	        }

	        let postNum_comment = $(this).closest('.comment2').find('input[name="slcomment_num"]').val();
	        if (!postNum_comment) {
	            alert("댓글 번호를 찾을 수 없습니다.");
	            return;
	        }

	        console.log("삭제 요청 댓글 번호:", postNum_comment); // 디버깅용 콘솔 출력

	        // AJAX 요청으로 댓글 삭제 실행
	        $.ajax({
	            type: "POST",
	            url: "${path}/delectComment.eq",
	            data: { slcomment_num: postNum_comment },
	            success: function(response) {
	                console.log("서버 응답:", response); // 디버깅 로그
	                if (response === "success") {
	                    alert("댓글이 삭제되었습니다.");
	                    location.reload(); // 페이지 새로고침
	                } else {
	                    alert("삭제 실패! 다시 시도해주세요.");
	                }
	            },
	            error: function(xhr, status, error) {
	                console.error("삭제 요청 오류:", xhr.responseText); // 오류 메시지 출력
	                alert("서버 오류로 인해 삭제할 수 없습니다.");
	            }
	        });
	    });
	});

	    </script>

	 <script type="text/javascript">
   	  // 아이디 admin일때 게시글,댓글 삭제 버튼 생김
	  $(function () {
	        // 현재 로그인한 사용자의 상태를 서버에서 가져오기 (JSP 표현식 활용)
	        let userStatus = "<%= session.getAttribute("mem_status") %>"; // 세션에서 mem_status 가져오기
	
	        // 모든 관리자 삭제 버튼 찾기
	        let adminDeleteButtons = document.querySelectorAll(".btn-reply2");
	
	        adminDeleteButtons.forEach(button => {
	            if (userStatus !== "admin") {
	                button.style.display = "none"; // 관리자가 아니면 버튼 숨기기
	            }
	        });
	    });
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