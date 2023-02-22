create table ACT_DMN_DEPLOYMENT
(
    ID_                   varchar(255) not null
        primary key,
    NAME_                 varchar(255) null,
    CATEGORY_             varchar(255) null,
    DEPLOY_TIME_          datetime     null,
    TENANT_ID_            varchar(255) null,
    PARENT_DEPLOYMENT_ID_ varchar(255) null
);

