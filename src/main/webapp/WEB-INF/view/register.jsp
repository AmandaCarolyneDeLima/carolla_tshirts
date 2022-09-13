<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="t" tagdir="/WEB-INF/tags"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<t:template title="Carolla T-shirts">
    <jsp:body>
        <div class="container">
            <div class="ml-3 mt-5">
        <form action="cadastro" method="post">

            <div class="py-3">
                <b>Descrição da camiseta:</b> <input type="text" class="form-control" name="descricao">
            </div>

            <div class="py-3">
            <b>Cor:</b> <input type="text" class="form-control" name="cor">
            </div>

    <fieldset>
        <div class="py-3">
            <b>Tamanho:</b>
        <div>
            <input type="radio" id="p" name="tamanho" value="P">
            <label for="p">P</label>
        </div>
        <div>
            <input type="radio" id="m" name="tamanho" value="M">
            <label for="m">M</label>
        </div>
        <div>
            <input type="radio" id="g" name="tamanho" value="G">
            <label for="g">G</label>
        </div>
        <div>
            <input type="radio" id="gg" name="tamanho"  value="GG">
            <label for="gg">GG</label>
        </div>
        </div>
    </fieldset>

            <div class="d-grid gap-2 col-6 mx-auto">
                <button class="btn btn-warning px-5" type="submit">Salvar</button>
            </div>
</form>
        </div>
        </div>
        <script>
            window.onload =  function (){
                //plugin https://igorescobar.github.io/jQuery-Mask-Plugin
                $('#descricao').mask(' ');
                //ajax get para listar os tamanhos
                $.get('tamanho', function(data) {
                    let $select = $('#tamanho');
                    $.each(data, function(index, item) {
                        $('<option>').val(index).text(item).appendTo($select);
                    });
                });
                //persiste no localstorage o tamanho selecionado
                $('#tamanho').change(function (){
                    localStorage['tamanho'] = $(this).find(':selected').text();
                });
            }
        </script>





    </jsp:body>
</t:template>
