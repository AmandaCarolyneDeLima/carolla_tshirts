package br.edu.utfpr.carolla_tshirts.model.dto;

import lombok.Data;
import lombok.NonNull;

@Data
public class TshirtDTO {
    @NonNull
    private String descricaoT;
    @NonNull
    private String corT;
    @NonNull
    private String tamanhoT;

}
