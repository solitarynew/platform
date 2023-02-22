create table ACT_CMMN_HI_MIL_INST
(
    ID_           varchar(255) not null
        primary key,
    REV_          int          not null,
    NAME_         varchar(255) not null,
    TIME_STAMP_   datetime     not null,
    CASE_INST_ID_ varchar(255) not null,
    CASE_DEF_ID_  varchar(255) not null,
    ELEMENT_ID_   varchar(255) not null
);

