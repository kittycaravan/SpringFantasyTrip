<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<!-- 0. 웹 애플리케이션의 루트 경로(컨텍스트 경로) 를 가져와서 링크에 다 연결해줘야 함     -->
<!-- 1. 0을 위한 준비. jstl core 태그 선언     -->
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!-- 2. 0을 위한 준비. el 태그로 가져올 수 있는데 이걸 더 짧게 찍기위해 변수 대입함.     -->    
<c:set var="cp" value="${pageContext.request.contextPath}" />


<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <title>peisia.com</title>
    <!-- 3. 적용하기 -->    
    <link rel="stylesheet" href="${cp}/resources/site/css/reset.css">
    <link rel="stylesheet" href="${cp}/resources/site/css/index.css">
</head>
<body>
    <div id="myLayout">
        <!-- ************************************************ -->
        <!-- 상단 영역 -->
        <!-- ************************************************ -->
        <div id="top">
            <div id="top_left">
                <a href="${cp}"><img id="logo" src="${cp}/resources/site/img/cat.jpg"></a>
                <p id="homepage_name">Peisia</p>
            </div>
            <div id="top_banner">
            	<a href="https://www.latale.com/events/fun/2023/2q-teaser2/intro#/">
                	<img id="banner" src="${cp}/resources/site/img/banner_635x120.jpg">
            	</a>
            </div>
            <div id="nav">            
                <a href="ft/game.jsp">FantasyTrip 게임시작</a>
                &nbsp;|&nbsp;
                <a href="#">고양이</a>
                &nbsp;|&nbsp;
                <a href="#">토끼</a>
            </div>    
        </div>
        <!-- ************************************************ -->
        <!-- 중단 영역 -->
        <!-- ************************************************ -->
        <div id="mid">
            <!-- 왼쪽 영역 -->
            <div id="mid_left">
            	<!-- 로그인 후 회원정보 영역 -->
            	
                <div id="logined">
                회원님 환영합니다.
                <a href="ServletProcLogout"><input type="button" value="로그아웃"></a>                
                </div>
                <!-- 로그인 영역 -->
                <div id="login">
                    <form action="/ServletProcLogin" method="post">
						<input id="login_id" name="id" placeholder="아이디" maxlength="10" minlength="3" value="">
						<input id="login_pw" name="pw" placeholder="암호" type="password"><br>                 
                        <input type="submit" value="로그인">
                        <a href="/member/reg_member.jsp"><input type="button" value="회원가입"></a><br>
                        ID 저장<input type="checkbox" name="auto_input_id">
                    </form>
                </div>
                <!-- 게시판(일반) 영역 -->
                <div id="board">
                    <p class="board_title">게시판</p>
                    <a href="/board/list.jsp">자유게시판</a><br>
                    <a href="#">공지게시판</a><br>
                    <a href="#">질문/답변 게시판</a>
                </div>
                <!-- 게시판(자랑하기) 영역 -->
                <div id="proud">
                    <p class="board_title">우리애 자랑하기</p>
                    <a href="#">우리 개는요~</a><br>
                    <a href="#">우리 고양이는요~</a><br>
                    <a href="#">우리 토끼는요~</a>
                </div>            
            </div>
    
            <!-- 가운데 영역 -->
            <div id="mid_mid">
