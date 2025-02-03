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
<script type="text/javascript">

$(function(){ // 상세페이지가 로딩되면 실행
   	 


  
  // 게시글 작성 버튼 클릭시
    $("#btnSave").click(function(){
    	
    	const password = $("#b_password").val();
    	const title = $("#b_title").val();
    	const content = $("#b_content").val();
    	
    	if(password == ""){
    		alert("패스워드를 입력하세요");
    		$("#b_password").focus();
    		return false;
    		
    	}
    	
    	if(title == ""){
    		alert("제목을 입력하세요");
    		$("#b_title").focus();
    		return false;
    	}
    	
    	if(content == ""){
    		alert("내용을 입력하세요");
    		$("#b_content").focus();
    		return false;
    	}

    	document.insertForm.action="${path}/life_insertAction.eq";
		document.insertForm.submit();
    	
    });
   		 
});

</script>


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
            <h1 align="center"> 생활정보 문의하기 </h1>
         </div>
   <!-- 우측 화면 시작 -->
	                  <div id="right">
	                       <div class="table_div">
	                            <form name="insertForm" method="post">
	                                 <table>
	                                      <tr>
	                                           <th style="width: 200px"> 작성자 </th>
	                                           <td style="width: 200px; text-align:center"> ${sessionScope.sessionID} </td>
	                                           
	                                           <th style="width: 200px"> 비밀번호 </th>
	                                           <td style="width: 200px; text-align:center"> 
	                                               <input style="width:200px" type="password" class="input" name="b_password"
	                                                      id="b_password" size="30" placeholder="비밀번호 입력" autofocus>	                                             	                                                      
	                                           </td>
	                                      </tr>
	                                 
	                                 
	                                       <tr>
	                                           <th style="width: 200px"> 글제목 </th>
	                                           <td colspan = "3" style="width: 200px; text-align:center">
	                                            <input style="width:200px" type="text" class="input" name="b_title"
	                                                      id="b_title" size="50" placeholder="글제목 입력">
	                                            
	                                             </td>	                                           
	                                      </tr>
	                                      
	                                       <tr>
	                                           <th style="width: 200px"> 글내용 </th>
	                                           <td colspan = "3" style="width: 200px; text-align:center">
	                                            <textarea rows="5" cols="93" name="b_content" id="b_content"> </textarea>
	                                            </td>	                                           
	                                      </tr>
	                                      
	                                 
                                        <tr>
                                             <td colspan="4" align="center">
                                                 <!-- 게시글번호 hidden 추가 : input이 없으므로(게시글번호는 입력받지 않으므로 input 없음 -->                                                 
                                                 <input type="button" class="inputButton" value="작성" id="btnSave">
                                                 <input type="reset" class="inputButton" value="초기화">                                                                                                
                                             </td>
                                        </tr>
	                                 </table>
	                            </form>
	                       </div>
	                  </div>
	              <!-- 우측 화면 종료 -->
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