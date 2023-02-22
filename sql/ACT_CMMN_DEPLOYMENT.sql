create table ACT_CMMN_DEPLOYMENT
(
    ID_                   varchar(255)            not null
        primary key,
    NAME_                 varchar(255)            null,
    CATEGORY_             varchar(255)            null,
    KEY_                  varchar(255)            null,
    DEPLOY_TIME_          datetime                null,
    PARENT_DEPLOYMENT_ID_ varchar(255)            null,
    TENANT_ID_            varchar(255) default '' null
);

