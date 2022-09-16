package br.edu.utfpr.carolla_tshirts.service;

import br.edu.utfpr.carolla_tshirts.model.dao.BrandDAO;
import br.edu.utfpr.carolla_tshirts.model.domain.Brand;
import br.edu.utfpr.carolla_tshirts.model.domain.Tshirt;

import java.util.List;

public class BrandService extends AbstractService<Long, Brand>{

    public BrandService() {
        dao = new BrandDAO();
    }

//    public List<Brand> findAll() {
//        List<Brand> entities = null;
//        entities = dao.findAll();
//        return entities;
//    }

}