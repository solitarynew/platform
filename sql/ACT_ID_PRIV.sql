create table ACT_ID_PRIV
(
    ID_   varchar(64)  not null
        primary key,
    NAME_ varchar(255) not null,
    constraint ACT_UNIQ_PRIV_NAME
        unique (NAME_)
)
    collate = utf8mb3_bin;

