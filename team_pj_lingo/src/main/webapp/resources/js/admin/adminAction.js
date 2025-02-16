/**
 * 
 */
function loadContent(url) {
  fetch(url, {cache: "no-store"}) // 캐시 방지
    .then(response => {
      if (!response.ok) {
        throw new Error("HTTP error " + response.status);
      }
      return response.text();
    })
    .then(data => {
      $("#adminView").html(data);
    })
    .catch(error => {
      console.error("Fetch 요청 실패:", error);
      alert("요청 처리 중 오류가 발생했습니다. 다시 시도해 주세요.");
    });
}

$(document).ready(function() {
    $("#memberBtn").click(function() {
        loadContent("/team_pj_lingo/adminMemberList.ad");
    });

    $("#insertBtn").click(function() {
        loadContent("/team_pj_lingo/insertAdmin.ad");
    });
    
     $("#adminBtn").click(function() {
        loadContent("/team_pj_lingo/adminList.ad");
    });
    
     $("#boardBtn").click(function() {
        loadContent("/team_pj_lingo/adminBoardList.ad");
    });
    
     $("#noticeBtn").click(function() {
        loadContent("/team_pj_lingo/adminNoticeList.ad");
    });
    
     $("#noticeInsertBtn").click(function() {
        loadContent("/team_pj_lingo/adminNoticeInsert.ad");
    });
    
    $("#noticeInsertBtn").click(function() {
        loadContent("/team_pj_lingo/adminNoticeInsert.ad");
    });
    
     $("#reportBtn").click(function() {
        loadContent("/team_pj_lingo/adminBoardReportList.ad");
    });
    
  
  }); 
  
  
  
     





