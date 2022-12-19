package info.platform.model.entity;

import lombok.Data;

import javax.persistence.*;

@Data
@Entity
@Table(name = "form")
public class FormDO {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer id;

    @Column(name = "name")
    private String name;

    @Column(name = "description")
    private String description;

    @Column(name = "form_schema")
    private String schema;
}
