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
		<p>금화 10닢이네.</p>
	</fieldset>
	<fieldset class="g">
		<legend>&nbsp;${city.bar_man_name}&nbsp;</legend>
		<img class="img_g" src="${cp}/resources/game/img/g/${city.bar_man_id}.jpg">
		<div class="g_box">
			${mcp.msg}
			<br><br>
			<p>
				<!-- varStartus 속성에 이름 주면 그 이름객체.index 로 해서 인덱스를 구할 수 있음. 0.. 1.. 식으로 -->
				<!-- mcp.choices 리스트 수 만큼 돌면서 mcp.answerProcCmdNames 리스트도(같은 갯수를 넣어서 전달됨) -->
				<!-- 같이 하나씩 꺼내게 됨. -->
				<!-- mcp.answerProcCmdNames 는 리스트(ArrayList)이지만 el 에서는 배열처럼 꺼내는게 가능함 -->
				<c:forEach var="c" items="${mcp.choices}" varStatus="loop">
					<a href="${u}&cmd=drink3&answer=${mcp.answerProcCmdNames[loop.index]}">${c}</a>
				</c:forEach>
			</p>
		</div>
	</fieldset>
</fieldset>	