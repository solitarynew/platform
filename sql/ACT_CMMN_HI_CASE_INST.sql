create table ACT_CMMN_HI_CASE_INST
(
    ID_            varchar(255)            not null
        primary key,
    REV_           int                     not null,
    BUSINESS_KEY_  varchar(255)            null,
    NAME_          varchar(255)            null,
    PARENT_ID_     varchar(255)            null,
    CASE_DEF_ID_   varchar(255)            null,
    STATE_         varchar(255)            null,
    START_TIME_    datetime                null,
    END_TIME_      datetime                null,
    START_USER_ID_ varchar(255)            null,
    CALLBACK_ID_   varchar(255)            null,
    CALLBACK_TYPE_ varchar(255)            null,
    TENANT_ID_     varchar(255) default '' null
);

