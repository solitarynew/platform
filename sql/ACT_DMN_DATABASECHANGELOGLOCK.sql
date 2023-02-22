create table ACT_DMN_DATABASECHANGELOGLOCK
(
    ID          int          not null
        primary key,
    LOCKED      bit          not null,
    LOCKGRANTED datetime     null,
    LOCKEDBY    varchar(255) null
);

INSERT INTO workflow.ACT_DMN_DATABASECHANGELOGLOCK (ID, LOCKED, LOCKGRANTED, LOCKEDBY) VALUES (1, false, null, null);
