create table ACT_ID_USER
(
    ID_         varchar(64)             not null
        primary key,
    REV_        int                     null,
    FIRST_      varchar(255)            null,
    LAST_       varchar(255)            null,
    EMAIL_      varchar(255)            null,
    PWD_        varchar(255)            null,
    PICTURE_ID_ varchar(64)             null,
    TENANT_ID_  varchar(255) default '' null
)
    collate = utf8mb3_bin;

