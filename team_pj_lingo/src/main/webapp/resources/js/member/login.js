/**
 * 
 */
 //이메일체크
 function selectEmailChk() {
      // 이메일 주소를 select 박스로 선택하면 그 값이 userEmail2로 들어가도록 한다.
      if(document.inputform.u_email3.value == "0") {  // 직접입력
         document.inputform.u_email2.value = "";
         document.inputform.u_email2.focus();
         return false;
      } 
      else {
         document.inputform.u_email2.value = document.inputform.u_email3.value;
         return false;
      }
      
   }
   
  //아이디 중복확인 버튼 클릭시
  // 1. 중복확인 페이지 open 
 function confirmId(){
	alert("중복확인");
	
}
 
 // 2.join.jsp - onsubmit - 회원가입페이지 필수체크 
 function signInCheck(){
	
}
 

