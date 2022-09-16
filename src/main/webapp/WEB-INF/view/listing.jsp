<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="t" tagdir="/WEB-INF/tags"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<t:template title="Carolla T-shirts">
    <jsp:body>
        Contador Global: ${counterApplication}<br>
        Contador Sessão: ${counterSession}<br>

        <center><h2>Listagem de t-shirts inseridas no sistema:</h2></center>
        <c:if test="${not empty tshirts}">
            <ul>
                <c:forEach var="tshirt" items="${tshirts}">
                    <li>${tshirt.descricaoT} - ${tshirt.corT} - ${tshirt.tamanhoT}</li>
                </c:forEach>
            </ul>
        </c:if>
        <c:if test="${empty tshirts}">
            Ainda não há camisetas cadastradas!
        </c:if>



    </jsp:body>
</t:template>