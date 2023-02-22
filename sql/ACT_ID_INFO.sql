create table ACT_ID_INFO
(
    ID_        varchar(64)  not null
        primary key,
    REV_       int          null,
    USER_ID_   varchar(64)  null,
    TYPE_      varchar(64)  null,
    KEY_       varchar(255) null,
    VALUE_     varchar(255) null,
    PASSWORD_  longblob     null,
    PARENT_ID_ varchar(255) null
)
    collate = utf8mb3_bin;

