<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!-- 0. 웹 애플리케이션의 루트 경로(컨텍스트 경로) 를 가져와서 링크에 다 연결해줘야 함     -->
<!-- 1. 0을 위한 준비. jstl core 태그 선언     -->
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!-- 2. 0을 위한 준비. el 태그로 가져올 수 있는데 이걸 더 짧게 찍기위해 변수 대입함.     -->    
<c:set var="cp" value="${pageContext.request.contextPath}" />
	
<!-- 교역소 메뉴 -->
<!-- <c:url var="u" value="city"> -->
<%-- 	<c:param name="loc" value="${loc}" /> --%>
<!-- </c:url> -->
<!-- <c:set var="flag" value=" 📍 " /> -->


<fieldset>
	<legend>교역</legend>
	<fieldset>
		<legend>선박</legend>
		<a href="#">바사1호</a>
	</fieldset>
	<fieldset>
		<legend>적재</legend>
		<c:forEach var="c" items="${cargos}">
			<a href="#">
				${c.goodsName} [${c.goodsGrade} 등급 / 원가 ${c.purchasePrice} 원]
			</a>
			&nbsp;&nbsp;
		</c:forEach>		
	</fieldset>
	<fieldset>
		<legend>특산품</legend>
		<a href="#">소금</a>
		<a href="#">올리브유</a>
		<a href="#">샤프란</a>
		<a href="#">아몬드</a>
		<a href="#">철포</a>
	</fieldset>
	<fieldset>
		<legend>매각품</legend>
	</fieldset>
	<fieldset>
		<legend>계산</legend>
		<p>총수입</p>
		<p>총지출</p>
		<p>잔금: </p>
	</fieldset>
	<fieldset>
		<legend>명령</legend>
		<p>다시한다</p>
		<p>결정</p>
		<p>취소</p>
	</fieldset>
	
	${test}
	${f}
</fieldset>

