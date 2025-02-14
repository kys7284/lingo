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
			</div>
		</c:forEach>
	</form>

</body>

<script
	src="https://cdn.staticfile.net/translate.js/3.12.0/translate.js"></script>
<script>
	translate.service.use('client.edge'); //번역기 사용   참조: http://translate.zvo.cn/43086.html
	translate.selectLanguageTag.show = false;// 기본 언어선택창 숨김  (true: 표시)
	translate.execute();//번역시작
</script>

</html>