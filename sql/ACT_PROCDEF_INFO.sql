create table ACT_PROCDEF_INFO
(
    ID_           varchar(64) not null
        primary key,
    PROC_DEF_ID_  varchar(64) not null,
    REV_          int         null,
    INFO_JSON_ID_ varchar(64) null,
    constraint ACT_UNIQ_INFO_PROCDEF
        unique (PROC_DEF_ID_),
    constraint ACT_FK_INFO_JSON_BA
        foreign key (INFO_JSON_ID_) references ACT_GE_BYTEARRAY (ID_),
    constraint ACT_FK_INFO_PROCDEF
        foreign key (PROC_DEF_ID_) references ACT_RE_PROCDEF (ID_)
)
    collate = utf8mb3_bin;

create index ACT_IDX_INFO_PROCDEF
    on ACT_PROCDEF_INFO (PROC_DEF_ID_);

