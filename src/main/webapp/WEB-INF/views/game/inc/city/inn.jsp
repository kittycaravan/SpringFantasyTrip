<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>	
<!-- 여관 메뉴 -->
<c:url var="u" value="city">
	<c:param name="loc" value="${gameParam.loc}" />
</c:url>
<c:set var="flag" value=" 📍 " />
<fieldset>
	<legend>여관</legend>
	<c:if test="${gameParam.cmd == 'one'}"> ${flag} </c:if>		<a href="${u}&cmd=one">하루숙박</a>
	<c:if test="${gameParam.cmd == 'many'}"> ${flag} </c:if>		<a href="${u}&cmd=many">며칠숙박</a>	
</fieldset>

<c:if test="${gameParam.cmd == 'one'}">
	<%@include file="inn/one.jsp"%>
</c:if>
<c:if test="${gameParam.cmd == 'many'}">
	<%@include file="inn/many.jsp"%>
</c:if>