create table ACT_CMMN_DEPLOYMENT_RESOURCE
(
    ID_             varchar(255) not null
        primary key,
    NAME_           varchar(255) null,
    DEPLOYMENT_ID_  varchar(255) null,
    RESOURCE_BYTES_ longblob     null,
    GENERATED_      bit          null,
    constraint ACT_FK_CMMN_RSRC_DPL
        foreign key (DEPLOYMENT_ID_) references ACT_CMMN_DEPLOYMENT (ID_)
);

create index ACT_IDX_CMMN_RSRC_DPL
    on ACT_CMMN_DEPLOYMENT_RESOURCE (DEPLOYMENT_ID_);

