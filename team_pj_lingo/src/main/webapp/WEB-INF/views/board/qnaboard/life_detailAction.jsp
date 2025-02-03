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

</head>
<body>
<div class="wrap">
   <!-- header 시작 -->
   <%@include file="/WEB-INF/views/common/header.jsp" %> 
   <!-- header 끝    -->

   <!-- 컨텐츠 시작 -->
   <div id="container">
      <div id="contents">
         <!-- 상단 중앙1 시작  -->
         <div id="section1">
            <h1 align="center"> 생활정보 </h1>
         </div>
         <!-- 상단 중앙2 시작  -->
         <div id="section2">
            <div id="s2_inner">
               <div class="join">
                  <form name="loginform" action="loginAction.do" method="post">
                     <table>
                        <tr>
                           <td>No</td>
                           <td>문의내용</td>
                           <td>작성자</td>
                           <td>작성일</td>
                           <td>조회수</td>
                        </tr>
                                                        
                                        <c:forEach var="dto" items="${list}">
                                         <tr>
                                             <td>${dto.b_num}</td>
                                             <td>${dto.b_writer}</td>
                                             <td>
                                             
                                             <a href="${path}/board_detailAction.bc?b_num=${dto.b_num}">${dto.b_title}[${dto.b_comment_count}]</a>
                                             
                                             </td>
                                             <td>${dto.b_regDate}</td>
                                             <td>${dto.b_readCnt}</td>
                                          </tr>
                                          
                                        
                                        </c:forEach>
                                        <tr>
                                             <td colspan ="5" align="center">
                                                  <!-- 페이징 처리 -->
                                                  <!-- 이전 버튼 활성화 -->
                                                  <c:if test="${paging.startPage > 10}">
                                                        <a href="${path}/board_list.bc?pageNum=${paging.prev}">[이전]</a>                                                  
                                                  </c:if>
                                                 
                                                  <!-- 페이지 번호 처리 -->
                                                  <c:forEach var="num" begin="${paging.startPage}" end="${paging.endPage}">
                                                        <a href="${path}/life.eq?pageNum=${num}">${num}</a>
                                                  </c:forEach>
                                                  <c:if test="${paging.endPage < paging.pageCount}">
                                                        <a href="${path}/life.eq?pageNum=${paging.next}">[다음]</a>                                                  
                                                  </c:if>
                                                  
                                                  <!-- 다음 버튼 활성화 -->
                                                  
                                             </td>
                                        </tr>     
                                        
                                        <tr>
                                             <td colspan="5" align="center">
                                                 <input type="button" class="inputButton" value="글쓰기" id="btnInsert">
                                             </td>
                                        </tr>
                        
                        
                        
                     </table>
                  </form>
               </div>
            </div>
         </div>
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