package br.edu.utfpr.carolla_tshirts.controller;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "BrandServlet", value = "/marcas")
public class BrandController extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String param = request.getParameter("estado");
        if (param == null){
            request.getRequestDispatcher("/WEB-INF/view/brand.jsp").forward(request, response);
        }else {
            request.getRequestDispatcher("/WEB-INF/view/brandSucess.jsp").forward(request, response);
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String nome = request.getParameter("nome");

        String nomeM = nome(nome);
        request.setAttribute("flash.nomeM", nomeM);

        response.sendRedirect("marcas?estado=sucesso");    }

    private String nome(String nome){
        return nome;
    }
}
