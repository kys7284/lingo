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

   <link rel="stylesheet" href="${path}/resources/css/shareInfo/low.css">
<script type="text/javascript">

</script>

<style>
    body {
        font-family: Arial, sans-serif;
        line-height: 1.6;
        color: #333;
    }
    table {
        width: 100%;
        border-collapse: collapse;
        margin-top: 20px;
        text-align: center;
    }
    
    th {
        background-color: #a7deeb;
        font-weight: bold;
        padding: 15px;
        border: 1px solid #2a97b5;
    }
    
    td {
        background-color: #a4dfe9;
        padding: 15px;
        border: 1px solid #2a97b5;
    }
    
    tr:first-child th {
        border-top: 2px solid #3992a2;
    }
    td:first-child {
        background-color: #d7f3f8;
        font-weight: bold;
    }
    
    h5 {
    color: #000000 !important;
}
</style>

</head>
<body>
	<div id="s2_inner">

		<div class="join">

			<form name="loginform" action="loginAction.do" method="post">
				<img src="${path}/resources/images/low2.jpg"
					style="height: 600px; width: 1300px;" "alt="">
				<div class="content">
					<br>

						<!-- 표 시작 -->
							<!-- 법률 -->
						      <table>
						      <h5><i class="fas fa-caret-right"></i> 법률 상담 및 소송 지원</h5>
						        
						        <thead>
						            <tr>
						                <th>사이트명</th>
						                <th>주요 서비스</th>
						                <th>사이트주소</th>
						            </tr>
						        </thead>
						        
						        <tbody>
						            <tr>
						                <td>대한법률구조공단</td>
						                <td>무료 법률 상담 및 소송 지원, 외국인과 다문화가정을 위한 전문 법률 서비스</td>
						                <td><a href="https://www.klac.or.kr/" target="_blank">www.klac.or.kr</a></td>
						            </tr>
						            <tr>
						                <td>이주민센터 친구</td>
						                <td>이주민과 다문화가정을 위한 법률, 노동, 의료, 체류 상담</td>
						                <td><a href="https://www.migrantok.org/" target="_blank">www.migrantok.org</a></td>
						            </tr>
						            <tr>
						                <td>행복한가정상담센터</td>
						                <td>다문화가정 내 가족 문제 및 법률 상담, 가정폭력 및 이혼 관련 법률 지원</td>
						                <td><a href="https://www.happyfamily.or.kr/" target="_blank">www.happyfamily.or.kr</a></td>
						            </tr>
						        </tbody>
						    </table>
						    
						    <br>
						    
						   <!-- 비자 --> 
						   <table>
						      <h5><i class="fas fa-caret-right"></i> 비자 및 체류 지원</h5>
						        
						        <thead>
						            <tr>
						                <th>사이트명</th>
						                <th>주요 서비스</th>
						                <th>사이트주소</th>
						            </tr>
						        </thead>
						        
						        <tbody>
						            <tr>
						                <td>외국인종합지원센터</td>
						                <td>비자 및 체류, 고용, 법률 상담, 다국어 서비스 제공</td>
						                <td><a href="https://www.hikorea.go.kr/" target="_blank">www.hikorea.go.kr</a></td>
						            </tr>
						            <tr>
						                <td>서울글로벌센터</td>
						                <td>외국인을 위한 법률, 비자, 취업 상담 및 생활 지원</td>
						                <td><a href="https://global.seoul.go.kr/" target="_blank">global.seoul.go.kr</a></td>
						            </tr>
						            <tr>
						                <td>국제이주문화원</td>
						                <td>국제결혼, 이민, 다문화가정을 위한 법률 상담 및 문화 교류 지원</td>
						                <td><a href="https://www.immigration.or.kr/" target="_blank">www.immigration.or.kr</a></td>
						            </tr>
						        </tbody>
						    </table>
						    
						    <br>
						    <!-- 노동 및 고용 지원 -->
						    <table>
						      <h5><i class="fas fa-caret-right"></i> 노동 및 고용 지원</h5>
						        
						        <thead>
						            <tr>
						                <th>사이트명</th>
						                <th>주요 서비스</th>
						                <th>사이트주소</th>
						            </tr>
						        </thead>
						        
						        <tbody>
						            <tr>
						                <td>고용노동부</td>
						                <td>노동법 관련 상담, 임금체불 신고, 외국인 근로자를 위한 고용 정보 제공</td>
						                <td><a href="https://www.moel.go.kr/" target="_blank">www.moel.go.krr</a></td>
						            </tr>
						            <tr>
						                <td>이주여성긴급지원센터</td>
						                <td>이주여성을 위한 긴급 법률 상담, 체류 및 가족 관련 문제 지원</td>
						                <td><a href="https://www.wm1366.or.kr/" target="_blank">www.wm1366.or.kr</a></td>
						            </tr>
						        </tbody>
						    </table>
						    
						    <br>
						    <!-- 생활 및 가족 지원 -->
						    <table>
						      <h5><i class="fas fa-caret-right"></i> 생활 및 가족 지원</h5>
						        
						        <thead>
						            <tr>
						                <th>사이트명</th>
						                <th>주요 서비스</th>
						                <th>사이트주소</th>
						            </tr>
						        </thead>
						        
						        <tbody>
						            <tr>
						                <td>한국다문화가족지원센터</td>
						                <td>다문화가정을 위한 생활 상담, 법률 교육, 다문화 가족 정책 정보 제공</td>
						                <td><a href="https://www.liveinkorea.kr/" target="_blank">www.liveinkorea.kr</a></td>
						            </tr>
						            <tr>
						                <td>국민건강보험공단</td>
						                <td>외국인 및 다문화가정의 건강보험 가입 안내, 의료비 지원 정보 제공</td>
						                <td><a href="https://www.nhis.or.kr/" target="_blank">www.nhis.or.kr</a></td>
						            </tr>
						        </tbody>
						    </table>
						    
					<!-- 표 끝 -->
					
			</form>
		</div>
		
	</div>
</body>
<script src="https://cdn.staticfile.net/translate.js/3.12.0/translate.js"></script>
<script>
translate.service.use('client.edge'); //번역기 사용   참조: http://translate.zvo.cn/43086.html
translate.selectLanguageTag.show = false;// 기본 언어선택창 숨김  (true: 표시)
translate.execute();//번역시작
</script>
</html>