<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="t" tagdir="/WEB-INF/tags"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<t:template title="Carolla T-shirts">
    <jsp:body>

<form action="cadastro" method="post">
    Descrição da camiseta: <input type="text" name="descricao">
    Cor: <input type="text" name="cor">
    <fieldset>
        <legend> Tamanho: </legend>
        <div>
            <input type="radio" id="p" name="tamanho" value="p">
            <label for="p">P</label>
        </div>
        <div>
            <input type="radio" id="m" name="tamanho" value="m">
            <label for="m">M</label>
        </div>
        <div>
            <input type="radio" id="g" name="tamanho" value="g">
            <label for="g">G</label>
        </div>
        <div>
            <input type="radio" id="gg" name="tamanho" value="gg">
            <label for="gg">GG</label>
        </div>
    </fieldset>
    <button>Salvar</button>
</form>
    </jsp:body>
</t:template>
