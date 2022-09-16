package br.edu.utfpr.carolla_tshirts.controller;

import br.edu.utfpr.carolla_tshirts.model.domain.Brand;
import br.edu.utfpr.carolla_tshirts.model.domain.Tshirt;
import br.edu.utfpr.carolla_tshirts.service.BrandService;
import br.edu.utfpr.carolla_tshirts.service.TshirtService;
import br.edu.utfpr.carolla_tshirts.service.AbstractService;
import br.edu.utfpr.carolla_tshirts.util.Constants;
import lombok.NonNull;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

import static org.hibernate.boot.model.naming.ImplicitNamingStrategyComponentPathImpl.process;

@WebServlet(name = "BrandServlet", value = "/marcas")
public class BrandController extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String param = request.getParameter("estado");
        if (param == null){
            request.getRequestDispatcher("/WEB-INF/view/brand.jsp").forward(request, response);
        }else {
            request.getRequestDispatcher("/WEB-INF/view/brand-success.jsp").forward(request, response);
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String nome = request.getParameter("nome");

        String nomeM = nome(nome);
        request.setAttribute("flash.nomeM", nomeM);

//instanciar uma classe tshirt
        Brand brand = new Brand(nomeM);
        //instanciar o register service
        BrandService brandService = new BrandService();
        //pedir para o service salvar o obj tshirt e colocar try no service
        boolean retorno =  brandService.save(brand);
        System.out.printf("aaa" + retorno);
        //fazer retornar v ou f
        //fazer o redirect para a page sucesso

        process(request, response);

//        Tshirt tshirt = new Tshirt(descricaoT, corT, tamanhoT);
//        request.setAttribute("flash.tshirt", tshirt);
        response.sendRedirect("marcas?estado=sucesso");
    }

    private String nome(String nome){
        return nome;
    }
    private void process(HttpServletRequest request, HttpServletResponse response) throws IOException {
        //Escopo de aplicaçao
        Integer counterApplication = (Integer) getServletContext().getAttribute(Constants.COUNTER_APPLICATION);
        if(counterApplication == null){
            counterApplication = 0;
        }
        counterApplication++;
        getServletContext().setAttribute(Constants.COUNTER_APPLICATION, counterApplication);

        //Escopo de sessao
        Integer counterSession = (Integer) request.getSession(true).getAttribute(Constants.COUNTER_SESSION);
        if(counterSession == null){
            counterSession = 0;
        }
        counterSession++;
        request.getSession(true).setAttribute(Constants.COUNTER_SESSION, counterSession);

        //Cookies
        Cookie cookie = new Cookie("counter", String.valueOf(counterSession));
        cookie.setMaxAge(60 * 60 * 24);// 1 dia

        //temporario
        Cookie cookies = new Cookie("counter", String.valueOf(counterSession));
        cookies.setMaxAge(-1);// fecha navegador, ele apaga

        response.addCookie(cookie);

    }
}

