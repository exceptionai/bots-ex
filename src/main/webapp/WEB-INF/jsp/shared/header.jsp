<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page isErrorPage="true" %>

<header>
    <div class="row mx-0 -bg-card">
        <img src="<c:url value="/resources/img/logo.png" />"
             alt="logo exception">
        <div class="_container title-container">
            <h1 class="application-title">Exception</h1>
        </div>
    </div>
    <nav class="navbar navbar-expand-lg sticky-top">
        <div class="collapse navbar-collapse container"
             id="navbarSupportedContent">
            <ul class="navbar-nav mr-auto">
                <li class="nav-item ${(param.selected eq "bot") ? 'active' : ''}"><a class="nav-link"
                                        href="${param.path}/bot">Bots</a></li>
                <li class="nav-item ${(param.selected eq "segment") ? 'active' : ''}"><a class="nav-link"
                                               href="${param.path}/segment">Segmentos</a></li>
            </ul>
            <ul class="user-area navbar-nav d-flex align-items-center">
                <li><a target="_blank" href="https://github.com/exceptionai/bots-ex"><i class="fas fa-project-diagram"></i></a></li>
                <li><a target="_blank" href="https://github.com/exceptionai/mobo"><i class="fas fa-mobile-alt"></i></a></li>
                <li><span class="text-light pr-2">Lucas_Alessandro</span> <img
                        src="<c:url value="/resources/img/profilepicture.png" />"
                        class="rounded-circle" alt="Cinque Terre"></li>
            </ul>
        </div>
    </nav>
</header>