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

</script>

<!-- <style>
footer {
    position: relative;
    margin-top: auto;  
}
</style> -->

</head>
<body>
<div id="s2_inner">
	<div class="join">
		<form name="loginform" action="loginAction.do" method="post">
			<img src="${path}/resources/images/accidentInsurance.png" alt="">
			<div class="content">
				<br><br>
				
				
				<ul>
					<h5><i class="fas fa-caret-right"></i> 산업재해보상보험이란? </h5>
					<li>사업장에서 근로자가 일을 하다가 부상, 질병, 장해, 사망 등 피해를 당했을 때 그 손실에 대한 보상을 해주기 위해 마련된 사회보험제도이다.</li>
					<li><i class="fa-solid fa-info" style="padding-left: 15px; padding-right: 10px"></i>보험료는 전액 사업주가 부담하며 근로자는 보험료를 부담하지 않음.</li>
					<li>외국인 근로자도 합법·불법 체류여부와 상관없이 산재보상을 받을 수 있다.</li>
					<li><i class="fa-solid fa-info" style="padding-left: 15px; padding-right: 10px"></i>산재보험에 대한 자세한 상담은 근로복지공단 고용·산재보험 토탈서비스 TEL.1588-0075로 문의.</li>
				</ul>
				
				<br><br>
				<h5><i class="fas fa-caret-right"></i> 처리 절차 </h5>
				<section>
					<ul>
						<li>재해발생</li>
						<li>요양신청서 작성</li>
						<li>공단 지사에 제출</li>
						<li>산재보상 여부결정</li>
						<li>본인에게 통보</li>
					</ul>
				</section>
			
				<section>
				<br>
					<h5><i class="fas fa-caret-right"></i> 보험급여의 종류 </h5>
					<br>
					<ul>
						<strong>요양급여</strong>
						<li>
							공단이 설치 또는 지정한 의료기관에서 요양을 하고 비용을 의료기관에 직접 지급하는 것을 원칙으로 하고 있지만, 부득이한 사유로 인해 근로자가 요양을 먼저하고 진료를 부담한 경우 및 급여의 성격상 근로자에게 직접 지급하여야 할 비용을 근로자에게 직접 지급하는 것
						</li>						
					</ul>
					
					<ul>
						<strong>휴업급여</strong>
						<li>
							업무상 재해를 당하거나 질병에 걸린 근로자가 요양으로 인하여 취업하지 못한 기간에 대하여 산재근로자와 그 가족의 생활보호를 위해 지급하는 보험급여
						</li>						
					</ul>
					
					<ul>
						<strong>상병보상연금</strong>
						<li>
							상태가 중증도에 이르고 요양개시 후 2년이 경과해도 치유되지 않고 요양이 장기화 될 경우 산재근로자와 그 가족의 생활보호를 위하여 휴업급여 대신 지급하는 보험급여
						</li>						
					</ul>
					
					<ul>
						<strong>장해급여</strong>
						<li>
							업무상 재해를 당한 근로자가 요양 후 치유되었으나 정신적 또는 신체적 결손이 남게 되는 경우 그 장해로 인한 노동력 손실보전을 위해 지급되는 보험급여
						</li>						
					</ul>
					
					<ul>
						<strong>간병급여</strong>
						<li>
							요양을 종결한 산재근로자가 치유 후 의학적으로 상시 또는 수시로 간병이 필요하여 실제로 간병을 받는 자에게 지급하는 보험급여
						</li>						
					</ul>
					
					<ul>
						<strong>유족급여 및 장의비</strong>
						<li>
							근로자가 업무상 사유로 사망 시 또는 사망으로 추정되는 경우 그 근로자와 생계를 같이 하고 있던 유족들의 생활보장을 위하여 지급되는 보험급여이며, 장의비는 그 장제에 소요되는 비용(실비)
						</li>						
					</ul>
				</section>
			</div>
		</form>
	</div>
</div>                
</body>
<script>
translate.service.use('client.edge'); //번역기 사용   참조: http://translate.zvo.cn/43086.html
translate.selectLanguageTag.show = false;// 기본 언어선택창 숨김  (true: 표시)
translate.execute();//번역시작
</script>
</html>