<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="t" tagdir="/WEB-INF/tags"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<t:template title="Carolla T-shirts">
    <jsp:body>
        Contador Global: ${counterApplication}<br>
        Contador Sessão: ${counterSession}<br>
        A camiseta com <b>Descrição:</b> ${descricaoT} <b>Cor:</b> ${corT} e <b>Tamanho:</b> ${tamanhoT} foi salva com sucesso!!
    </jsp:body>
</t:template>