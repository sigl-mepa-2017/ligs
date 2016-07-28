<%@ taglib prefix="sf" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="from" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%--
  Created by IntelliJ IDEA.
  User: claebo_c
  Date: 25/07/2016
  Time: 16:25
  To change this template use File | Settings | File Templates.
--%>
<%@ include file="/WEB-INF/views/includes/common.jsp" %>


    <div class="container">
        <%--<c:if test="${is_connected}">--%>
            <div class="well bs-component">
                <legend>Créer une nouvelle contrepartie pour ${project.getName()}</legend>
            <sf:form method="post" modelAttribute="newReward" action="/core/preinvest/rewardAdd/processCreation/${newProject}">
                <div class="control-group">
                    <label class="control-label">Nom de la contrepartie</label>
                    <div class="controls">
                        <td><form:input path="Name" class="form-control input-lg" placeholder="Définissez le nom de la contrepartie" required="required" /></td>
                    </div>
                </div>
                <br/>
                <div class="control-group">

                    <label class="control-label">Montant de départ(€):</label>
                    <div id="keypress"
                         class="InvestFormInside noUi-target noUi-ltr noUi-horizontal noUi-background col-md-12"></div>
                    <div class=control-label">
                        <td><form:input path="costStart" class="form-control input-lg" placeholder="Montant à partir du quel la contrepartie s'applique" id="input-with-keypress"
                              type="text" required="required" readonly="true" />
                        </td>
                    </div>

                </div>
                <br/>

                <div class="control-group">
                    <label class="control-label">Description</label>
                    <div class="controls">
                        <td><form:textarea path="description" class="form-control input-lg" placeholder="Description" style="margin-top: 0px;"/></td>
                    </div>
                </div>
                <br/>


                <div class="control-group">
                   <button type="submit" class="btn btn-default">Ajouter la contrepartie</button>
                </div>
            </sf:form>
                </div>
<%--
        </c:if>
        <c:if test="${!is_connected}">
            <h1> Vous devez être connecté pour ajouter un projet.</h1>
        </c:if>

--%>
    </div>

<script>
    var startStep = 0;
    startStep = Number(startStep).toFixed();
    var stepSlider = 5;
    stepSlider = Number(stepSlider).toFixed();
    var maxSlider = ${project.goalAmount};
</script>

<c:url var="investSliderJs" value="/js/investment/nouislider.min.js"/>
<script src="${investSliderJs}"></script>
<c:url var="investSliderPersoJs" value="/js/investment/slider.js"/>
<script src="${investSliderPersoJs}"></script>

