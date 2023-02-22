create table ACT_RU_JOB
(
    ID_                  varchar(64)             not null
        primary key,
    REV_                 int                     null,
    TYPE_                varchar(255)            not null,
    LOCK_EXP_TIME_       timestamp(3)            null,
    LOCK_OWNER_          varchar(255)            null,
    EXCLUSIVE_           tinyint(1)              null,
    EXECUTION_ID_        varchar(64)             null,
    PROCESS_INSTANCE_ID_ varchar(64)             null,
    PROC_DEF_ID_         varchar(64)             null,
    SCOPE_ID_            varchar(255)            null,
    SUB_SCOPE_ID_        varchar(255)            null,
    SCOPE_TYPE_          varchar(255)            null,
    SCOPE_DEFINITION_ID_ varchar(255)            null,
    RETRIES_             int                     null,
    EXCEPTION_STACK_ID_  varchar(64)             null,
    EXCEPTION_MSG_       varchar(4000)           null,
    DUEDATE_             timestamp(3)            null,
    REPEAT_              varchar(255)            null,
    HANDLER_TYPE_        varchar(255)            null,
    HANDLER_CFG_         varchar(4000)           null,
    CUSTOM_VALUES_ID_    varchar(64)             null,
    CREATE_TIME_         timestamp(3)            null,
    TENANT_ID_           varchar(255) default '' null,
    constraint ACT_FK_JOB_CUSTOM_VALUES
        foreign key (CUSTOM_VALUES_ID_) references ACT_GE_BYTEARRAY (ID_),
    constraint ACT_FK_JOB_EXCEPTION
        foreign key (EXCEPTION_STACK_ID_) references ACT_GE_BYTEARRAY (ID_),
    constraint ACT_FK_JOB_EXECUTION
        foreign key (EXECUTION_ID_) references ACT_RU_EXECUTION (ID_),
    constraint ACT_FK_JOB_PROCESS_INSTANCE
        foreign key (PROCESS_INSTANCE_ID_) references ACT_RU_EXECUTION (ID_),
    constraint ACT_FK_JOB_PROC_DEF
        foreign key (PROC_DEF_ID_) references ACT_RE_PROCDEF (ID_)
)
    collate = utf8mb3_bin;

create index ACT_IDX_JOB_CUSTOM_VALUES_ID
    on ACT_RU_JOB (CUSTOM_VALUES_ID_);

create index ACT_IDX_JOB_EXCEPTION_STACK_ID
    on ACT_RU_JOB (EXCEPTION_STACK_ID_);

create index ACT_IDX_JOB_SCOPE
    on ACT_RU_JOB (SCOPE_ID_, SCOPE_TYPE_);

create index ACT_IDX_JOB_SCOPE_DEF
    on ACT_RU_JOB (SCOPE_DEFINITION_ID_, SCOPE_TYPE_);

create index ACT_IDX_JOB_SUB_SCOPE
    on ACT_RU_JOB (SUB_SCOPE_ID_, SCOPE_TYPE_);

