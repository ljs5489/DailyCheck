<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!-- set -------------->
<div class="ui-grid-a">
	<div class="ui-block-a">
		<label for="currentTime">점검 시간:</label> <input type="tel"
			name="currentTime" id="currentTime" data-clear-btn="true"
			onclick="setTime($(this))">
	</div>
	<div class="ui-block-b">
		<label for="day">점검자:</label> <select name="day" id="day"
			data-native-menu="false" data-mini="true">
			<option value="mon">임성필</option>
			<option value="tue">한승훈</option>
			<option value="wed">박민</option>
			<option value="thu">이송연</option>
			<option value="fri">이진수</option>
		</select>
	</div>
</div>
<!-- /set -------------->