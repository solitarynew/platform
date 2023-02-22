create table ACT_RU_VARIABLE
(
    ID_           varchar(64)   not null
        primary key,
    REV_          int           null,
    TYPE_         varchar(255)  not null,
    NAME_         varchar(255)  not null,
    EXECUTION_ID_ varchar(64)   null,
    PROC_INST_ID_ varchar(64)   null,
    TASK_ID_      varchar(64)   null,
    SCOPE_ID_     varchar(255)  null,
    SUB_SCOPE_ID_ varchar(255)  null,
    SCOPE_TYPE_   varchar(255)  null,
    BYTEARRAY_ID_ varchar(64)   null,
    DOUBLE_       double        null,
    LONG_         bigint        null,
    TEXT_         varchar(4000) null,
    TEXT2_        varchar(4000) null,
    constraint ACT_FK_VAR_BYTEARRAY
        foreign key (BYTEARRAY_ID_) references ACT_GE_BYTEARRAY (ID_),
    constraint ACT_FK_VAR_EXE
        foreign key (EXECUTION_ID_) references ACT_RU_EXECUTION (ID_),
    constraint ACT_FK_VAR_PROCINST
        foreign key (PROC_INST_ID_) references ACT_RU_EXECUTION (ID_)
)
    collate = utf8mb3_bin;

create index ACT_IDX_RU_VAR_SCOPE_ID_TYPE
    on ACT_RU_VARIABLE (SCOPE_ID_, SCOPE_TYPE_);

create index ACT_IDX_RU_VAR_SUB_ID_TYPE
    on ACT_RU_VARIABLE (SUB_SCOPE_ID_, SCOPE_TYPE_);

create index ACT_IDX_VARIABLE_TASK_ID
    on ACT_RU_VARIABLE (TASK_ID_);

INSERT INTO workflow.ACT_RU_VARIABLE (ID_, REV_, TYPE_, NAME_, EXECUTION_ID_, PROC_INST_ID_, TASK_ID_, SCOPE_ID_, SUB_SCOPE_ID_, SCOPE_TYPE_, BYTEARRAY_ID_, DOUBLE_, LONG_, TEXT_, TEXT2_) VALUES ('110025', 1, 'string', 'saler', '110019', '110018', '110022', null, null, null, null, null, null, '1', null);
INSERT INTO workflow.ACT_RU_VARIABLE (ID_, REV_, TYPE_, NAME_, EXECUTION_ID_, PROC_INST_ID_, TASK_ID_, SCOPE_ID_, SUB_SCOPE_ID_, SCOPE_TYPE_, BYTEARRAY_ID_, DOUBLE_, LONG_, TEXT_, TEXT2_) VALUES ('110026', 1, 'string', 'date', '110019', '110018', '110022', null, null, null, null, null, null, '2023-02-22 19:08:00', null);
INSERT INTO workflow.ACT_RU_VARIABLE (ID_, REV_, TYPE_, NAME_, EXECUTION_ID_, PROC_INST_ID_, TASK_ID_, SCOPE_ID_, SUB_SCOPE_ID_, SCOPE_TYPE_, BYTEARRAY_ID_, DOUBLE_, LONG_, TEXT_, TEXT2_) VALUES ('110027', 1, 'string', 'client', '110019', '110018', '110022', null, null, null, null, null, null, '1', null);
INSERT INTO workflow.ACT_RU_VARIABLE (ID_, REV_, TYPE_, NAME_, EXECUTION_ID_, PROC_INST_ID_, TASK_ID_, SCOPE_ID_, SUB_SCOPE_ID_, SCOPE_TYPE_, BYTEARRAY_ID_, DOUBLE_, LONG_, TEXT_, TEXT2_) VALUES ('110028', 1, 'string', 'projectName', '110019', '110018', '110022', null, null, null, null, null, null, '1', null);
INSERT INTO workflow.ACT_RU_VARIABLE (ID_, REV_, TYPE_, NAME_, EXECUTION_ID_, PROC_INST_ID_, TASK_ID_, SCOPE_ID_, SUB_SCOPE_ID_, SCOPE_TYPE_, BYTEARRAY_ID_, DOUBLE_, LONG_, TEXT_, TEXT2_) VALUES ('110029', 1, 'string', 'expectWithdrawTime', '110019', '110018', '110022', null, null, null, null, null, null, '2023-02-22 19:07:53', null);
INSERT INTO workflow.ACT_RU_VARIABLE (ID_, REV_, TYPE_, NAME_, EXECUTION_ID_, PROC_INST_ID_, TASK_ID_, SCOPE_ID_, SUB_SCOPE_ID_, SCOPE_TYPE_, BYTEARRAY_ID_, DOUBLE_, LONG_, TEXT_, TEXT2_) VALUES ('110030', 1, 'string', 'payCompany', '110019', '110018', '110022', null, null, null, null, null, null, '1', null);
INSERT INTO workflow.ACT_RU_VARIABLE (ID_, REV_, TYPE_, NAME_, EXECUTION_ID_, PROC_INST_ID_, TASK_ID_, SCOPE_ID_, SUB_SCOPE_ID_, SCOPE_TYPE_, BYTEARRAY_ID_, DOUBLE_, LONG_, TEXT_, TEXT2_) VALUES ('110031', 1, 'string', 'receiveCompany', '110019', '110018', '110022', null, null, null, null, null, null, '1', null);
INSERT INTO workflow.ACT_RU_VARIABLE (ID_, REV_, TYPE_, NAME_, EXECUTION_ID_, PROC_INST_ID_, TASK_ID_, SCOPE_ID_, SUB_SCOPE_ID_, SCOPE_TYPE_, BYTEARRAY_ID_, DOUBLE_, LONG_, TEXT_, TEXT2_) VALUES ('110032', 1, 'integer', 'money', '110019', '110018', '110022', null, null, null, null, null, 1, '1', null);
INSERT INTO workflow.ACT_RU_VARIABLE (ID_, REV_, TYPE_, NAME_, EXECUTION_ID_, PROC_INST_ID_, TASK_ID_, SCOPE_ID_, SUB_SCOPE_ID_, SCOPE_TYPE_, BYTEARRAY_ID_, DOUBLE_, LONG_, TEXT_, TEXT2_) VALUES ('110033', 1, 'string', 'comment', '110019', '110018', '110022', null, null, null, null, null, null, '1', null);
INSERT INTO workflow.ACT_RU_VARIABLE (ID_, REV_, TYPE_, NAME_, EXECUTION_ID_, PROC_INST_ID_, TASK_ID_, SCOPE_ID_, SUB_SCOPE_ID_, SCOPE_TYPE_, BYTEARRAY_ID_, DOUBLE_, LONG_, TEXT_, TEXT2_) VALUES ('110034', 1, 'string', 'create_at', '110019', '110018', '110022', null, null, null, null, null, null, '2023-02-22 19:07:57', null);
INSERT INTO workflow.ACT_RU_VARIABLE (ID_, REV_, TYPE_, NAME_, EXECUTION_ID_, PROC_INST_ID_, TASK_ID_, SCOPE_ID_, SUB_SCOPE_ID_, SCOPE_TYPE_, BYTEARRAY_ID_, DOUBLE_, LONG_, TEXT_, TEXT2_) VALUES ('110035', 1, 'string', 'serial_number', '110019', '110018', '110022', null, null, null, null, null, null, '1', null);
INSERT INTO workflow.ACT_RU_VARIABLE (ID_, REV_, TYPE_, NAME_, EXECUTION_ID_, PROC_INST_ID_, TASK_ID_, SCOPE_ID_, SUB_SCOPE_ID_, SCOPE_TYPE_, BYTEARRAY_ID_, DOUBLE_, LONG_, TEXT_, TEXT2_) VALUES ('110036', 1, 'boolean', 'dlt', '110019', '110018', '110022', null, null, null, null, null, 1, null, null);
INSERT INTO workflow.ACT_RU_VARIABLE (ID_, REV_, TYPE_, NAME_, EXECUTION_ID_, PROC_INST_ID_, TASK_ID_, SCOPE_ID_, SUB_SCOPE_ID_, SCOPE_TYPE_, BYTEARRAY_ID_, DOUBLE_, LONG_, TEXT_, TEXT2_) VALUES ('110037', 1, 'string', 'month', '110019', '110018', '110022', null, null, null, null, null, null, '1', null);
INSERT INTO workflow.ACT_RU_VARIABLE (ID_, REV_, TYPE_, NAME_, EXECUTION_ID_, PROC_INST_ID_, TASK_ID_, SCOPE_ID_, SUB_SCOPE_ID_, SCOPE_TYPE_, BYTEARRAY_ID_, DOUBLE_, LONG_, TEXT_, TEXT2_) VALUES ('112522', 1, 'serializable', 'createBidSecurity', '112501', '112501', null, null, null, null, '112521', null, null, null, null);
INSERT INTO workflow.ACT_RU_VARIABLE (ID_, REV_, TYPE_, NAME_, EXECUTION_ID_, PROC_INST_ID_, TASK_ID_, SCOPE_ID_, SUB_SCOPE_ID_, SCOPE_TYPE_, BYTEARRAY_ID_, DOUBLE_, LONG_, TEXT_, TEXT2_) VALUES ('112549', 1, 'serializable', 'createBidSecurity', '112528', '112528', null, null, null, null, '112548', null, null, null, null);
INSERT INTO workflow.ACT_RU_VARIABLE (ID_, REV_, TYPE_, NAME_, EXECUTION_ID_, PROC_INST_ID_, TASK_ID_, SCOPE_ID_, SUB_SCOPE_ID_, SCOPE_TYPE_, BYTEARRAY_ID_, DOUBLE_, LONG_, TEXT_, TEXT2_) VALUES ('112576', 1, 'serializable', 'createBidSecurity', '112555', '112555', null, null, null, null, '112575', null, null, null, null);
INSERT INTO workflow.ACT_RU_VARIABLE (ID_, REV_, TYPE_, NAME_, EXECUTION_ID_, PROC_INST_ID_, TASK_ID_, SCOPE_ID_, SUB_SCOPE_ID_, SCOPE_TYPE_, BYTEARRAY_ID_, DOUBLE_, LONG_, TEXT_, TEXT2_) VALUES ('115026', 1, 'serializable', 'createBidSecurity', '115005', '115005', null, null, null, null, '115025', null, null, null, null);
INSERT INTO workflow.ACT_RU_VARIABLE (ID_, REV_, TYPE_, NAME_, EXECUTION_ID_, PROC_INST_ID_, TASK_ID_, SCOPE_ID_, SUB_SCOPE_ID_, SCOPE_TYPE_, BYTEARRAY_ID_, DOUBLE_, LONG_, TEXT_, TEXT2_) VALUES ('45008', 1, 'integer', 'taskId', '45001', '45001', null, null, null, null, null, null, 45005, '45005', null);
INSERT INTO workflow.ACT_RU_VARIABLE (ID_, REV_, TYPE_, NAME_, EXECUTION_ID_, PROC_INST_ID_, TASK_ID_, SCOPE_ID_, SUB_SCOPE_ID_, SCOPE_TYPE_, BYTEARRAY_ID_, DOUBLE_, LONG_, TEXT_, TEXT2_) VALUES ('45009', 1, 'string', 'fileName', '45001', '45001', null, null, null, null, null, null, null, 'data.graphql', null);
INSERT INTO workflow.ACT_RU_VARIABLE (ID_, REV_, TYPE_, NAME_, EXECUTION_ID_, PROC_INST_ID_, TASK_ID_, SCOPE_ID_, SUB_SCOPE_ID_, SCOPE_TYPE_, BYTEARRAY_ID_, DOUBLE_, LONG_, TEXT_, TEXT2_) VALUES ('45010', 1, 'string', 'graphql', '45001', '45001', null, null, null, null, null, null, null, 'mutation {   createNormalInvoice(comment: "普通发票25") {     _id     comment   } }', null);
INSERT INTO workflow.ACT_RU_VARIABLE (ID_, REV_, TYPE_, NAME_, EXECUTION_ID_, PROC_INST_ID_, TASK_ID_, SCOPE_ID_, SUB_SCOPE_ID_, SCOPE_TYPE_, BYTEARRAY_ID_, DOUBLE_, LONG_, TEXT_, TEXT2_) VALUES ('47508', 1, 'integer', 'taskId', '47501', '47501', null, null, null, null, null, null, 47505, '47505', null);
INSERT INTO workflow.ACT_RU_VARIABLE (ID_, REV_, TYPE_, NAME_, EXECUTION_ID_, PROC_INST_ID_, TASK_ID_, SCOPE_ID_, SUB_SCOPE_ID_, SCOPE_TYPE_, BYTEARRAY_ID_, DOUBLE_, LONG_, TEXT_, TEXT2_) VALUES ('47509', 1, 'string', 'fileName', '47501', '47501', null, null, null, null, null, null, null, 'data.graphql', null);
INSERT INTO workflow.ACT_RU_VARIABLE (ID_, REV_, TYPE_, NAME_, EXECUTION_ID_, PROC_INST_ID_, TASK_ID_, SCOPE_ID_, SUB_SCOPE_ID_, SCOPE_TYPE_, BYTEARRAY_ID_, DOUBLE_, LONG_, TEXT_, TEXT2_) VALUES ('47510', 1, 'string', 'graphql', '47501', '47501', null, null, null, null, null, null, null, 'mutation {   createNormalInvoice(comment: "普通发票25") {     _id     comment   } }', null);
INSERT INTO workflow.ACT_RU_VARIABLE (ID_, REV_, TYPE_, NAME_, EXECUTION_ID_, PROC_INST_ID_, TASK_ID_, SCOPE_ID_, SUB_SCOPE_ID_, SCOPE_TYPE_, BYTEARRAY_ID_, DOUBLE_, LONG_, TEXT_, TEXT2_) VALUES ('50008', 1, 'integer', 'taskId', '50001', '50001', null, null, null, null, null, null, 50005, '50005', null);
INSERT INTO workflow.ACT_RU_VARIABLE (ID_, REV_, TYPE_, NAME_, EXECUTION_ID_, PROC_INST_ID_, TASK_ID_, SCOPE_ID_, SUB_SCOPE_ID_, SCOPE_TYPE_, BYTEARRAY_ID_, DOUBLE_, LONG_, TEXT_, TEXT2_) VALUES ('50009', 1, 'string', 'fileName', '50001', '50001', null, null, null, null, null, null, null, 'data.graphql', null);
INSERT INTO workflow.ACT_RU_VARIABLE (ID_, REV_, TYPE_, NAME_, EXECUTION_ID_, PROC_INST_ID_, TASK_ID_, SCOPE_ID_, SUB_SCOPE_ID_, SCOPE_TYPE_, BYTEARRAY_ID_, DOUBLE_, LONG_, TEXT_, TEXT2_) VALUES ('50010', 1, 'string', 'graphql', '50001', '50001', null, null, null, null, null, null, null, 'mutation {   createNormalInvoice(comment: "普通发票25") {     _id     comment   } }', null);
INSERT INTO workflow.ACT_RU_VARIABLE (ID_, REV_, TYPE_, NAME_, EXECUTION_ID_, PROC_INST_ID_, TASK_ID_, SCOPE_ID_, SUB_SCOPE_ID_, SCOPE_TYPE_, BYTEARRAY_ID_, DOUBLE_, LONG_, TEXT_, TEXT2_) VALUES ('52508', 1, 'integer', 'taskId', '52501', '52501', null, null, null, null, null, null, 52505, '52505', null);
INSERT INTO workflow.ACT_RU_VARIABLE (ID_, REV_, TYPE_, NAME_, EXECUTION_ID_, PROC_INST_ID_, TASK_ID_, SCOPE_ID_, SUB_SCOPE_ID_, SCOPE_TYPE_, BYTEARRAY_ID_, DOUBLE_, LONG_, TEXT_, TEXT2_) VALUES ('52509', 1, 'string', 'fileName', '52501', '52501', null, null, null, null, null, null, null, 'data.graphql', null);
INSERT INTO workflow.ACT_RU_VARIABLE (ID_, REV_, TYPE_, NAME_, EXECUTION_ID_, PROC_INST_ID_, TASK_ID_, SCOPE_ID_, SUB_SCOPE_ID_, SCOPE_TYPE_, BYTEARRAY_ID_, DOUBLE_, LONG_, TEXT_, TEXT2_) VALUES ('52510', 1, 'string', 'graphql', '52501', '52501', null, null, null, null, null, null, null, 'mutation {   createNormalInvoice(comment: "普通发票25") {     _id     comment   } }', null);
INSERT INTO workflow.ACT_RU_VARIABLE (ID_, REV_, TYPE_, NAME_, EXECUTION_ID_, PROC_INST_ID_, TASK_ID_, SCOPE_ID_, SUB_SCOPE_ID_, SCOPE_TYPE_, BYTEARRAY_ID_, DOUBLE_, LONG_, TEXT_, TEXT2_) VALUES ('55009', 1, 'serializable', 'result', '55001', '55001', null, null, null, null, '55008', null, null, null, null);
INSERT INTO workflow.ACT_RU_VARIABLE (ID_, REV_, TYPE_, NAME_, EXECUTION_ID_, PROC_INST_ID_, TASK_ID_, SCOPE_ID_, SUB_SCOPE_ID_, SCOPE_TYPE_, BYTEARRAY_ID_, DOUBLE_, LONG_, TEXT_, TEXT2_) VALUES ('55011', 1, 'integer', 'taskId', '55001', '55001', null, null, null, null, null, null, 55005, '55005', null);
INSERT INTO workflow.ACT_RU_VARIABLE (ID_, REV_, TYPE_, NAME_, EXECUTION_ID_, PROC_INST_ID_, TASK_ID_, SCOPE_ID_, SUB_SCOPE_ID_, SCOPE_TYPE_, BYTEARRAY_ID_, DOUBLE_, LONG_, TEXT_, TEXT2_) VALUES ('55012', 1, 'string', 'fileName', '55001', '55001', null, null, null, null, null, null, null, 'data.graphql', null);
INSERT INTO workflow.ACT_RU_VARIABLE (ID_, REV_, TYPE_, NAME_, EXECUTION_ID_, PROC_INST_ID_, TASK_ID_, SCOPE_ID_, SUB_SCOPE_ID_, SCOPE_TYPE_, BYTEARRAY_ID_, DOUBLE_, LONG_, TEXT_, TEXT2_) VALUES ('55013', 1, 'string', 'graphql', '55001', '55001', null, null, null, null, null, null, null, 'mutation {   createNormalInvoice(comment: "普通发票25") {     _id     comment   } }', null);
INSERT INTO workflow.ACT_RU_VARIABLE (ID_, REV_, TYPE_, NAME_, EXECUTION_ID_, PROC_INST_ID_, TASK_ID_, SCOPE_ID_, SUB_SCOPE_ID_, SCOPE_TYPE_, BYTEARRAY_ID_, DOUBLE_, LONG_, TEXT_, TEXT2_) VALUES ('82518', 1, 'serializable', 'createNormalInvoice', '62501', '62501', null, null, null, null, '82517', null, null, null, null);
INSERT INTO workflow.ACT_RU_VARIABLE (ID_, REV_, TYPE_, NAME_, EXECUTION_ID_, PROC_INST_ID_, TASK_ID_, SCOPE_ID_, SUB_SCOPE_ID_, SCOPE_TYPE_, BYTEARRAY_ID_, DOUBLE_, LONG_, TEXT_, TEXT2_) VALUES ('82524', 1, 'string', 'check', '62502', '62501', '82521', null, null, null, null, null, null, '通过', null);
INSERT INTO workflow.ACT_RU_VARIABLE (ID_, REV_, TYPE_, NAME_, EXECUTION_ID_, PROC_INST_ID_, TASK_ID_, SCOPE_ID_, SUB_SCOPE_ID_, SCOPE_TYPE_, BYTEARRAY_ID_, DOUBLE_, LONG_, TEXT_, TEXT2_) VALUES ('85017', 1, 'serializable', 'createNormalInvoice', '85007', '85007', null, null, null, null, '85016', null, null, null, null);
INSERT INTO workflow.ACT_RU_VARIABLE (ID_, REV_, TYPE_, NAME_, EXECUTION_ID_, PROC_INST_ID_, TASK_ID_, SCOPE_ID_, SUB_SCOPE_ID_, SCOPE_TYPE_, BYTEARRAY_ID_, DOUBLE_, LONG_, TEXT_, TEXT2_) VALUES ('85023', 2, 'string', 'check', '85008', '85007', '85020', null, null, null, null, null, null, '通过', null);
