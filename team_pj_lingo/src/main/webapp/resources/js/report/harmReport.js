/**
 * 
 */
 $(function() {
	  $("#numBtn").click(function() {
	   let harm_report_num = $("#harm_report_num").val();
	  	   
	    if ($("#harm_report_num").val()==="") {
	      alert("숫자를 입력해주세요.");
	    }
	    else if (isNaN(harm_report_num)){
	    	alert("숫자만 입력해주세요.");
	    }
	   
	    else{
			
	    	location.href = "/team_pj_lingo/boardNumCheck.hr?harm_report_num="+ $("#harm_report_num").val();
	    	
	    }
	    
	  });
	  
	  
	
	  
	});
	
	