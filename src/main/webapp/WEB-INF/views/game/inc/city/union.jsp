<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>	
<!-- 조합 메뉴 -->
<c:url var="u" value="city">
	<c:param name="loc" value="${gameParam.loc}" />
</c:url>
<c:set var="flag" value=" 📍 " />
<fieldset>
	<legend>조합</legend>
	<c:if test="${gameParam.cmd == 'buy'}"> ${flag} </c:if>		<a href="${u}&cmd=buy">아이템 구입</a>
	<c:if test="${gameParam.cmd == 'sell'}"> ${flag} </c:if>		<a href="${u}&cmd=sell">아이템 매각</a>
	<c:if test="${gameParam.cmd == 'offer'}"> ${flag} </c:if>		<a href="${u}&cmd=offer">의뢰 하기/중단</a>
</fieldset>

<c:if test="${gameParam.cmd == 'buy'}">
	<%@include file="union/buy.jsp"%>
</c:if>
<c:if test="${gameParam.cmd == 'sell'}">
	<%@include file="union/sell.jsp"%>
</c:if>
<c:if test="${gameParam.cmd == 'offer'}">
	<%@include file="union/offer.jsp"%>
</c:if>