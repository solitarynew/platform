create table ACT_FO_FORM_INSTANCE
(
    ID_                  varchar(255) not null
        primary key,
    FORM_DEFINITION_ID_  varchar(255) not null,
    TASK_ID_             varchar(255) null,
    PROC_INST_ID_        varchar(255) null,
    PROC_DEF_ID_         varchar(255) null,
    SUBMITTED_DATE_      datetime     null,
    SUBMITTED_BY_        varchar(255) null,
    FORM_VALUES_ID_      varchar(255) null,
    TENANT_ID_           varchar(255) null,
    SCOPE_ID_            varchar(255) null,
    SCOPE_TYPE_          varchar(255) null,
    SCOPE_DEFINITION_ID_ varchar(255) null
);

