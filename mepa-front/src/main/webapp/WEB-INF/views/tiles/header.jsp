<%@ include file="/WEB-INF/views/includes/common.jsp" %>
<header>
    <div class="container">
        <div class="navbar navbar-default" role="navigation">
            <div class="container-fluid">
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                        <span class="sr-only">Toggle navigation</span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                    <a class="navbar-brand" href="/home">MEPA</a>
                </div>
                <div class="navbar-collapse collapse">
                    <ul class="nav navbar-nav">
                        <c:url var="homeUrl" value="/home"/>
                        <li><a href="${homeUrl}">Home page</a></li>
                        <c:url var="coreExampleUrl" value="/example/core/"/>
                        <li><a href="${coreExampleUrl}">Core module example</a></li>
                        <c:url var="signup" value="/authentification/auth"/>
                        <li><a href="${signup}">Inscription</a></li>
                        <c:url var="signin" value="/authentification/signin"/>
                        <li><a href="${signin}">Connexion</a></li>
                        <c:url var="preinvestCoreUrl" value="/core/preinvest/projectCreate"/>
                        <li><a href="${preinvestCoreUrl}">Create Project</a></li>
                        <c:url var="investUrl" value="/invest"/>
                        <li><a href="${investUrl}">Invest</a></li>
                    </ul>
                </div>
            </div>
        </div>
    </div>
</header>
