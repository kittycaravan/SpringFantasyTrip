<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<!-- 주점 메뉴 -->
<c:url var="u" value="city">
	<c:param name="loc" value="${gameParam.loc}" />
</c:url>
<c:set var="flag" value=" 📍 " />

<fieldset>
	<legend>주점</legend>
	<c:if test="${gameParam.cmd == 'drink'}"> ${flag} </c:if>			<a href="${u}&cmd=drink">한잔한다</a>
	<c:if test="${gameParam.cmd == 'drink_shot'}"> ${flag} </c:if>	<a href="${u}&cmd=drink_shot">술을 대접한다</a>
	<c:if test="${gameParam.cmd == 'crew'}"> ${flag} </c:if>			<a href="${u}&cmd=crew">선원모집</a>
</fieldset>

<c:if test="${gameParam.cmd == 'drink'}">
	<%@include file="bar/drink.jsp"%>
</c:if>
<c:if test="${gameParam.cmd == 'drink2'}">
	<%@include file="bar/drink2.jsp"%>
</c:if>
<c:if test="${gameParam.cmd == 'drink3'}">
	<%@include file="bar/drink3.jsp"%>
</c:if>
<c:if test="${gameParam.cmd == 'drink_shot'}">
	<%@include file="bar/drink_shot.jsp"%>
</c:if>
<c:if test="${gameParam.cmd == 'crew'}">
	<%@include file="bar/crew.jsp"%>
</c:if>