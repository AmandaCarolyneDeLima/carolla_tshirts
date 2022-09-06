package br.edu.utfpr.carolla_tshirts.service;

import br.edu.utfpr.carolla_tshirts.model.dao.BrandDAO;
import br.edu.utfpr.carolla_tshirts.model.domain.Brand;

public class BrandService extends AbstractService<Long, Brand>{

    public BrandService() {
        dao = new BrandDAO();
    }

}