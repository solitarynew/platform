create table ACT_CMMN_RU_SENTRY_PART_INST
(
    ID_                varchar(255) not null
        primary key,
    REV_               int          not null,
    CASE_DEF_ID_       varchar(255) null,
    CASE_INST_ID_      varchar(255) null,
    PLAN_ITEM_INST_ID_ varchar(255) null,
    ON_PART_ID_        varchar(255) null,
    IF_PART_ID_        varchar(255) null,
    TIME_STAMP_        datetime     null,
    constraint ACT_FK_SENTRY_CASE_DEF
        foreign key (CASE_DEF_ID_) references ACT_CMMN_CASEDEF (ID_),
    constraint ACT_FK_SENTRY_CASE_INST
        foreign key (CASE_INST_ID_) references ACT_CMMN_RU_CASE_INST (ID_),
    constraint ACT_FK_SENTRY_PLAN_ITEM
        foreign key (PLAN_ITEM_INST_ID_) references ACT_CMMN_RU_PLAN_ITEM_INST (ID_)
);

create index ACT_IDX_SENTRY_CASE_DEF
    on ACT_CMMN_RU_SENTRY_PART_INST (CASE_DEF_ID_);

create index ACT_IDX_SENTRY_CASE_INST
    on ACT_CMMN_RU_SENTRY_PART_INST (CASE_INST_ID_);

create index ACT_IDX_SENTRY_PLAN_ITEM
    on ACT_CMMN_RU_SENTRY_PART_INST (PLAN_ITEM_INST_ID_);

