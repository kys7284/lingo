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

<style>
    body {
        font-family: Arial, sans-serif;
        margin: 20px;
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
</style>

</head>
<body>
	<div id="s2_inner">

		<div class="join">

			<form name="loginform" action="loginAction.do" method="post">
				<img src="${path}/resources/images/recycling.jpg" alt="">
				<div class="content">
					<br>

					<h5>
						<i class="fas fa-caret-right"></i> 일반쓰레기
					</h5>
					<ul>
						<li>음식물 쓰레기, 재활용품, 가구 등 대형생활폐기물을 제외한 모든 생활쓰레기를 말하며, 각 구별로 지정된 종량제봉투에 담아 버려야 한다.</li>
						<li>종량제 봉투는 슈퍼마켓 등 일반 상점에서 구매 가능하며, 규격이 다양(10, 20, 30, 50, 100리터)하나, 일반 가정에서는 10리터나 20리터가 적당하다.</li>
					</ul>

					<h5>
						<i class="fas fa-caret-right"></i> 음식물 쓰레기

					</h5>
					<ul>
						<li>음식조리 후 버리는 식품쓰레기, 먹고 남긴 음식 등을 말하며, 음식물 쓰레기는 다시 가공하여 가축의 사료나 퇴비로 사용하기 때문에 이물질(비닐, 병뚜껑 등)과 물기를 최대한 제거 하고 버려야 한다. </li>
						<li>아파트의 경우 단지 내에 있는 음식물 수거통에 넣고, 단독주택의 경우 배출전용용기에 담아(용량에 맞는 납부필증을 부착하여야 함) 집 앞에 놓아두면 처리반이 수거해 간다. 납부필증은 종량제봉투 판매소에서 구매할 수 있다.</li>
					</ul>
					
					<h5>
						<i class="fas fa-caret-right"></i> 재활용품
					</h5>
					<ul>
						<li>일반적으로 종이류, 유리류, 플라스틱류, 금속캔류 등으로 구분하여, 매주 지정된 날짜에 집 앞에 배출하면 된다.</li>
					</ul>
					
					<!-- 표 시작 -->
						      <table>
						        <thead>
						            <tr>
						                <th>구분</th>
						                <th>재활용 가능</th>
						                <th>재활용 불가능</th>
						            </tr>
						        </thead>
						        <tbody>
						            <tr>
						                <td>종이류</td>
						                <td>신문지, 책, 공책, 포장지, 골판지, 종이백, 종이상자, 종이 또는 종이팩 표기가 있는 것</td>
						                <td>비닐코팅된 종이백, 비닐코팅된 종이컵</td>
						            </tr>
						            <tr>
						                <td>유리류</td>
						                <td>맥주병, 소주병, 탄산 음료병, 유리 표시가 있는 것</td>
						                <td>판유리, 거울, 내열 처리된 식기, 유백색(우유빛색) 병, 화장품 용기, 사기접시</td>
						            </tr>
						            <tr>
						                <td>고철류</td>
						                <td>음료수캔, 스프레이 캔, 부탄가스통, 알루미늄, 스테인레스 식기, 공구, 철사 철 또는 철사 표시가 있는 것</td>
						                <td>페인트 통, 기름통 또는 유해물 포장용기</td>
						            </tr>
						        </tbody>
						        <thead>
						            <tr>
						                <th>구분</th>
						                <th>재활용 가능</th>
						                <th>재활용 불가능</th>
						            </tr>
						        </thead>
						        <tbody>
						            <tr>
						                <td>스티로폼</td>
						                <td>가전제품 등의 충격완화를 위한 포장용기, 생산이나 과일 운반을 위한 용기, 깨끗한 컬러만 용기</td>
						                <td>일회용접시</td>
						            </tr>
						            <tr>
						                <td>플라스틱</td>
						                <td>PET, HIPE, LDPE, PP, PS, PVC, OT 표시가 있는 것</td>
						                <td>필기구, 단추, 소켓, 장난감, 유아용 보행기, 전화기, 일회용 카메라, 전기난로</td>
						            </tr>
						            <tr>
						                <td>비닐봉투</td>
						                <td>라면, 과자봉지 등</td>
						                <td>오염된 비닐봉투</td>
						            </tr>
						            <tr>
						                <td>형광등</td>
						                <td>깨지지 않은 형광등</td>
						                <td>깨진 형광등, 전구</td>
						            </tr>
						            <tr>
						                <td>폐건전지</td>
						                <td>폐건전지 수거함에 배출</td>
						                <td>-</td>
						            </tr>
						        </tbody>
						    </table>
					<!-- 표 끝 -->
					
					<br>
					<br>

					<h5>
						<i class="fas fa-caret-right"></i> 대형폐기물
					</h5>

					<br>
					<ul>
						<li>가전제품류(냉장고, TV, 세탁기, 에어컨 등)는 폐가전 수거 예약센터 () 또는 콜센터 전화(1599-0903)를 통해 방문수거를 요청합니다.</li>
						<li> 가구류(옷장, 침대, 테이블 등)는 구청 홈페이지에서 인터넷으로 신청하거나 동 주민센터를 직접 방문해 스티커를 구입하여 붙인 후 지정된 장소에 내놓아야 한다.</li>
						<li> 스티커 가격은 물건의 종류와 부피에 따라 다양하므로 관할 주민센터에 문의 후 구입하면 된다.</li>
					</ul>

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