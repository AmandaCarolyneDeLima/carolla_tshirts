package br.edu.utfpr.carolla_tshirts.model.mapper;

import br.edu.utfpr.carolla_tshirts.model.domain.Brand;
import br.edu.utfpr.carolla_tshirts.model.dto.BrandDTO;


public class BrandMapper {

    public BrandMapper getInstance(){
        return new BrandMapper();
    }

    public static Brand toEntity(BrandDTO dto){
        Brand entity = new Brand(dto.getName());
        return entity;
    }

    public static BrandDTO toDTO(Brand entity){
        BrandDTO dto = new BrandDTO(entity.getName());
        return dto;
    }
}