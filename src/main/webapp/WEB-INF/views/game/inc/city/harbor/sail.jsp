<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!-- 0. 웹 애플리케이션의 루트 경로(컨텍스트 경로) 를 가져와서 링크에 다 연결해줘야 함     -->
<!-- 1. 0을 위한 준비. jstl core 태그 선언     -->
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!-- 2. 0을 위한 준비. el 태그로 가져올 수 있는데 이걸 더 짧게 찍기위해 변수 대입함.     -->    
<c:set var="cp" value="${pageContext.request.contextPath}" />


<fieldset>
	<legend>출항</legend>
	<fieldset>
		<legend>이동 가능한 항구들</legend>
		<p>
			<c:forEach var="c" items="${city_a_to_b}">
				<a href="${cp}/game/move?to=${c.arrivalCityNo}">
					${c.arrivalCityNo} .
					${c.arrivalCityName} (거리: ${c.distance})
				</a>
			</c:forEach>
		</p>
	</fieldset>
</fieldset>

