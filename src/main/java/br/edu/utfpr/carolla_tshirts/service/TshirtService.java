package br.edu.utfpr.carolla_tshirts.service;

import br.edu.utfpr.carolla_tshirts.model.dao.TshirtDAO;
import br.edu.utfpr.carolla_tshirts.model.domain.Tshirt;

import java.util.List;

public class TshirtService extends AbstractService<Long, Tshirt>{

    public TshirtService() {
        dao = new TshirtDAO();
    }

    public List<Tshirt> listByProperty(String propertyName, String propertyValue) {
        List<Tshirt> entities = null;
        entities = dao.listByProperty(propertyName, propertyValue);
        return entities;
    }
}