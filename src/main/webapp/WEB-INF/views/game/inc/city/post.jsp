<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>	
<!-- 교역소 메뉴 -->
<c:url var="u" value="city">
	<c:param name="loc" value="${gameParam.loc}" />
</c:url>
<c:set var="flag" value=" 📍 " />

<fieldset>
	<legend>교역소</legend>
	<c:if test="${gameParam.cmd == 'trade'}"> ${flag} </c:if>		<a href="${u}&cmd=trade">교역</a>
	<c:if test="${gameParam.cmd == 'c_inv'}"> ${flag} </c:if>		<a href="${u}&cmd=c_inv">상업투자</a>
	<c:if test="${gameParam.cmd == 'market_info'}"> ${flag} </c:if>
	<a href="${u}&cmd=market_info">시세정보</a>
</fieldset>

<c:if test="${gameParam.cmd == 'trade'}">
	<%@include file="post/trade.jsp"%>
</c:if>
<c:if test="${gameParam.cmd == 'c_inv'}">
	<%@include file="post/c_inv.jsp"%>
</c:if>
<c:if test="${gameParam.cmd == 'market_info'}">
	<%@include file="post/market_info.jsp"%>
</c:if>