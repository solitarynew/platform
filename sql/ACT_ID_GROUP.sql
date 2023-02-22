create table ACT_ID_GROUP
(
    ID_   varchar(64)  not null
        primary key,
    REV_  int          null,
    NAME_ varchar(255) null,
    TYPE_ varchar(255) null
)
    collate = utf8mb3_bin;

