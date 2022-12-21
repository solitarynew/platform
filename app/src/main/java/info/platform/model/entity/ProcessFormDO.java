package info.platform.model.entity;

import lombok.Data;

import javax.persistence.*;

@Data
@Entity
@Table(name = "process_form")
public class ProcessFormDO {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer id;

    @Column(name = "process_id")
    private String processId;

    @Column(name = "task_id")
    private String taskId;

    @Column(name = "query_form_id")
    private Integer queryFormId;

    @Column(name = "mutation_form_id")
    private Integer mutationFormId;
}
