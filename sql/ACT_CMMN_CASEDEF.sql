create table ACT_CMMN_CASEDEF
(
    ID_                     varchar(255)            not null
        primary key,
    REV_                    int                     not null,
    NAME_                   varchar(255)            null,
    KEY_                    varchar(255)            not null,
    VERSION_                int                     not null,
    CATEGORY_               varchar(255)            null,
    DEPLOYMENT_ID_          varchar(255)            null,
    RESOURCE_NAME_          varchar(4000)           null,
    DESCRIPTION_            varchar(4000)           null,
    HAS_GRAPHICAL_NOTATION_ bit                     null,
    TENANT_ID_              varchar(255) default '' null,
    DGRM_RESOURCE_NAME_     varchar(4000)           null,
    HAS_START_FORM_KEY_     bit                     null,
    constraint ACT_FK_CASE_DEF_DPLY
        foreign key (DEPLOYMENT_ID_) references ACT_CMMN_DEPLOYMENT (ID_)
);

create index ACT_IDX_CASE_DEF_DPLY
    on ACT_CMMN_CASEDEF (DEPLOYMENT_ID_);

