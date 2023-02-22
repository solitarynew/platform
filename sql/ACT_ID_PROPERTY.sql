create table ACT_ID_PROPERTY
(
    NAME_  varchar(64)  not null
        primary key,
    VALUE_ varchar(300) null,
    REV_   int          null
)
    collate = utf8mb3_bin;

INSERT INTO workflow.ACT_ID_PROPERTY (NAME_, VALUE_, REV_) VALUES ('schema.version', '6.3.0.1', 1);
