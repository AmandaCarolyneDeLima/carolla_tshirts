<%@tag description="Template principal" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%-- The list of normal or fragment attributes can be specified here: --%>
<%@attribute name="title"%>

<html>
<head>
    <title>${title}</title>
    <base href="${pageContext.request.contextPath}/">
    <meta http-equiv="Content-Type" content="text/html" charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <title>Carolla Food</title>

    <!-- Boostrap Styles -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

    <!-- CSS Styles -->
    <link rel="stylesheet" href="assets/resources/styles/bootstrap/bootstrap.css"></head>
<body>
   <header>
        <nav class="navbar navbar-expand-lg navbar-light bg-pink px-4">
            <div class="container-fluid">
                <b><a class="navbar-brand" href="index.jsp">Carolla T-shirt</a></b>
                <a class="nav-link" href="cadastro">Cadastro de T-shirt</a>
                <a class="nav-link" href="marcas">Cadastro de Marcas</a>
                <a class="nav-link" href="listagem">Listagem de T-shirt</a>
            </div>
        </nav>
    </header>

   <main id="content">
       <jsp:doBody></jsp:doBody>
   </main>

   <!-- rodape-->
   <footer>
       <div class="container">
           &#169; Copyright <span id="year"></span>- Todos os direitos
           reservados
       </div>
   </footer>



<!----------------------------------------------------------------------------------------------------------------->
<!-- Boostrap script -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
<!----------------------------------------------------------------------------------------------------------------->
</body>
</html>