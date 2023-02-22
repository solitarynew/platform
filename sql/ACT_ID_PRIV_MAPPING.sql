create table ACT_ID_PRIV_MAPPING
(
    ID_       varchar(64)  not null
        primary key,
    PRIV_ID_  varchar(64)  not null,
    USER_ID_  varchar(255) null,
    GROUP_ID_ varchar(255) null,
    constraint ACT_FK_PRIV_MAPPING
        foreign key (PRIV_ID_) references ACT_ID_PRIV (ID_)
)
    collate = utf8mb3_bin;

create index ACT_IDX_PRIV_GROUP
    on ACT_ID_PRIV_MAPPING (GROUP_ID_);

create index ACT_IDX_PRIV_USER
    on ACT_ID_PRIV_MAPPING (USER_ID_);

