package br.edu.utfpr.carolla_tshirts.controller;


import br.edu.utfpr.carolla_tshirts.model.domain.Tshirt;
import br.edu.utfpr.carolla_tshirts.service.TshirtService;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "ListingServlet", value = "/listagem")
public class ListingController extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//        process(request, response);

        TshirtService tshirtService = new TshirtService();
        List<Tshirt> tshirts = tshirtService.findAll();
        request.setAttribute("tshirts", tshirts);
        request.getRequestDispatcher("/WEB-INF/view/listing.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    }

}
