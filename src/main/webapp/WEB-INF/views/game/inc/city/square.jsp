<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>	
<!-- 광장 메뉴 -->
<c:url var="u" value="city">
	<c:param name="loc" value="${gameParam.loc}" />
</c:url>
<c:set var="flag" value=" 📍 " />
<fieldset>
	<legend>광장</legend>
	<c:if test="${gameParam.cmd == 'shoptalk_1'}"> ${flag} </c:if>		<a href="${u}&cmd=shoptalk_1">1번 상점주인과 대화</a>
	<c:if test="${gameParam.cmd == 'shoptalk_2'}"> ${flag} </c:if>		<a href="${u}&cmd=shoptalk_2">2번 상점주인과 대화</a>
	<c:if test="${gameParam.cmd == 'shoptalk_3'}"> ${flag} </c:if>		<a href="${u}&cmd=shoptalk_3">3번 상점주인과 대화</a>
	<c:if test="${gameParam.cmd == 'shoptalk_4'}"> ${flag} </c:if>		<a href="${u}&cmd=shoptalk_4">4번 상점주인과 대화</a>
</fieldset>

<c:if test="${gameParam.cmd == 'shoptalk_1'}">
	<%@include file="square/shoptalk_1.jsp"%>
</c:if>
