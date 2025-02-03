<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/common/setting.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<!-- 반응형 웹 -->
<meta name="viewport" content="width=device-width, inital-scale=1">
<title>Main</title>
<!-- CSS -->
<link rel="stylesheet" href="${path}/resources/css/common/header.css">
<link rel="stylesheet" href="${path}/resources/css/common/footer.css">
<link rel="stylesheet" href="${path}/resources/css/admin/ad_productList.css">
<!-- JAVA SCRIPT -->
<script src="https://kit.fontawesome.com/e7e5aa5c8d.js" crossorigin="anonymous"></script>
<!-- <script src="/jsp_pj_ict04/resources/js/customer/main.jsp defer"></script>  -->
<!-- (3-3-2). 자바스크립트 소스 연결  -->
<script src="${path}/resources/js/common/main.js" defer></script>
<!-- defer : html을 다 읽은 후에 자바스크립트를 실행하라는거임. 페이지가 로드된 후에 해당 외부스크립트를 실행 -->
</head>
<body>
	          <!-- 상세페이지의 div로 들어가야해서 헤더,푸터없음  --> 
	              <!-- 우측 화면 시작 -->
	                  <div id="right">
	                       <div class="table_div">
	                            <form name="boardList">
	                                 <table border="1" width="100px">
                                          <tr>       
                                            <th style="width: 10%">댓글번호</th>
                                             <th style="width: 10%">작성자</th>
                                             <th style="width: 15%">글내용</th>
                                             <th style="width: 10%">작성일</th>   
                                          </tr>
                                          
                                        <!-- 댓글이 있으면 -->
                                        <c:forEach var="dto" items="${list}">
                                         <tr>
                                             <td>${dto.c_comment_num }</td>
                                             <td>${dto.c_writer}</td>
                                             <td>${dto.c_content}</td>
                                             <td>${dto.c_regDate }</td>
                                             
                                          </tr>        
                                        </c:forEach>                               
	                                 </table>
	                            </form>
	                  </div>
	              <!-- 우측 화면 종료 -->
	          </div>
	          <!-- 상단 중앙2 종료 -->
</body>
</html>