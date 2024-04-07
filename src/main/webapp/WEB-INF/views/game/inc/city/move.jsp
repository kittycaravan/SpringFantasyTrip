<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    

	<c:url var="u" value="city" />		
	<c:set var="flag" value=" 🚩 " />	
		
	<fieldset>
		<legend>장소이동</legend>
		<c:if test="${gameParam.loc == 'city'}"> ${flag} </c:if>		<a href="${u}?loc=city">[도시]</a>
		<c:if test="${gameParam.loc == 'bar'}"> ${flag} </c:if>		<a href="${u}?loc=bar">술집</a>
		<c:if test="${gameParam.loc == 'palace'}"> ${flag} </c:if>	<a href="${u}?loc=palace">왕궁(총독부)</a>
		<c:if test="${gameParam.loc == 'square'}"> ${flag} </c:if>  	<a href="${u}?loc=square">광장</a>
		<c:if test="${gameParam.loc == 'post'}"> ${flag} </c:if>  	<a href="${u}?loc=post">교역소</a>
		<c:if test="${gameParam.loc == 'union'}"> ${flag} </c:if>  	<a href="${u}?loc=union">조합</a>
		<c:if test="${gameParam.loc == 'inn'}"> ${flag} </c:if>  		<a href="${u}?loc=inn">여관</a>
		<c:if test="${gameParam.loc == 'shipyard'}"> ${flag} </c:if> 	<a href="${u}?loc=shipyard">조선소</a>
		<c:if test="${gameParam.loc == 'harbor'}"> ${flag} </c:if>  	<a href="${u}?loc=harbor">항구</a>
	</fieldset>
