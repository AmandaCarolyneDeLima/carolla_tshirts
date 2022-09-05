<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="t" tagdir="/WEB-INF/tags"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<t:template title="Carolla T-shirts">
    <jsp:body>
<form action="marcas" method="post">
    Nome da marca: <input type="text" name="nome">
    <button>Salvar</button>
</form>
    </jsp:body>
</t:template>