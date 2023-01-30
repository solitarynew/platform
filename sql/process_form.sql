create table process_form
(
    id               int auto_increment
        primary key,
    process_id       varchar(64)   null,
    task_id          varchar(64)   null,
    query_form_id    int           null,
    query_graphql    varchar(1024) null,
    mutation_form_id int           null,
    mutation_graphql varchar(1024) null,
    constraint id
        unique (id)
);

INSERT INTO workflow.process_form (id, process_id, task_id, query_form_id, query_graphql, mutation_form_id, mutation_graphql) VALUES (1, 'process_1667737476222:7:90007', 'Activity_1wfcnsg', 15, null, 12, 'mutation($comment: String, $company: String) {
                      createNormalInvoice(comment: $comment, company: $company) {
                        id: _id
                      }
                    }');
INSERT INTO workflow.process_form (id, process_id, task_id, query_form_id, query_graphql, mutation_form_id, mutation_graphql) VALUES (2, 'process_1667737476222:7:90007', 'Activity_1vxlpzp', 13, 'query($createNormalInvoice_id: ID){
                  normalInvoices(where: {_id: $createNormalInvoice_id} ) {
                    _id
                    company
                    comment
                  }
                }', 14, null);
INSERT INTO workflow.process_form (id, process_id, task_id, query_form_id, query_graphql, mutation_form_id, mutation_graphql) VALUES (3, 'process_1667737476222:7:90007', 'Activity_1t49tkr', 13, 'query($createNormalInvoice_id: ID){
                  normalInvoices(where: {_id: $createNormalInvoice_id} ) {
                    _id
                    company
                    comment
                  }
                }', 14, null);
