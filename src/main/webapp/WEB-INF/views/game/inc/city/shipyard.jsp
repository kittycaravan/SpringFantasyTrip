<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>	
<!-- 조선소 메뉴 -->
<c:url var="u" value="city">
	<c:param name="loc" value="${gameParam.loc}" />
</c:url>
<c:set var="flag" value=" 📍 " />
<fieldset>
	<legend>조선소</legend>
	<c:if test="${gameParam.cmd == 'buy'}"> ${flag} </c:if>		<a href="${u}&cmd=buy">구입</a>
	<c:if test="${gameParam.cmd == 'sell'}"> ${flag} </c:if>		<a href="${u}&cmd=sell">매각</a>
	<c:if test="${gameParam.cmd == 'repair'}"> ${flag} </c:if>		<a href="${u}&cmd=repair">수리</a>
	<c:if test="${gameParam.cmd == 'remodel'}"> ${flag} </c:if>		<a href="${u}&cmd=remodel">개조</a>
	<c:if test="${gameParam.cmd == 'shipside'}"> ${flag} </c:if>		<a href="${u}&cmd=shipside">도크</a>
</fieldset>

<c:if test="${gameParam.cmd == 'buy'}">
	<%@include file="shipyard/buy.jsp"%>
</c:if>
<c:if test="${gameParam.cmd == 'sell'}">
	<%@include file="shipyard/sell.jsp"%>
</c:if>
<c:if test="${gameParam.cmd == 'repair'}">
	<%@include file="shipyard/repair.jsp"%>
</c:if>
<c:if test="${gameParam.cmd == 'remodel'}">
	<%@include file="shipyard/remodel.jsp"%>
</c:if>
<c:if test="${gameParam.cmd == 'shipside'}">
	<%@include file="shipyard/shipside.jsp"%>
</c:if>