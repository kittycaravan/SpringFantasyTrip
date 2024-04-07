<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>	
<!-- 왕궁 메뉴 -->
<c:url var="u" value="city">
	<c:param name="loc" value="${gameParam.loc}" />
</c:url>
<c:set var="flag" value=" 📍 " />
<fieldset>
	<legend>왕궁</legend>
	<c:if test="${gameParam.cmd == 'army'}"> ${flag} </c:if>		<a href="${u}&cmd=army">군사투자</a>
</fieldset>

<c:if test="${gameParam.cmd == 'army'}">
	<%@include file="place/army.jsp"%>
</c:if>