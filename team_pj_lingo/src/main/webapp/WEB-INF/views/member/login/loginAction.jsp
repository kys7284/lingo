<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="/WEB-INF/views/common/setting.jsp" %>     
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<!-- 반응형 웹  -->
<meta name="viewport" content="width=device-width, initial-scale=1">

<title>loginAction</title>

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
   <%@include file="/WEB-INF/views/common/header.jsp" %> <!-- customer/webapp/common/header.jsp  -->
   <%-- <jsp:include page="./header.jsp"/> 아님 --%>
   
   <!-- header 끝    -->

   <!-- 컨텐츠 시작 -->
   <div id="container">
      <div id="contents">
         <!-- 상단 중앙1 시작  -->
         <div id="section1">
            <h1 align="center"> 로그인 처리 </h1>
         </div>
         <!-- 상단 중앙2 시작  -->
         <div id="section2">
            <div id="s2_inner">
               <div class="join">
                 
                  <form name="loginform" action="loginAction.do" method="post">
                     <!-- 세션이 없는 경우 : 로그인 실패 -->
                     
                  <%-- <c:if test="${sessionScope.sessionID == null}"> --%>
                     <c:if test="${selectCnt == 0}">
                     <script type="text/javascript">
                     	alert("아이디와 비밀번호가 일치하지 않습니다~~~");                     	
                     	</script>
                     	
                     	<table>
                        <tr>
                           <th> * 아이디 </th>
                           <td>
                              <input type="text" class="input" name="mem_id" size="30" placeholder="공백없이 20자 이내로 작성" required autofocus>
                           </td>
                        </tr>
                        <tr>
                           <th> * 비밀번호 </th>
                           <td>
                              <input type="password" class="input" name="mem_pwd" size="20" placeholder="공백없이 20자 이내로 작성" required>
                           </td>
                        </tr>
                        
                        <tr>
                           <td colspan="2" style="border-bottom: none">
                           <br>
                           <div align="right">
                              <input class="inputButton" type="submit" value="로그인">
                              <input class="inputButton" type="reset" value="초기화">
                              <input class="inputButton" type="button" value="회원가입" onclick="window.location='${path}/join.do'">
                           </div>
                           </td>
                        </tr>   
                     </table>
                  </c:if>
                     	
				<%-- <c:if test="${sessionScope.sessionID != null}"> --%>
				 <c:if test="${selectCnt == 1}">		
						<table>
                        <tr>
                           <th colspan="2" align="center"> 
								<span style="color : 026892"><b>${hiddenId}</b></span>님 환영합니다
                        	</th>
                        </tr>
                        
                        <tr>
                           <td colspan="2" style="border-bottom: none">
                           <br>
                           <div align="right">
                              <input class="inputButton" type="button" value="메인으로" onclick="window.location='${path}/main.do'">
                              <input class="inputButton" type="button" value="회원수정" onclick="window.location='${path}/mypageUpdate.do'">
                              <input class="inputButton" type="button" value="회원탈퇴" onclick="window.location='${path}/memberDelete.do'">
                              <input class="inputButton" type="button" value="로그아웃" onclick="window.location='${path}/logout.do'">
                             <c:if test="${sessionScope.sessionID == 'admin' }">
								<a href="${path}/board_list.bc" style="color: black; background: lightblue; font-size: 15px; padding: 5px 10px 5px 10px;">관리자</a>
                           	</c:if>
                           </div>
                           </td>
                        </tr>   
                     </table>
				</c:if>
                     
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
   </div>
</body>
</html>