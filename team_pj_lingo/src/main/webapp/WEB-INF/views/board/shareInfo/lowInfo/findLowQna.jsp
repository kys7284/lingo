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
				<img src="${path}/resources/images/low1.jpg"
					style="height: 600px; width: 1300px;" "alt="">
				<div class="content">
					<br>

					<!-- 즉문즉답 시작 -->
					<div class="accordion accordion-flush" id="mainAccordion"
						style="width: 1000px; margin: 0 auto;">
						<!-- 비자 & 체류 관련 -->
						<div class="accordion-item">
							<h2 class="accordion-header">
								<button class="accordion-button-main collapsed" type="button"
									data-bs-toggle="collapse" data-bs-target="#visaSection"
									aria-expanded="false" aria-controls="visaSection">
									<strong><i class="fas fa-caret-right"></i>비자 & 체류 관련</strong>
								</button>
							</h2>
							<div id="visaSection" class="accordion-collapse collapse show"
								data-bs-parent="#mainAccordion">
								<div class="accordion-body">
									<div class="accordion accordion-flush" id="visaSubAccordion">
										<div class="accordion-item">
											<h2 class="accordion-header">
												<button class="accordion-button collapsed" type="button"
													data-bs-toggle="collapse" data-bs-target="#visa1"
													aria-expanded="false" aria-controls="visa1">
													<strong>한국에서 비자 연장을 어떻게 하나요?</strong>
												</button>
											</h2>
											<div id="visa1" class="accordion-collapse collapse"
												data-bs-parent="#visaSubAccordion">
												<div class="accordion-body">출입국외국인청(www.hikorea.go.kr)에서
													온라인 신청 또는 방문 신청 가능. 기한 내 연장하지 않으면 과태료 발생.</div>
											</div>
										</div>

										<div class="accordion-item">
											<h2 class="accordion-header">
												<button class="accordion-button collapsed" type="button"
													data-bs-toggle="collapse" data-bs-target="#visa2"
													aria-expanded="false" aria-controls="visa2">
													<strong>한국에서 체류 기간을 초과하면 어떻게 되나요?</strong>
												</button>
											</h2>
											<div id="visa2" class="accordion-collapse collapse"
												data-bs-parent="#visaSubAccordion">
												<div class="accordion-body">불법 체류로 간주되며 강제 출국 또는 입국 제한
													가능. 초과 기간에 따라 벌금 부과.</div>
											</div>
										</div>

										<div class="accordion-item">
											<h2 class="accordion-header">
												<button class="accordion-button collapsed" type="button"
													data-bs-toggle="collapse" data-bs-target="#visa3"
													aria-expanded="false" aria-controls="visa3">
													<strong>한국에서 일할 수 있는 비자는 무엇인가요?</strong>
												</button>
											</h2>
											<div id="visa3" class="accordion-collapse collapse"
												data-bs-parent="#visaSubAccordion">
												<div class="accordion-body">취업비자(E-7), 특정활동비자(E-5),
													교수(E-1), 예술·흥행비자(E-6) 등 목적에 따라 다름.</div>
											</div>
										</div>

										<div class="accordion-item">
											<h2 class="accordion-header">
												<button class="accordion-button collapsed" type="button"
													data-bs-toggle="collapse" data-bs-target="#visa4"
													aria-expanded="false" aria-controls="visa4">
													<strong>비자가 만료되기 전에 연장 신청해야 하나요?</strong>
												</button>
											</h2>
											<div id="visa4" class="accordion-collapse collapse"
												data-bs-parent="#visaSubAccordion">
												<div class="accordion-body">네, 만료 4개월 전부터 신청 가능하며, 늦어도
													2~3주 전에 신청하는 것이 좋음.</div>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>

						<br>

						<!-- 노동법 & 근로자 권리 -->
						<div class="accordion-item">
							<h5 class="accordion-header">
								<button class="accordion-button-main collapsed" type="button"
									data-bs-toggle="collapse" data-bs-target="#laborSection"
									aria-expanded="false" aria-controls="laborSection">
									<strong><i class="fas fa-caret-right"></i>노동법 & 근로자 권리</strong>
								</button>
							</h5>
							<div id="laborSection" class="accordion-collapse collapse"
								data-bs-parent="#mainAccordion">
								<div class="accordion-body">
									<div class="accordion accordion-flush" id="laborSubAccordion">
										<div class="accordion-item">
											<h2 class="accordion-header">
												<button class="accordion-button collapsed" type="button"
													data-bs-toggle="collapse" data-bs-target="#labor1"
													aria-expanded="false" aria-controls="labor1">
													<strong>한국에서 외국인 노동자의 최저임금은 얼마인가요?</strong>
												</button>
											</h2>
											<div id="labor1" class="accordion-collapse collapse"
												data-bs-parent="#laborSubAccordion">
												<div class="accordion-body">2025년 기준 시급 10,030원.</div>
											</div>
										</div>

										<div class="accordion-item">
											<h2 class="accordion-header">
												<button class="accordion-button collapsed" type="button"
													data-bs-toggle="collapse" data-bs-target="#labor2"
													aria-expanded="false" aria-controls="labor2">
													<strong>고용주가 임금을 지급하지 않으면 어떻게 하나요?</strong>
												</button>
											</h2>
											<div id="labor2" class="accordion-collapse collapse"
												data-bs-parent="#laborSubAccordion">
												<div class="accordion-body">**고용노동부(☎ 1350,
													www.moel.go.kr)**에 신고 가능. 무료 법률 상담도 지원됨.</div>
											</div>
										</div>

										<div class="accordion-item">
											<h2 class="accordion-header">
												<button class="accordion-button collapsed" type="button"
													data-bs-toggle="collapse" data-bs-target="#labor3"
													aria-expanded="false" aria-controls="labor3">
													<strong>주 52시간 근무제는 외국인 근로자에게도 적용되나요?</strong>
												</button>
											</h2>
											<div id="labor3" class="accordion-collapse collapse"
												data-bs-parent="#laborSubAccordion">
												<div class="accordion-body">네, 한국에서 일하는 모든 근로자에게 적용됨.</div>
											</div>
										</div>

										<div class="accordion-item">
											<h2 class="accordion-header">
												<button class="accordion-button collapsed" type="button"
													data-bs-toggle="collapse" data-bs-target="#labor4"
													aria-expanded="false" aria-controls="labor4">
													<strong>한국에서 외국인도 실업급여 받을 수 있나요?</strong>
												</button>
											</h2>
											<div id="labor4" class="accordion-collapse collapse"
												data-bs-parent="#laborSubAccordion">
												<div class="accordion-body">고용보험 가입 후 일정 기간(180일) 이상
													근무했다면 받을 수 있음.</div>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>

						<br>

						<!-- 결혼 & 가족 -->
						<div class="accordion-item">
							<h5 class="accordion-header">
								<button class="accordion-button-main collapsed" type="button"
									data-bs-toggle="collapse" data-bs-target="#laborSection3"
									aria-expanded="false" aria-controls="laborSection3">
									<strong><i class="fas fa-caret-right"></i>결혼 & 가족</strong>
								</button>
							</h5>
							<div id="laborSection3" class="accordion-collapse collapse"
								data-bs-parent="#mainAccordion">
								<div class="accordion-body">
									<div class="accordion accordion-flush" id="laborSubAccordion">
										<div class="accordion-item">
											<h2 class="accordion-header">
												<button class="accordion-button collapsed" type="button"
													data-bs-toggle="collapse" data-bs-target="#labor11"
													aria-expanded="false" aria-controls="labor11">
													<strong>외국인이 한국인과 결혼하면 자동으로 한국 국적을 받나요?</strong>
												</button>
											</h2>
											<div id="labor11" class="accordion-collapse collapse"
												data-bs-parent="#laborSubAccordion">
												<div class="accordion-body">아니요. 결혼 후 일정 기간(약 2~3년)
													체류하면서 귀화 신청해야 함.</div>
											</div>
										</div>

										<div class="accordion-item">
											<h2 class="accordion-header">
												<button class="accordion-button collapsed" type="button"
													data-bs-toggle="collapse" data-bs-target="#labor22"
													aria-expanded="false" aria-controls="labor22">
													<strong>국제결혼 후 배우자 초청이 가능한가요?</strong>
												</button>
											</h2>
											<div id="labor22" class="accordion-collapse collapse"
												data-bs-parent="#laborSubAccordion">
												<div class="accordion-body">네, F-6(결혼이민) 비자 신청 가능. 결혼
													증빙서류 필요.</div>
											</div>
										</div>

										<div class="accordion-item">
											<h2 class="accordion-header">
												<button class="accordion-button collapsed" type="button"
													data-bs-toggle="collapse" data-bs-target="#labor33"
													aria-expanded="false" aria-controls="labor33">
													<strong>다문화 가정 아이도 한국 국적을 받을 수 있나요?</strong>
												</button>
											</h2>
											<div id="labor33" class="accordion-collapse collapse"
												data-bs-parent="#laborSubAccordion">
												<div class="accordion-body">부모 중 한 명이 한국 국적이면 아이는 자동으로
													한국 국적을 가짐.</div>
											</div>
										</div>

										<div class="accordion-item">
											<h2 class="accordion-header">
												<button class="accordion-button collapsed" type="button"
													data-bs-toggle="collapse" data-bs-target="#labor44"
													aria-expanded="false" aria-controls="labor44">
													<strong>이혼하면 한국 체류가 가능한가요?</strong>
												</button>
											</h2>
											<div id="labor44" class="accordion-collapse collapse"
												data-bs-parent="#laborSubAccordion">
												<div class="accordion-body">이혼 후에도 한국에 머물려면 ‘체류 연장
													사유’가 필요함. 가정폭력 피해자 보호 조항 있음.</div>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>

					<hr>

					<!-- 부동산 & 임대차 계약 -->
					<div class="accordion-item" style="border: none;">
						<h5 class="accordion-header">
							<button class="accordion-button-main collapsed" type="button"
								data-bs-toggle="collapse" data-bs-target="#laborSection4"
								aria-expanded="false" aria-controls="laborSection4">
								<strong><i class="fas fa-caret-right"></i>부동산 & 임대차 계약</strong>
							</button>
						</h5>
						<div id="laborSection4" class="accordion-collapse collapse"
							data-bs-parent="#mainAccordion">
							<div class="accordion-body">
								<div class="accordion accordion-flush" id="laborSubAccordion">
									<div class="accordion-item">
										<h2 class="accordion-header">
											<button class="accordion-button collapsed" type="button"
												data-bs-toggle="collapse" data-bs-target="#labor12"
												aria-expanded="false" aria-controls="labor12">
												<strong>외국인도 한국에서 집을 살 수 있나요?</strong>
											</button>
										</h2>
										<div id="labor12" class="accordion-collapse collapse"
											data-bs-parent="#laborSubAccordion">
											<div class="accordion-body">네, 가능하지만 부동산 거래신고 및 외국인
												토지취득 신고가 필요할 수 있음.</div>
										</div>
									</div>

									<div class="accordion-item">
										<h2 class="accordion-header">
											<button class="accordion-button collapsed" type="button"
												data-bs-toggle="collapse" data-bs-target="#labor23"
												aria-expanded="false" aria-controls="labor23">
												<strong>전세와 월세의 차이는 무엇인가요?</strong>
											</button>
										</h2>
										<div id="labor23" class="accordion-collapse collapse"
											data-bs-parent="#laborSubAccordion">
											<div class="accordion-body">전세: 큰 보증금을 걸고 월세 없이 거주. 월세:
												적은 보증금 + 매달 월세 지급.</div>
										</div>
									</div>

									<div class="accordion-item">
										<h2 class="accordion-header">
											<button class="accordion-button collapsed" type="button"
												data-bs-toggle="collapse" data-bs-target="#labor34"
												aria-expanded="false" aria-controls="labor34">
												<strong>계약 기간 중 집주인이 갑자기 나가라고 하면?</strong>
											</button>
										</h2>
										<div id="labor34" class="accordion-collapse collapse"
											data-bs-parent="#laborSubAccordion">
											<div class="accordion-body">계약기간이 남아 있다면 법적으로 보호받을 수
												있음. 주택임대차보호법 적용.</div>
										</div>
									</div>

									<div class="accordion-item">
										<h2 class="accordion-header">
											<button class="accordion-button collapsed" type="button"
												data-bs-toggle="collapse" data-bs-target="#labor45"
												aria-expanded="false" aria-controls="labor45">
												<strong>전세보증금을 돌려받지 못하면?</strong>
											</button>
										</h2>
										<div id="labor45" class="accordion-collapse collapse"
											data-bs-parent="#laborSubAccordion">
											<div class="accordion-body">전세보증금 반환보증보험 가입 가능. 필요시 법원에
												소송 제기 가능.</div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>

					<hr>

					<!-- 의료 & 건강보험 -->
					<div class="accordion-item" style="border: none;">
						<h5 class="accordion-header">
							<button class="accordion-button-main collapsed" type="button"
								data-bs-toggle="collapse" data-bs-target="#laborSection5"
								aria-expanded="false" aria-controls="laborSection5">
								<strong><i class="fas fa-caret-right"></i>의료 & 건강보험</strong>
							</button>
						</h5>
						<div id="laborSection5" class="accordion-collapse collapse"
							data-bs-parent="#mainAccordion">
							<div class="accordion-body">
								<div class="accordion accordion-flush" id="laborSubAccordion">
									<div class="accordion-item">
										<h2 class="accordion-header">
											<button class="accordion-button collapsed" type="button"
												data-bs-toggle="collapse" data-bs-target="#labor123"
												aria-expanded="false" aria-controls="labor123">
												<strong>외국인도 건강보험에 가입해야 하나요?</strong>
											</button>
										</h2>
										<div id="labor123" class="accordion-collapse collapse"
											data-bs-parent="#laborSubAccordion">
											<div class="accordion-body">6개월 이상 체류 시 자동 가입됨.
												(국민건강보험공단 www.nhis.or.kr)</div>
										</div>
									</div>

									<div class="accordion-item">
										<h2 class="accordion-header">
											<button class="accordion-button collapsed" type="button"
												data-bs-toggle="collapse" data-bs-target="#labor234"
												aria-expanded="false" aria-controls="labor234">
												<strong>응급 상황에서 외국인도 병원 이용이 가능한가요?</strong>
											</button>
										</h2>
										<div id="labor234" class="accordion-collapse collapse"
											data-bs-parent="#laborSubAccordion">
											<div class="accordion-body">네, 응급실 이용 가능. 의료비 부담이 클 수
												있으므로 보험 가입 추천.</div>
										</div>
									</div>

									<div class="accordion-item">
										<h2 class="accordion-header">
											<button class="accordion-button collapsed" type="button"
												data-bs-toggle="collapse" data-bs-target="#labor345"
												aria-expanded="false" aria-controls="labor345">
												<strong>외국인도 예방접종을 받을 수 있나요?</strong>
											</button>
										</h2>
										<div id="labor345" class="accordion-collapse collapse"
											data-bs-parent="#laborSubAccordion">
											<div class="accordion-body">네, 보건소에서 일부 무료 접종 가능.
												코로나19, 독감 예방접종도 포함됨.</div>
										</div>
									</div>

									<div class="accordion-item">
										<h2 class="accordion-header">
											<button class="accordion-button collapsed" type="button"
												data-bs-toggle="collapse" data-bs-target="#labor456"
												aria-expanded="false" aria-controls="labor456">
												<strong>한국에서 출산하면 외국인도 출산 지원금을 받을 수 있나요?</strong>
											</button>
										</h2>
										<div id="labor456" class="accordion-collapse collapse"
											data-bs-parent="#laborSubAccordion">
											<div class="accordion-body">국민건강보험 가입 시 일부 혜택 받을 수 있음.
												다문화가정 지원 정책도 있음.</div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>

					<hr>

					<!-- 운전 & 교통법 -->
					<div class="accordion-item" style="border: none;">
						<h5 class="accordion-header">
							<button class="accordion-button-main collapsed" type="button"
								data-bs-toggle="collapse" data-bs-target="#laborSection6"
								aria-expanded="false" aria-controls="laborSection65">
								<strong><i class="fas fa-caret-right"></i>운전 & 교통법</strong>
							</button>
						</h5>
						<div id="laborSection6" class="accordion-collapse collapse"
							data-bs-parent="#mainAccordion">
							<div class="accordion-body">
								<div class="accordion accordion-flush" id="laborSubAccordion">
									<div class="accordion-item">
										<h2 class="accordion-header">
											<button class="accordion-button collapsed" type="button"
												data-bs-toggle="collapse" data-bs-target="#labor1123"
												aria-expanded="false" aria-controls="labor1123">
												<strong>외국인도 한국에서 운전면허를 받을 수 있나요?</strong>
											</button>
										</h2>
										<div id="labor1123" class="accordion-collapse collapse"
											data-bs-parent="#laborSubAccordion">
											<div class="accordion-body">네, 신규 발급 가능. 또는 자국 면허를 한국
												면허로 교환 가능.</div>
										</div>
									</div>

									<div class="accordion-item">
										<h2 class="accordion-header">
											<button class="accordion-button collapsed" type="button"
												data-bs-toggle="collapse" data-bs-target="#labor1234"
												aria-expanded="false" aria-controls="labor1234">
												<strong>한국에서 외국 면허증을 사용해도 되나요?</strong>
											</button>
										</h2>
										<div id="labor1234" class="accordion-collapse collapse"
											data-bs-parent="#laborSubAccordion">
											<div class="accordion-body">일부 국가는 국제운전면허증으로 일정 기간 운전
												가능하지만, 장기 체류 시 교환 필요.</div>
										</div>
									</div>

									<div class="accordion-item">
										<h2 class="accordion-header">
											<button class="accordion-button collapsed" type="button"
												data-bs-toggle="collapse" data-bs-target="#labor1345"
												aria-expanded="false" aria-controls="labor1345">
												<strong>음주운전 벌금이 얼마인가요?</strong>
											</button>
										</h2>
										<div id="labor1345" class="accordion-collapse collapse"
											data-bs-parent="#laborSubAccordion">
											<div class="accordion-body">혈중알코올농도 0.03% 이상이면 면허 정지 또는
												취소 + 벌금 부과.</div>
										</div>
									</div>

									<div class="accordion-item">
										<h2 class="accordion-header">
											<button class="accordion-button collapsed" type="button"
												data-bs-toggle="collapse" data-bs-target="#labor1456"
												aria-expanded="false" aria-controls="labor1456">
												<strong>대중교통에서 사고가 나면 보상을 받을 수 있나요?</strong>
											</button>
										</h2>
										<div id="labor1456" class="accordion-collapse collapse"
											data-bs-parent="#laborSubAccordion">
											<div class="accordion-body">네, 버스·지하철·택시 이용 중 사고 시 보험
												적용됨.</div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>

					<hr>
					
				</div>
				<!-- 즉문즉답 끝 -->
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