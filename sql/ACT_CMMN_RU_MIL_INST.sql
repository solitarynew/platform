create table ACT_CMMN_RU_MIL_INST
(
    ID_           varchar(255) not null
        primary key,
    NAME_         varchar(255) not null,
    TIME_STAMP_   datetime     not null,
    CASE_INST_ID_ varchar(255) not null,
    CASE_DEF_ID_  varchar(255) not null,
    ELEMENT_ID_   varchar(255) not null,
    constraint ACT_FK_MIL_CASE_DEF
        foreign key (CASE_DEF_ID_) references ACT_CMMN_CASEDEF (ID_),
    constraint ACT_FK_MIL_CASE_INST
        foreign key (CASE_INST_ID_) references ACT_CMMN_RU_CASE_INST (ID_)
);

create index ACT_IDX_MIL_CASE_DEF
    on ACT_CMMN_RU_MIL_INST (CASE_DEF_ID_);

create index ACT_IDX_MIL_CASE_INST
    on ACT_CMMN_RU_MIL_INST (CASE_INST_ID_);

