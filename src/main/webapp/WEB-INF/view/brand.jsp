<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="t" tagdir="/WEB-INF/tags"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<t:template title="Carolla T-shirts">
    <jsp:body>
        <div class="container">
            <div class="ml-3 mt-5">
                <form action="marcas" method="post">
                    <div class="py-3">
                        <b>Nome da marca:</b> <input type="text" class="form-control"
                                                     id="nome" name="nome"><br><br>
                    </div>
                    <div class="d-grid gap-2 col-6 mx-auto">
                        <button class="btn btn-warning px-5" type="submit">Salvar</button>
                    </div>
</form>
        </div>
        </div>
    </jsp:body>
</t:template>