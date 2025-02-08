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
					<img src="${path}/resources/images/culture1.png" alt="이름 문화" style="margin-right: 60px;">
					<div class="content">
						<h5><i class="fas fa-caret-right"></i> 이름문화</h5>
						<ul>
							<li>한국인들의 성은 그 수가 적으며 김 (21%), 이 (14%), 박 (8%), 최, 정, 장, 한,
								임 등으로 구성되어있다.</li>
							<li>한국인의 성은 대부분 한 글자이며 이름은 두 글자이다. 성을 이름앞에 쓴다.</li>
							<li>한국인의 여성은 결혼 후에도 남편 성을 따르지 않고 원래의 성을 쓴다.</li>
							<li>그러나 자녀들은아버지의 성을 따른다.</li>
						</ul>
					</div>
				</div>

				<hr>

				<div
					style="display: flex; align-items: flex-start; margin-bottom: 20px;">
					<img src="${path}/resources/images/culture2.png" alt="제례 문화" style="margin-right: 60px;">
					<div class="content">
						<h5><i class="fas fa-caret-right"></i> 제례문화</h5>
						<ul>
							<li>전통적 한국인의 사상에 따르면 조상이 죽을 때 그들의 정신은 즉각 떠나지 않고 자손들 4대에 걸쳐 남아있는다고 믿는다.</li>
							<li>이 기간 동안 죽은 조상들은 여전히 가족의 일원으로 간주되며 조상들이 죽은 날과 설날과 추석에 제사를 지낸다.</li>
							<li>한국인들은 죽은 조상들이 자신들에게 베푼 은혜 때문에 행복하고 잘 살수 있다고 생각한다.</li>
						</ul>
					</div>
				</div>

				<hr>

				<div
					style="display: flex; align-items: flex-start; margin-bottom: 20px;">
					<img src="${path}/resources/images/culture3.png" alt="예절 문화" style="margin-right: 20px;">
					<div class="content">
						<h5><i class="fas fa-caret-right"></i> 예절문화</h5>
						<ul>
							<li>한국인들은 예절을 중시하며 인사를 할 때 존경의 표시로 허리를 굽혀 인사를 한다.</li>
							<li>물건이나 음식을 줄때에는 두 손을 사용한다.</li>
							<li>사람을 부를 때 손바닥을 아래로 하여 위아래로 흔들며 부른다.</li>
							<li>손바닥을 위로 향해 부르거나 한 손가락을 사용해 부르지 않는다.</li>
						</ul>
					</div>
				</div>

				<hr>

				<div
					style="display: flex; align-items: flex-start; margin-bottom: 20px;">
					<img src="${path}/resources/images/culture4.png" alt="음식 문화" style="margin-right: 60px;">
					<div class="content">
						<h5><i class="fas fa-caret-right"></i> 음식문화</h5>
						<ul>
							<li>한국음식에서는 여러 가지 먹을 것과 반찬을 차린 것을 볼 수 있다.</li>
							<li>한국은 원래 농업국가로서 주식으로 쌀을 재배해 왔으며 오늘날은 채소류와 함께 다양한 육류, 어류들도 한국음식으로 사용되고 있다.</li>
							<li>다양한 발효음식과 보존음식이 사용되는데 특히 김치와 된장 젓갈이 그 특유의 맛과 영양으로 유명하다.</li>
							<li>한국인의 밥상에서 특별히 눈에 띄는 것은 모든 음식을 한꺼번에 차린다는 것이다. 전통적으로 반찬의 가지 수는 가난한 사람들의 경우 3가지에서 부자들의 경우 12가지까지로 다양하다.</li>
							<li>이웃나라인 일본이나 중국과 달리 한국에서는 숟가락이 자주 사용되며 특히 국물을 먹을 때 숟가락을 사용한다.</li>
						</ul>
					</div>
				</div>

				<hr>

				<div
					style="display: flex; align-items: flex-start; margin-bottom: 20px;">
					<img src="${path}/resources/images/culture5.png" alt="김장 문화" style="margin-right: 60px;">
					<div class="content">
						<h5><i class="fas fa-caret-right"></i> 김장문화</h5>
						<ul>
							<li>김장은 오래된 한국의 겨울 대비용 음식으로 오랜 세대를 거쳐 이어오고 있다.</li>
							<li>겨울기간동안 채소를 재배할 수 없기 때문에 초겨울에 김치를 만드는 작업인 김장을 해오고 있다.</li>
							<li>한국인에게 있어서 저녁식사에는 꼭 김치가 있어야 된다고 생각한다.</li>
						</ul>
					</div>
				</div>

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