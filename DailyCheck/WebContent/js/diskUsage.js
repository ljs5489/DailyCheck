$(function() {
	$("#diskUsage").change(function() {
		var onOff = $("#diskUsage").is(":checked");
		if (onOff) {//체크 되어있다면
			$(".diskUsage").show();
		} else {
			$(".diskUsage").hide();
		}
	});//HERE
})
