<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<fieldset id="fs_info_city">
<%-- 	<legend><%=city.name%></legend> --%>
	<legend>${city.name}</legend>
	<fieldset>
		<legend>지역정보</legend>
<%-- 		<span><%=city.latitude%></span> --%>
		<!-- 위도 표시 -->
		<span>todo위도</span>
		<!-- 경도 표시 -->
<%-- 		<span><%=city.longitude%></span> --%>
		<span>todo경도</span>
<%-- 		<span>소속국가: <%=city.nation%></span> <span>도시상태: 통상</span> <span>발전도: --%>
<%-- 			<%=city.devShop%></span> <span>무장도: <%=city.devArmy%></span> --%>
		<span>소속국가: todo</span> <span>도시상태: todo통상</span> <span>발전도:
			todo</span> <span>무장도: todo</span>
	</fieldset>
	<fieldset>
		<legend>점유율</legend>
		<ol>
			<li>알고트상회: 72%todo</li>
			<li>카스톨상회: 28% , 함대 수 1 todo</li>
		</ol>
	</fieldset>
	<fieldset>
		<legend>특산품</legend>
		<span>소금</span> <span>아몬드</span> <span>올리브유</span> <span>철포</span> <span>사프란</span>
	</fieldset>
</fieldset>
