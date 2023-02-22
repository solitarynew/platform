create table ACT_GE_PROPERTY
(
    NAME_  varchar(64)  not null
        primary key,
    VALUE_ varchar(300) null,
    REV_   int          null
)
    collate = utf8mb3_bin;

INSERT INTO workflow.ACT_GE_PROPERTY (NAME_, VALUE_, REV_) VALUES ('cfg.execution-related-entities-count', 'true', 1);
INSERT INTO workflow.ACT_GE_PROPERTY (NAME_, VALUE_, REV_) VALUES ('cfg.task-related-entities-count', 'true', 1);
INSERT INTO workflow.ACT_GE_PROPERTY (NAME_, VALUE_, REV_) VALUES ('common.schema.version', '6.3.0.1', 1);
INSERT INTO workflow.ACT_GE_PROPERTY (NAME_, VALUE_, REV_) VALUES ('identitylink.schema.version', '6.3.0.1', 1);
INSERT INTO workflow.ACT_GE_PROPERTY (NAME_, VALUE_, REV_) VALUES ('job.schema.version', '6.3.0.1', 1);
INSERT INTO workflow.ACT_GE_PROPERTY (NAME_, VALUE_, REV_) VALUES ('next.dbid', '117501', 48);
INSERT INTO workflow.ACT_GE_PROPERTY (NAME_, VALUE_, REV_) VALUES ('schema.history', 'create(6.3.0.1)', 1);
INSERT INTO workflow.ACT_GE_PROPERTY (NAME_, VALUE_, REV_) VALUES ('schema.version', '6.3.0.1', 1);
INSERT INTO workflow.ACT_GE_PROPERTY (NAME_, VALUE_, REV_) VALUES ('task.schema.version', '6.3.0.1', 1);
INSERT INTO workflow.ACT_GE_PROPERTY (NAME_, VALUE_, REV_) VALUES ('variable.schema.version', '6.3.0.1', 1);
