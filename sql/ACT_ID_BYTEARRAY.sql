create table ACT_ID_BYTEARRAY
(
    ID_    varchar(64)  not null
        primary key,
    REV_   int          null,
    NAME_  varchar(255) null,
    BYTES_ longblob     null
)
    collate = utf8mb3_bin;

