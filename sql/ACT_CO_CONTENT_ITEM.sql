create table ACT_CO_CONTENT_ITEM
(
    ID_                 varchar(255)        not null
        primary key,
    NAME_               varchar(255)        not null,
    MIME_TYPE_          varchar(255)        null,
    TASK_ID_            varchar(255)        null,
    PROC_INST_ID_       varchar(255)        null,
    CONTENT_STORE_ID_   varchar(255)        null,
    CONTENT_STORE_NAME_ varchar(255)        null,
    FIELD_              varchar(400)        null,
    CONTENT_AVAILABLE_  bit    default b'0' null,
    CREATED_            timestamp(6)        null,
    CREATED_BY_         varchar(255)        null,
    LAST_MODIFIED_      timestamp(6)        null,
    LAST_MODIFIED_BY_   varchar(255)        null,
    CONTENT_SIZE_       bigint default 0    null,
    TENANT_ID_          varchar(255)        null,
    SCOPE_ID_           varchar(255)        null,
    SCOPE_TYPE_         varchar(255)        null
);

create index idx_contitem_procid
    on ACT_CO_CONTENT_ITEM (PROC_INST_ID_);

create index idx_contitem_scope
    on ACT_CO_CONTENT_ITEM (SCOPE_ID_, SCOPE_TYPE_);

create index idx_contitem_taskid
    on ACT_CO_CONTENT_ITEM (TASK_ID_);

