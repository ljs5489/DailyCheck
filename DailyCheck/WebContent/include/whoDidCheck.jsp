<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>


<!-- set -------------->
<div class="ui-grid-a">
	<div class="ui-block-a">
		<label for="currentTime">점검 시간:</label> <input type="tel"
			name="checktime" id="checktime" data-clear-btn="true"
			onclick="setTime($(this))">
	</div>
	<div class="ui-block-b">
		<label for="checker">점검자:</label> <select data-theme="b" name="checker"
			id="checker" data-mini="true">
			<option value="splim">임성필</option>
			<option value="shhan">한승훈</option>
			<option value="mpark">박민</option>
			<option value="sylee">이송연</option>
			<option value="jslee">이진수</option>
		</select>
	</div>
</div>
<!-- /set -------------->