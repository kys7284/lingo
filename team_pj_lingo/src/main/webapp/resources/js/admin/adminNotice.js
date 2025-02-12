/**
 * 
 */
 
$(function() {
	$(document).ready(function() { 
		  $("#deleteBtn").click(function() { 
		    if (confirm("공지사항을 삭제하시겠습니까?")) {
		      window.location.href = "${path}/memberDelete.do";
		    } 
		  });
		});
})