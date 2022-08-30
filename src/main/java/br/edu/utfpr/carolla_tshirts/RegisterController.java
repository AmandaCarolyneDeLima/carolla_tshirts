package br.edu.utfpr.carolla_tshirts;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "RegisterServlet", value = "/cadastro")
public class RegisterController extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String param = request.getParameter("estado");
        if (param == null){
            request.getRequestDispatcher("/WEB-INF/view/register.jsp").forward(request, response);
        }else {
            request.getRequestDispatcher("/WEB-INF/view/listing.jsp").forward(request, response);
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String descricao = request.getParameter("descricao");
        String cor = request.getParameter("cor");
        String tamanho = request.getParameter("tamanho");

        String descricaoT = descricao(descricao);
        request.setAttribute("flash.descricaoT", descricaoT);
        String corT = descricao(cor);
        request.setAttribute("flash.corT", corT);
        String tamanhoT = descricao(tamanho);
        request.setAttribute("flash.tamanhoT", tamanhoT);

        response.sendRedirect("cadastro?estado=sucesso");

    }

    private String descricao(String descricao){
        return descricao;
    }

    private String cor(String cor){
        return cor;
    }

    private String tamanho(String tamanho){
        return tamanho;
    }
}
