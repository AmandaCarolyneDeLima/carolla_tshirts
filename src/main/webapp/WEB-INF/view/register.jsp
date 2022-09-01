<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>Carolla T-shirts</title>
    <!-- Boostrap Styles -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">

    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

    <!-- CSS Styles -->
    <!--<link rel="stylesheet" href="<?= URL_CSS . 'principal.css'?>">-->
</head>
<body>
<header>
    <nav class="navbar navbar-expand-lg navbar-light bg-pink px-4">
        <div class="container-fluid">
            <b><a class="navbar-brand" href="index.jsp">Carolla T-shirt - Cadastro</a></b>
            <a class="nav-link" href="cadastro">Cadastro de T-shirt</a>
            <a class="nav-link" href="marcas">Cadastro de Marcas</a>
            <a class="nav-link" href="listagem">Listagem de T-shirt</a>
        </div>
    </nav>
</header>
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
<!----------------------------------------------------------------------------------------------------------------->
<!-- Boostrap script -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
<!----------------------------------------------------------------------------------------------------------------->
</body>
</html>
