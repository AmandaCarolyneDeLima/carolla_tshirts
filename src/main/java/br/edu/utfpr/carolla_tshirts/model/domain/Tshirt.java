package br.edu.utfpr.carolla_tshirts.model.domain;

import lombok.*;

import javax.persistence.*;

@Entity
@Table(name = "tshirts")
@Data(staticConstructor = "of")
@NoArgsConstructor
@RequiredArgsConstructor(access = AccessLevel.PUBLIC)
public class Tshirt {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;
    @NonNull
    private String descricaoT;
    @NonNull
    private String corT;
    @NonNull
    private String tamanhoT;

}