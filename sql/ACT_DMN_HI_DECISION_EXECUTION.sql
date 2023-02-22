create table ACT_DMN_HI_DECISION_EXECUTION
(
    ID_                     varchar(255)     not null
        primary key,
    DECISION_DEFINITION_ID_ varchar(255)     null,
    DEPLOYMENT_ID_          varchar(255)     null,
    START_TIME_             datetime         null,
    END_TIME_               datetime         null,
    INSTANCE_ID_            varchar(255)     null,
    EXECUTION_ID_           varchar(255)     null,
    ACTIVITY_ID_            varchar(255)     null,
    FAILED_                 bit default b'0' null,
    TENANT_ID_              varchar(255)     null,
    EXECUTION_JSON_         longtext         null,
    SCOPE_TYPE_             varchar(255)     null
);

