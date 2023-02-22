create table ACT_HI_DETAIL
(
    ID_           varchar(64)   not null
        primary key,
    TYPE_         varchar(255)  not null,
    PROC_INST_ID_ varchar(64)   null,
    EXECUTION_ID_ varchar(64)   null,
    TASK_ID_      varchar(64)   null,
    ACT_INST_ID_  varchar(64)   null,
    NAME_         varchar(255)  not null,
    VAR_TYPE_     varchar(255)  null,
    REV_          int           null,
    TIME_         datetime(3)   not null,
    BYTEARRAY_ID_ varchar(64)   null,
    DOUBLE_       double        null,
    LONG_         bigint        null,
    TEXT_         varchar(4000) null,
    TEXT2_        varchar(4000) null
)
    collate = utf8mb3_bin;

create index ACT_IDX_HI_DETAIL_ACT_INST
    on ACT_HI_DETAIL (ACT_INST_ID_);

create index ACT_IDX_HI_DETAIL_NAME
    on ACT_HI_DETAIL (NAME_);

create index ACT_IDX_HI_DETAIL_PROC_INST
    on ACT_HI_DETAIL (PROC_INST_ID_);

create index ACT_IDX_HI_DETAIL_TASK_ID
    on ACT_HI_DETAIL (TASK_ID_);

create index ACT_IDX_HI_DETAIL_TIME
    on ACT_HI_DETAIL (TIME_);

