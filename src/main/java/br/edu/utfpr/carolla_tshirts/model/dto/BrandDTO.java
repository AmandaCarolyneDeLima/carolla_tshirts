package br.edu.utfpr.carolla_tshirts.model.dto;

import br.edu.utfpr.carolla_tshirts.model.domain.Brand;
import lombok.Data;
import lombok.NonNull;

@Data
public class BrandDTO {
    @NonNull
    private String name;
}