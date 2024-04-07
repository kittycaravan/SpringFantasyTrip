<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!-- 링크변수 초기화 -->
<c:url var="u" value="city">
	<c:param name="loc" value="${loc}" />
</c:url>


<fieldset>
	<legend>한잔한다</legend>
	<fieldset class="g">
		<legend>&nbsp;${city.bar_man_name}&nbsp;</legend>
		<img class="img_g" src="${cp}/resources/game/img/g/${city.bar_man_id}.jpg">
		<div class="g_box">
			${mcp.msg}
		</div>
	</fieldset>
</fieldset>	