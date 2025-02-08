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

				<div
					style="display: flex; align-items: flex-start; margin-bottom: 20px;">
					<img src="${path}/resources/images/custom1.png" alt="전통의상 (한복)" style="margin-right: 60px;">
					<div class="content">
						<h5><i class="fas fa-caret-right"></i> 전통의상 (한복)</h5>
						<ul>
							<li>한복은 수 천년 간 한국인의 고유한 전통의상이다.</li>
							<li>한국인의 미와 아름다움은 한복을 입은 한국여인의 모습에서 찾을 수 있다.</li>
							<li>백년전 서양의복이 전해지기 전까지 한복은 일상적인 의복이었다.</li>
							<li>남자들은 저고리와 바지를 입었고 여자들은 저고리와 치마를 입었다.</li>
							<li>오늘날 한복은 결혼식 때와 설날 추석날 등에 입는다.</li>
						</ul>
					</div>
				</div>

				<hr>

				<div
					style="display: flex; align-items: flex-start; margin-bottom: 20px;">
					<img src="${path}/resources/images/custom2.png" alt="전통가옥" style="margin-right: 60px;">
					<div class="content">
						<h5><i class="fas fa-caret-right"></i> 전통가옥</h5>
						<ul>
							<li>한국의 전통가옥은 한옥이라 불린다.</li>
							<li>전통가옥의 자연에 대한 고려는 가옥구조의 설계에서부터 건축에 쓰여지는 재료에 이르기까지 포함된다.</li>
							<li>한국은 겨울은 춥고 여름은 덥기 때문에 온돌 또는 구들(방바닥을 이용해 난방하는 시스템) 과 대청(시원한 나무바닥 스타일의 거실)이 추운겨울과 뜨거운 여름을 견디기 위해 고안되었다.</li>
							<li>이러한 냉, 난방시스템은 매우 효과적이어서 오늘날에도 많이 사용하고 있다.</li>
						</ul>
					</div>
				</div>

				<hr>

				<div
					style="display: flex; align-items: flex-start; margin-bottom: 20px;">
					<img src="${path}/resources/images/custom3.png" alt="온돌" style="margin-right: 60px;">
					<div class="content">
						<h5><i class="fas fa-caret-right"></i> 온돌</h5>
						<ul>
							<li>전통적인 한국인 가정의 방은 여러 가지 기능을 한다. 방마다 특정한 용도로 지정되지 않고 필요시에 테이블과 이불 등을 가져다 놓아 식당, 침실 등으로 사용한다.</li>
							<li>대부분의 한국인들은 온돌방 바닥에 앉아 생활하거나 두꺼운 이불을 깔고 잠을 잔다.</li>
							<li>전통적인 가정의 방바닥 아래는 돌과 콘크리트로 만든 연도가 있다. 뜨거운 공기가 이 연도를 통과하며 방안에 열을 전달한다. 진흙과 시멘트로 돌을 덮어 유독한 가스를 막는다.</li>
							<li>이러한 시스템을 ‘온돌’이라고 부르는데 현대에 들어서는 방 바닥아래 리놀륨 파이프를 깔아 뜨거운 물을 통과 시키는 방법이 사용된다.</li>
						</ul>
					</div>
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