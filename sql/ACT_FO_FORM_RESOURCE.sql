create table ACT_FO_FORM_RESOURCE
(
    ID_             varchar(255) not null
        primary key,
    NAME_           varchar(255) null,
    DEPLOYMENT_ID_  varchar(255) null,
    RESOURCE_BYTES_ longblob     null
);

