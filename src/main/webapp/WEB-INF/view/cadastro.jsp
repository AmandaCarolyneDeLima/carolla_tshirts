<%--
  Created by IntelliJ IDEA.
  User: amanda
  Date: 25/08/2022
  Time: 18:55
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Carolla T-shirts</title>
</head>
<body>
    <form action="cadastro" method="post">
        Descrição da camiseta: <input type="text" name="descricao">
        Cor: <input type="text" name="cor">
        <fieldset>
            <legend> Tamanho: </legend>
            <div>
                <input type="checkbox" id="p" name="p" value="p">
                <label for="p">P</label>
            </div>
            <div>
                <input type="checkbox" id="m" name="m" value="m">
                <label for="m">M</label>
            </div>
            <div>
                <input type="checkbox" id="g" name="g" value="g">
                <label for="g">G</label>
            </div>
            <div>
                <input type="checkbox" id="gg" name="gg" value="gg">
                <label for="gg">GG</label>
            </div>
        </fieldset>
        <button>Salvar</button>
    </form>

</body>
</html>
