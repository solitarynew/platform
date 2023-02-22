create table ACT_FO_FORM_DEFINITION
(
    ID_                   varchar(255) not null
        primary key,
    NAME_                 varchar(255) null,
    VERSION_              int          null,
    KEY_                  varchar(255) null,
    CATEGORY_             varchar(255) null,
    DEPLOYMENT_ID_        varchar(255) null,
    PARENT_DEPLOYMENT_ID_ varchar(255) null,
    TENANT_ID_            varchar(255) null,
    RESOURCE_NAME_        varchar(255) null,
    DESCRIPTION_          varchar(255) null
);

