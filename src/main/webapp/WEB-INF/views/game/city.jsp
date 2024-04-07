<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!-- 0. 웹 애플리케이션의 루트 경로(컨텍스트 경로) 를 가져와서 링크에 다 연결해줘야 함     -->
<!-- 1. 0을 위한 준비. jstl core 태그 선언     -->
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!-- 2. 0을 위한 준비. el 태그로 가져올 수 있는데 이걸 더 짧게 찍기위해 변수 대입함.     -->    
<c:set var="cp" value="${pageContext.request.contextPath}" />	

<%@include file="../include_layout_forward.jsp"%>

<link rel="stylesheet" href="${cp}/resources/game/css/ft_common.css" /> <!-- 바디에 넣어도 됨  -->
<link rel="stylesheet" href="${cp}/resources/game/css/game.css" /> <!-- 바디에 넣어도 됨  -->

<!-- 도시 공통 상단 상태 창 -->
<%@include file="inc/state_info.jsp"%>
<!-- 표시:도시정보 -->
<%@include file="inc/city/info/city.jsp"%>

<!-- 도시 공통 메뉴 -->
<%@include file="inc/menu.jsp"%>

<!-- 도시 장소 이동 -->
<%@include file="inc/city/move.jsp"%>

<!-- 특정 장소 ui 처리 -->
<c:if test="${gameParam.loc == 'city'}">                                                      </c:if>
<c:if test="${gameParam.loc == 'bar'}">           <%@include file="inc/city/bar.jsp"%>        </c:if>
<c:if test="${gameParam.loc == 'palace'}">        <%@include file="inc/city/palace.jsp"%>     </c:if>
<c:if test="${gameParam.loc == 'square'}">        <%@include file="inc/city/square.jsp"%>     </c:if>
<c:if test="${gameParam.loc == 'post'}">          <%@include file="inc/city/post.jsp"%>       </c:if>
<c:if test="${gameParam.loc == 'union'}">         <%@include file="inc/city/union.jsp"%>      </c:if>
<c:if test="${gameParam.loc == 'inn'}">           <%@include file="inc/city/inn.jsp"%>        </c:if>
<c:if test="${gameParam.loc == 'shipyard'}">      <%@include file="inc/city/shipyard.jsp"%>   </c:if>
<c:if test="${gameParam.loc == 'harbor'}">        <%@include file="inc/city/harbor.jsp"%>     </c:if>

<%@include file="../include_layout_back.jsp"%>
