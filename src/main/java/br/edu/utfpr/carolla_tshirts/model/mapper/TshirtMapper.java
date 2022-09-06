package br.edu.utfpr.carolla_tshirts.model.mapper;

import br.edu.utfpr.carolla_tshirts.model.domain.Tshirt;
import br.edu.utfpr.carolla_tshirts.model.dto.TshirtDTO;

public class TshirtMapper {

    public static Tshirt toEntity(TshirtDTO dto){
        Tshirt entity = new Tshirt(dto.getDescricaoT(), dto.getCorT(), dto.getTamanhoT());
        return entity;
    }

    public static TshirtDTO toDTO(Tshirt entity){
        TshirtDTO dto = new TshirtDTO(entity.getDescricaoT(), entity.getCorT(), entity.getTamanhoT());
        return dto;
    }
}
