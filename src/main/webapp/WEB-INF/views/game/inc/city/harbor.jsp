<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>	
<!-- 항구 메뉴 -->
<c:url var="u" value="city">
	<c:param name="loc" value="${gameParam.loc}" />
</c:url>
<c:set var="flag" value=" 📍 " />
<fieldset>
	<legend>항구</legend>
	<c:if test="${gameParam.cmd == 'supply'}"> ${flag} </c:if>		<a href="${u}&cmd=supply">보급</a>
	<c:if test="${gameParam.cmd == 'sail'}"> ${flag} </c:if>		<a href="${u}&cmd=sail">출항</a>
	<c:if test="${gameParam.cmd == 'shipside'}"> ${flag} </c:if>		<a href="${u}&cmd=shipside">도크</a>
	<c:if test="${gameParam.cmd == 'baggageplan'}"> ${flag} </c:if>		<a href="${u}&cmd=baggageplan">짐편성</a>
</fieldset>

<c:if test="${gameParam.cmd == 'supply'}">
	<%@include file="harbor/supply.jsp"%>
</c:if>
<c:if test="${gameParam.cmd == 'sail'}">
	<%@include file="harbor/sail.jsp"%>
</c:if>
<c:if test="${gameParam.cmd == 'shipside'}">
	<%@include file="harbor/shipside.jsp"%>
</c:if>
<c:if test="${gameParam.cmd == 'baggageplan'}">
	<%@include file="harbor/baggageplan.jsp"%>
</c:if>