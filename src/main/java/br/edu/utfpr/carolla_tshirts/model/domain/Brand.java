package br.edu.utfpr.carolla_tshirts.model.domain;

import lombok.*;

import javax.persistence.*;

@Entity
@Table(name = "brands")
@Data
@NoArgsConstructor
@RequiredArgsConstructor(access = AccessLevel.PUBLIC)
public class Brand {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;
    @NonNull
    private String name;
}
