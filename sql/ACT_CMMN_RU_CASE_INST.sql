create table ACT_CMMN_RU_CASE_INST
(
    ID_              varchar(255)            not null
        primary key,
    REV_             int                     not null,
    BUSINESS_KEY_    varchar(255)            null,
    NAME_            varchar(255)            null,
    PARENT_ID_       varchar(255)            null,
    CASE_DEF_ID_     varchar(255)            null,
    STATE_           varchar(255)            null,
    START_TIME_      datetime                null,
    START_USER_ID_   varchar(255)            null,
    CALLBACK_ID_     varchar(255)            null,
    CALLBACK_TYPE_   varchar(255)            null,
    TENANT_ID_       varchar(255) default '' null,
    LOCK_TIME_       datetime                null,
    IS_COMPLETEABLE_ bit                     null,
    constraint ACT_FK_CASE_INST_CASE_DEF
        foreign key (CASE_DEF_ID_) references ACT_CMMN_CASEDEF (ID_)
);

create index ACT_IDX_CASE_INST_CASE_DEF
    on ACT_CMMN_RU_CASE_INST (CASE_DEF_ID_);

create index ACT_IDX_CASE_INST_PARENT
    on ACT_CMMN_RU_CASE_INST (PARENT_ID_);

