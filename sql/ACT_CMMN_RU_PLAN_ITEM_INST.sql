create table ACT_CMMN_RU_PLAN_ITEM_INST
(
    ID_                     varchar(255)            not null
        primary key,
    REV_                    int                     not null,
    CASE_DEF_ID_            varchar(255)            null,
    CASE_INST_ID_           varchar(255)            null,
    STAGE_INST_ID_          varchar(255)            null,
    IS_STAGE_               bit                     null,
    ELEMENT_ID_             varchar(255)            null,
    NAME_                   varchar(255)            null,
    STATE_                  varchar(255)            null,
    START_TIME_             datetime                null,
    START_USER_ID_          varchar(255)            null,
    REFERENCE_ID_           varchar(255)            null,
    REFERENCE_TYPE_         varchar(255)            null,
    TENANT_ID_              varchar(255) default '' null,
    ITEM_DEFINITION_ID_     varchar(255)            null,
    ITEM_DEFINITION_TYPE_   varchar(255)            null,
    IS_COMPLETEABLE_        bit                     null,
    IS_COUNT_ENABLED_       bit                     null,
    VAR_COUNT_              int                     null,
    SENTRY_PART_INST_COUNT_ int                     null,
    constraint ACT_FK_PLAN_ITEM_CASE_DEF
        foreign key (CASE_DEF_ID_) references ACT_CMMN_CASEDEF (ID_),
    constraint ACT_FK_PLAN_ITEM_CASE_INST
        foreign key (CASE_INST_ID_) references ACT_CMMN_RU_CASE_INST (ID_)
);

create index ACT_IDX_PLAN_ITEM_CASE_DEF
    on ACT_CMMN_RU_PLAN_ITEM_INST (CASE_DEF_ID_);

create index ACT_IDX_PLAN_ITEM_CASE_INST
    on ACT_CMMN_RU_PLAN_ITEM_INST (CASE_INST_ID_);

create index ACT_IDX_PLAN_ITEM_STAGE_INST
    on ACT_CMMN_RU_PLAN_ITEM_INST (STAGE_INST_ID_);

