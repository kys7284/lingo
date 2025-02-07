/**
 * 
 */
 $(document).ready(function() {
  $("#memberBtn").click(function() {
    $.ajax({
      url: "/team_pj_lingo/adminMemberList.ad", 
      type: "GET", 
      dataType: "html", 
      success: function(data) {
        $("#adminView").html(data); 
      },
      error: function(xhr, status, error) {
        console.error("AJAX 요청 실패: " + status + " - " + error);
      }
    });
  });
  
  $("#insertBtn").click(function() {
	    $.ajax({
	      url: "/team_pj_lingo/insertAdmin.ad", 
	      type: "GET", 
	      dataType: "html", 
	      success: function(data) {
	        $("#adminView").html(data);
	      },
	      error: function(xhr, status, error) {
	        console.error("AJAX 요청 실패: " + status + " - " + error);
	      }
	    });
	  });
	  
 $("#adminBtn").click(function() {
    $.ajax({
      url: "/team_pj_lingo/adminList.ad", 
      type: "GET", 
      dataType: "html", 
      success: function(data) {
        $("#adminView").html(data);
      },
      error: function(xhr, status, error) {
        console.error("AJAX 요청 실패: " + status + " - " + error);
      }
    });
  }); 




});