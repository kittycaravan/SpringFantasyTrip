<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!-- 링크변수 초기화 -->
<c:url var="u" value="city">
	<c:param name="loc" value="${gameParam.loc}" />
</c:url>

<fieldset>
	<legend>한잔한다</legend>

	<fieldset>
		<legend>술집주인</legend>
		<p>금화 5닢이네.</p>
		<p>${city.bar_man_name} 손님이다.</p><!-- ex. 줄리아 손님이다. -->
	</fieldset>
	<fieldset class="g">
		<legend>&nbsp;${city.bar_man_name}&nbsp;</legend>
		<img class="img_g" src="${cp}/resources/game/img/g/${city.bar_man_id}.jpg">
		<div class="g_box">
			어머! ${state.user_name}님, 어서 오세요! 자, 한 잔 더 드세요.
			<p><br><br><a href="${u}&cmd=drink2">예</a>&nbsp;<a href="${u}">아니오</a></p>
		</div>
	</fieldset>

</fieldset>