create table ACT_RU_IDENTITYLINK
(
    ID_                  varchar(64)  not null
        primary key,
    REV_                 int          null,
    GROUP_ID_            varchar(255) null,
    TYPE_                varchar(255) null,
    USER_ID_             varchar(255) null,
    TASK_ID_             varchar(64)  null,
    PROC_INST_ID_        varchar(64)  null,
    PROC_DEF_ID_         varchar(64)  null,
    SCOPE_ID_            varchar(255) null,
    SCOPE_TYPE_          varchar(255) null,
    SCOPE_DEFINITION_ID_ varchar(255) null,
    constraint ACT_FK_ATHRZ_PROCEDEF
        foreign key (PROC_DEF_ID_) references ACT_RE_PROCDEF (ID_),
    constraint ACT_FK_IDL_PROCINST
        foreign key (PROC_INST_ID_) references ACT_RU_EXECUTION (ID_),
    constraint ACT_FK_TSKASS_TASK
        foreign key (TASK_ID_) references ACT_RU_TASK (ID_)
)
    collate = utf8mb3_bin;

create index ACT_IDX_ATHRZ_PROCEDEF
    on ACT_RU_IDENTITYLINK (PROC_DEF_ID_);

create index ACT_IDX_IDENT_LNK_GROUP
    on ACT_RU_IDENTITYLINK (GROUP_ID_);

create index ACT_IDX_IDENT_LNK_SCOPE
    on ACT_RU_IDENTITYLINK (SCOPE_ID_, SCOPE_TYPE_);

create index ACT_IDX_IDENT_LNK_SCOPE_DEF
    on ACT_RU_IDENTITYLINK (SCOPE_DEFINITION_ID_, SCOPE_TYPE_);

create index ACT_IDX_IDENT_LNK_USER
    on ACT_RU_IDENTITYLINK (USER_ID_);

INSERT INTO workflow.ACT_RU_IDENTITYLINK (ID_, REV_, GROUP_ID_, TYPE_, USER_ID_, TASK_ID_, PROC_INST_ID_, PROC_DEF_ID_, SCOPE_ID_, SCOPE_TYPE_, SCOPE_DEFINITION_ID_) VALUES ('100007', 1, null, 'participant', '1', null, '100001', null, null, null, null);
INSERT INTO workflow.ACT_RU_IDENTITYLINK (ID_, REV_, GROUP_ID_, TYPE_, USER_ID_, TASK_ID_, PROC_INST_ID_, PROC_DEF_ID_, SCOPE_ID_, SCOPE_TYPE_, SCOPE_DEFINITION_ID_) VALUES ('10004', 1, null, 'participant', '2', null, '7501', null, null, null, null);
INSERT INTO workflow.ACT_RU_IDENTITYLINK (ID_, REV_, GROUP_ID_, TYPE_, USER_ID_, TASK_ID_, PROC_INST_ID_, PROC_DEF_ID_, SCOPE_ID_, SCOPE_TYPE_, SCOPE_DEFINITION_ID_) VALUES ('105021', 1, null, 'participant', '1', null, '105015', null, null, null, null);
INSERT INTO workflow.ACT_RU_IDENTITYLINK (ID_, REV_, GROUP_ID_, TYPE_, USER_ID_, TASK_ID_, PROC_INST_ID_, PROC_DEF_ID_, SCOPE_ID_, SCOPE_TYPE_, SCOPE_DEFINITION_ID_) VALUES ('105051', 1, null, 'participant', '1', null, '105045', null, null, null, null);
INSERT INTO workflow.ACT_RU_IDENTITYLINK (ID_, REV_, GROUP_ID_, TYPE_, USER_ID_, TASK_ID_, PROC_INST_ID_, PROC_DEF_ID_, SCOPE_ID_, SCOPE_TYPE_, SCOPE_DEFINITION_ID_) VALUES ('105072', 1, null, 'participant', '1', null, '105066', null, null, null, null);
INSERT INTO workflow.ACT_RU_IDENTITYLINK (ID_, REV_, GROUP_ID_, TYPE_, USER_ID_, TASK_ID_, PROC_INST_ID_, PROC_DEF_ID_, SCOPE_ID_, SCOPE_TYPE_, SCOPE_DEFINITION_ID_) VALUES ('107511', 1, null, 'participant', '1', null, '107505', null, null, null, null);
INSERT INTO workflow.ACT_RU_IDENTITYLINK (ID_, REV_, GROUP_ID_, TYPE_, USER_ID_, TASK_ID_, PROC_INST_ID_, PROC_DEF_ID_, SCOPE_ID_, SCOPE_TYPE_, SCOPE_DEFINITION_ID_) VALUES ('107518', 1, null, 'participant', '1', null, '107512', null, null, null, null);
INSERT INTO workflow.ACT_RU_IDENTITYLINK (ID_, REV_, GROUP_ID_, TYPE_, USER_ID_, TASK_ID_, PROC_INST_ID_, PROC_DEF_ID_, SCOPE_ID_, SCOPE_TYPE_, SCOPE_DEFINITION_ID_) VALUES ('107535', 1, null, 'participant', '2', null, '107512', null, null, null, null);
INSERT INTO workflow.ACT_RU_IDENTITYLINK (ID_, REV_, GROUP_ID_, TYPE_, USER_ID_, TASK_ID_, PROC_INST_ID_, PROC_DEF_ID_, SCOPE_ID_, SCOPE_TYPE_, SCOPE_DEFINITION_ID_) VALUES ('110017', 1, null, 'participant', '2', null, '107505', null, null, null, null);
INSERT INTO workflow.ACT_RU_IDENTITYLINK (ID_, REV_, GROUP_ID_, TYPE_, USER_ID_, TASK_ID_, PROC_INST_ID_, PROC_DEF_ID_, SCOPE_ID_, SCOPE_TYPE_, SCOPE_DEFINITION_ID_) VALUES ('110024', 1, null, 'participant', '1', null, '110018', null, null, null, null);
INSERT INTO workflow.ACT_RU_IDENTITYLINK (ID_, REV_, GROUP_ID_, TYPE_, USER_ID_, TASK_ID_, PROC_INST_ID_, PROC_DEF_ID_, SCOPE_ID_, SCOPE_TYPE_, SCOPE_DEFINITION_ID_) VALUES ('112507', 1, null, 'participant', '1', null, '112501', null, null, null, null);
INSERT INTO workflow.ACT_RU_IDENTITYLINK (ID_, REV_, GROUP_ID_, TYPE_, USER_ID_, TASK_ID_, PROC_INST_ID_, PROC_DEF_ID_, SCOPE_ID_, SCOPE_TYPE_, SCOPE_DEFINITION_ID_) VALUES ('112527', 1, null, 'participant', '2', null, '112501', null, null, null, null);
INSERT INTO workflow.ACT_RU_IDENTITYLINK (ID_, REV_, GROUP_ID_, TYPE_, USER_ID_, TASK_ID_, PROC_INST_ID_, PROC_DEF_ID_, SCOPE_ID_, SCOPE_TYPE_, SCOPE_DEFINITION_ID_) VALUES ('112534', 1, null, 'participant', '1', null, '112528', null, null, null, null);
INSERT INTO workflow.ACT_RU_IDENTITYLINK (ID_, REV_, GROUP_ID_, TYPE_, USER_ID_, TASK_ID_, PROC_INST_ID_, PROC_DEF_ID_, SCOPE_ID_, SCOPE_TYPE_, SCOPE_DEFINITION_ID_) VALUES ('112554', 1, null, 'participant', '2', null, '112528', null, null, null, null);
INSERT INTO workflow.ACT_RU_IDENTITYLINK (ID_, REV_, GROUP_ID_, TYPE_, USER_ID_, TASK_ID_, PROC_INST_ID_, PROC_DEF_ID_, SCOPE_ID_, SCOPE_TYPE_, SCOPE_DEFINITION_ID_) VALUES ('112561', 1, null, 'participant', '1', null, '112555', null, null, null, null);
INSERT INTO workflow.ACT_RU_IDENTITYLINK (ID_, REV_, GROUP_ID_, TYPE_, USER_ID_, TASK_ID_, PROC_INST_ID_, PROC_DEF_ID_, SCOPE_ID_, SCOPE_TYPE_, SCOPE_DEFINITION_ID_) VALUES ('112581', 1, null, 'participant', '2', null, '112555', null, null, null, null);
INSERT INTO workflow.ACT_RU_IDENTITYLINK (ID_, REV_, GROUP_ID_, TYPE_, USER_ID_, TASK_ID_, PROC_INST_ID_, PROC_DEF_ID_, SCOPE_ID_, SCOPE_TYPE_, SCOPE_DEFINITION_ID_) VALUES ('115011', 1, null, 'participant', '1', null, '115005', null, null, null, null);
INSERT INTO workflow.ACT_RU_IDENTITYLINK (ID_, REV_, GROUP_ID_, TYPE_, USER_ID_, TASK_ID_, PROC_INST_ID_, PROC_DEF_ID_, SCOPE_ID_, SCOPE_TYPE_, SCOPE_DEFINITION_ID_) VALUES ('115031', 1, null, 'participant', '2', null, '115005', null, null, null, null);
INSERT INTO workflow.ACT_RU_IDENTITYLINK (ID_, REV_, GROUP_ID_, TYPE_, USER_ID_, TASK_ID_, PROC_INST_ID_, PROC_DEF_ID_, SCOPE_ID_, SCOPE_TYPE_, SCOPE_DEFINITION_ID_) VALUES ('12511', 1, null, 'participant', '1', null, '12505', null, null, null, null);
INSERT INTO workflow.ACT_RU_IDENTITYLINK (ID_, REV_, GROUP_ID_, TYPE_, USER_ID_, TASK_ID_, PROC_INST_ID_, PROC_DEF_ID_, SCOPE_ID_, SCOPE_TYPE_, SCOPE_DEFINITION_ID_) VALUES ('15004', 1, null, 'participant', '2', null, '12505', null, null, null, null);
INSERT INTO workflow.ACT_RU_IDENTITYLINK (ID_, REV_, GROUP_ID_, TYPE_, USER_ID_, TASK_ID_, PROC_INST_ID_, PROC_DEF_ID_, SCOPE_ID_, SCOPE_TYPE_, SCOPE_DEFINITION_ID_) VALUES ('17507', 1, null, 'participant', '1', null, '17501', null, null, null, null);
INSERT INTO workflow.ACT_RU_IDENTITYLINK (ID_, REV_, GROUP_ID_, TYPE_, USER_ID_, TASK_ID_, PROC_INST_ID_, PROC_DEF_ID_, SCOPE_ID_, SCOPE_TYPE_, SCOPE_DEFINITION_ID_) VALUES ('20004', 1, null, 'participant', '2', null, '17501', null, null, null, null);
INSERT INTO workflow.ACT_RU_IDENTITYLINK (ID_, REV_, GROUP_ID_, TYPE_, USER_ID_, TASK_ID_, PROC_INST_ID_, PROC_DEF_ID_, SCOPE_ID_, SCOPE_TYPE_, SCOPE_DEFINITION_ID_) VALUES ('22507', 1, null, 'participant', '1', null, '22501', null, null, null, null);
INSERT INTO workflow.ACT_RU_IDENTITYLINK (ID_, REV_, GROUP_ID_, TYPE_, USER_ID_, TASK_ID_, PROC_INST_ID_, PROC_DEF_ID_, SCOPE_ID_, SCOPE_TYPE_, SCOPE_DEFINITION_ID_) VALUES ('25004', 1, null, 'participant', '2', null, '22501', null, null, null, null);
INSERT INTO workflow.ACT_RU_IDENTITYLINK (ID_, REV_, GROUP_ID_, TYPE_, USER_ID_, TASK_ID_, PROC_INST_ID_, PROC_DEF_ID_, SCOPE_ID_, SCOPE_TYPE_, SCOPE_DEFINITION_ID_) VALUES ('27507', 1, null, 'participant', '1', null, '27501', null, null, null, null);
INSERT INTO workflow.ACT_RU_IDENTITYLINK (ID_, REV_, GROUP_ID_, TYPE_, USER_ID_, TASK_ID_, PROC_INST_ID_, PROC_DEF_ID_, SCOPE_ID_, SCOPE_TYPE_, SCOPE_DEFINITION_ID_) VALUES ('27511', 1, null, 'participant', '2', null, '27501', null, null, null, null);
INSERT INTO workflow.ACT_RU_IDENTITYLINK (ID_, REV_, GROUP_ID_, TYPE_, USER_ID_, TASK_ID_, PROC_INST_ID_, PROC_DEF_ID_, SCOPE_ID_, SCOPE_TYPE_, SCOPE_DEFINITION_ID_) VALUES ('30007', 1, null, 'participant', '1', null, '30001', null, null, null, null);
INSERT INTO workflow.ACT_RU_IDENTITYLINK (ID_, REV_, GROUP_ID_, TYPE_, USER_ID_, TASK_ID_, PROC_INST_ID_, PROC_DEF_ID_, SCOPE_ID_, SCOPE_TYPE_, SCOPE_DEFINITION_ID_) VALUES ('30011', 1, null, 'participant', '2', null, '30001', null, null, null, null);
INSERT INTO workflow.ACT_RU_IDENTITYLINK (ID_, REV_, GROUP_ID_, TYPE_, USER_ID_, TASK_ID_, PROC_INST_ID_, PROC_DEF_ID_, SCOPE_ID_, SCOPE_TYPE_, SCOPE_DEFINITION_ID_) VALUES ('32511', 1, null, 'participant', '1', null, '32505', null, null, null, null);
INSERT INTO workflow.ACT_RU_IDENTITYLINK (ID_, REV_, GROUP_ID_, TYPE_, USER_ID_, TASK_ID_, PROC_INST_ID_, PROC_DEF_ID_, SCOPE_ID_, SCOPE_TYPE_, SCOPE_DEFINITION_ID_) VALUES ('32515', 1, null, 'participant', '2', null, '32505', null, null, null, null);
INSERT INTO workflow.ACT_RU_IDENTITYLINK (ID_, REV_, GROUP_ID_, TYPE_, USER_ID_, TASK_ID_, PROC_INST_ID_, PROC_DEF_ID_, SCOPE_ID_, SCOPE_TYPE_, SCOPE_DEFINITION_ID_) VALUES ('35011', 1, null, 'participant', '1', null, '35005', null, null, null, null);
INSERT INTO workflow.ACT_RU_IDENTITYLINK (ID_, REV_, GROUP_ID_, TYPE_, USER_ID_, TASK_ID_, PROC_INST_ID_, PROC_DEF_ID_, SCOPE_ID_, SCOPE_TYPE_, SCOPE_DEFINITION_ID_) VALUES ('35015', 1, null, 'participant', '2', null, '35005', null, null, null, null);
INSERT INTO workflow.ACT_RU_IDENTITYLINK (ID_, REV_, GROUP_ID_, TYPE_, USER_ID_, TASK_ID_, PROC_INST_ID_, PROC_DEF_ID_, SCOPE_ID_, SCOPE_TYPE_, SCOPE_DEFINITION_ID_) VALUES ('37511', 1, null, 'participant', '1', null, '37505', null, null, null, null);
INSERT INTO workflow.ACT_RU_IDENTITYLINK (ID_, REV_, GROUP_ID_, TYPE_, USER_ID_, TASK_ID_, PROC_INST_ID_, PROC_DEF_ID_, SCOPE_ID_, SCOPE_TYPE_, SCOPE_DEFINITION_ID_) VALUES ('37515', 1, null, 'participant', '2', null, '37505', null, null, null, null);
INSERT INTO workflow.ACT_RU_IDENTITYLINK (ID_, REV_, GROUP_ID_, TYPE_, USER_ID_, TASK_ID_, PROC_INST_ID_, PROC_DEF_ID_, SCOPE_ID_, SCOPE_TYPE_, SCOPE_DEFINITION_ID_) VALUES ('40007', 1, null, 'participant', '1', null, '40001', null, null, null, null);
INSERT INTO workflow.ACT_RU_IDENTITYLINK (ID_, REV_, GROUP_ID_, TYPE_, USER_ID_, TASK_ID_, PROC_INST_ID_, PROC_DEF_ID_, SCOPE_ID_, SCOPE_TYPE_, SCOPE_DEFINITION_ID_) VALUES ('40011', 1, null, 'participant', '2', null, '40001', null, null, null, null);
INSERT INTO workflow.ACT_RU_IDENTITYLINK (ID_, REV_, GROUP_ID_, TYPE_, USER_ID_, TASK_ID_, PROC_INST_ID_, PROC_DEF_ID_, SCOPE_ID_, SCOPE_TYPE_, SCOPE_DEFINITION_ID_) VALUES ('42507', 1, null, 'participant', '1', null, '42501', null, null, null, null);
INSERT INTO workflow.ACT_RU_IDENTITYLINK (ID_, REV_, GROUP_ID_, TYPE_, USER_ID_, TASK_ID_, PROC_INST_ID_, PROC_DEF_ID_, SCOPE_ID_, SCOPE_TYPE_, SCOPE_DEFINITION_ID_) VALUES ('42511', 1, null, 'participant', '2', null, '42501', null, null, null, null);
INSERT INTO workflow.ACT_RU_IDENTITYLINK (ID_, REV_, GROUP_ID_, TYPE_, USER_ID_, TASK_ID_, PROC_INST_ID_, PROC_DEF_ID_, SCOPE_ID_, SCOPE_TYPE_, SCOPE_DEFINITION_ID_) VALUES ('45007', 1, null, 'participant', '1', null, '45001', null, null, null, null);
INSERT INTO workflow.ACT_RU_IDENTITYLINK (ID_, REV_, GROUP_ID_, TYPE_, USER_ID_, TASK_ID_, PROC_INST_ID_, PROC_DEF_ID_, SCOPE_ID_, SCOPE_TYPE_, SCOPE_DEFINITION_ID_) VALUES ('45014', 1, null, 'participant', '2', null, '45001', null, null, null, null);
INSERT INTO workflow.ACT_RU_IDENTITYLINK (ID_, REV_, GROUP_ID_, TYPE_, USER_ID_, TASK_ID_, PROC_INST_ID_, PROC_DEF_ID_, SCOPE_ID_, SCOPE_TYPE_, SCOPE_DEFINITION_ID_) VALUES ('47507', 1, null, 'participant', '1', null, '47501', null, null, null, null);
INSERT INTO workflow.ACT_RU_IDENTITYLINK (ID_, REV_, GROUP_ID_, TYPE_, USER_ID_, TASK_ID_, PROC_INST_ID_, PROC_DEF_ID_, SCOPE_ID_, SCOPE_TYPE_, SCOPE_DEFINITION_ID_) VALUES ('47514', 1, null, 'participant', '2', null, '47501', null, null, null, null);
INSERT INTO workflow.ACT_RU_IDENTITYLINK (ID_, REV_, GROUP_ID_, TYPE_, USER_ID_, TASK_ID_, PROC_INST_ID_, PROC_DEF_ID_, SCOPE_ID_, SCOPE_TYPE_, SCOPE_DEFINITION_ID_) VALUES ('50007', 1, null, 'participant', '1', null, '50001', null, null, null, null);
INSERT INTO workflow.ACT_RU_IDENTITYLINK (ID_, REV_, GROUP_ID_, TYPE_, USER_ID_, TASK_ID_, PROC_INST_ID_, PROC_DEF_ID_, SCOPE_ID_, SCOPE_TYPE_, SCOPE_DEFINITION_ID_) VALUES ('50014', 1, null, 'participant', '2', null, '50001', null, null, null, null);
INSERT INTO workflow.ACT_RU_IDENTITYLINK (ID_, REV_, GROUP_ID_, TYPE_, USER_ID_, TASK_ID_, PROC_INST_ID_, PROC_DEF_ID_, SCOPE_ID_, SCOPE_TYPE_, SCOPE_DEFINITION_ID_) VALUES ('52507', 1, null, 'participant', '1', null, '52501', null, null, null, null);
INSERT INTO workflow.ACT_RU_IDENTITYLINK (ID_, REV_, GROUP_ID_, TYPE_, USER_ID_, TASK_ID_, PROC_INST_ID_, PROC_DEF_ID_, SCOPE_ID_, SCOPE_TYPE_, SCOPE_DEFINITION_ID_) VALUES ('52514', 1, null, 'participant', '2', null, '52501', null, null, null, null);
INSERT INTO workflow.ACT_RU_IDENTITYLINK (ID_, REV_, GROUP_ID_, TYPE_, USER_ID_, TASK_ID_, PROC_INST_ID_, PROC_DEF_ID_, SCOPE_ID_, SCOPE_TYPE_, SCOPE_DEFINITION_ID_) VALUES ('55007', 1, null, 'participant', '1', null, '55001', null, null, null, null);
INSERT INTO workflow.ACT_RU_IDENTITYLINK (ID_, REV_, GROUP_ID_, TYPE_, USER_ID_, TASK_ID_, PROC_INST_ID_, PROC_DEF_ID_, SCOPE_ID_, SCOPE_TYPE_, SCOPE_DEFINITION_ID_) VALUES ('55017', 1, null, 'participant', '2', null, '55001', null, null, null, null);
INSERT INTO workflow.ACT_RU_IDENTITYLINK (ID_, REV_, GROUP_ID_, TYPE_, USER_ID_, TASK_ID_, PROC_INST_ID_, PROC_DEF_ID_, SCOPE_ID_, SCOPE_TYPE_, SCOPE_DEFINITION_ID_) VALUES ('57507', 1, null, 'participant', '1', null, '57501', null, null, null, null);
INSERT INTO workflow.ACT_RU_IDENTITYLINK (ID_, REV_, GROUP_ID_, TYPE_, USER_ID_, TASK_ID_, PROC_INST_ID_, PROC_DEF_ID_, SCOPE_ID_, SCOPE_TYPE_, SCOPE_DEFINITION_ID_) VALUES ('60007', 1, null, 'participant', '1', null, '60001', null, null, null, null);
INSERT INTO workflow.ACT_RU_IDENTITYLINK (ID_, REV_, GROUP_ID_, TYPE_, USER_ID_, TASK_ID_, PROC_INST_ID_, PROC_DEF_ID_, SCOPE_ID_, SCOPE_TYPE_, SCOPE_DEFINITION_ID_) VALUES ('62507', 1, null, 'participant', '1', null, '62501', null, null, null, null);
INSERT INTO workflow.ACT_RU_IDENTITYLINK (ID_, REV_, GROUP_ID_, TYPE_, USER_ID_, TASK_ID_, PROC_INST_ID_, PROC_DEF_ID_, SCOPE_ID_, SCOPE_TYPE_, SCOPE_DEFINITION_ID_) VALUES ('65007', 1, null, 'participant', '1', null, '65001', null, null, null, null);
INSERT INTO workflow.ACT_RU_IDENTITYLINK (ID_, REV_, GROUP_ID_, TYPE_, USER_ID_, TASK_ID_, PROC_INST_ID_, PROC_DEF_ID_, SCOPE_ID_, SCOPE_TYPE_, SCOPE_DEFINITION_ID_) VALUES ('67507', 1, null, 'participant', '1', null, '67501', null, null, null, null);
INSERT INTO workflow.ACT_RU_IDENTITYLINK (ID_, REV_, GROUP_ID_, TYPE_, USER_ID_, TASK_ID_, PROC_INST_ID_, PROC_DEF_ID_, SCOPE_ID_, SCOPE_TYPE_, SCOPE_DEFINITION_ID_) VALUES ('70007', 1, null, 'participant', '1', null, '70001', null, null, null, null);
INSERT INTO workflow.ACT_RU_IDENTITYLINK (ID_, REV_, GROUP_ID_, TYPE_, USER_ID_, TASK_ID_, PROC_INST_ID_, PROC_DEF_ID_, SCOPE_ID_, SCOPE_TYPE_, SCOPE_DEFINITION_ID_) VALUES ('72504', 1, null, 'participant', '2', null, '57501', null, null, null, null);
INSERT INTO workflow.ACT_RU_IDENTITYLINK (ID_, REV_, GROUP_ID_, TYPE_, USER_ID_, TASK_ID_, PROC_INST_ID_, PROC_DEF_ID_, SCOPE_ID_, SCOPE_TYPE_, SCOPE_DEFINITION_ID_) VALUES ('72508', 1, null, 'participant', '2', null, '60001', null, null, null, null);
INSERT INTO workflow.ACT_RU_IDENTITYLINK (ID_, REV_, GROUP_ID_, TYPE_, USER_ID_, TASK_ID_, PROC_INST_ID_, PROC_DEF_ID_, SCOPE_ID_, SCOPE_TYPE_, SCOPE_DEFINITION_ID_) VALUES ('75007', 1, null, 'participant', '1', null, '75001', null, null, null, null);
INSERT INTO workflow.ACT_RU_IDENTITYLINK (ID_, REV_, GROUP_ID_, TYPE_, USER_ID_, TASK_ID_, PROC_INST_ID_, PROC_DEF_ID_, SCOPE_ID_, SCOPE_TYPE_, SCOPE_DEFINITION_ID_) VALUES ('75014', 1, null, 'participant', '1', null, '75008', null, null, null, null);
INSERT INTO workflow.ACT_RU_IDENTITYLINK (ID_, REV_, GROUP_ID_, TYPE_, USER_ID_, TASK_ID_, PROC_INST_ID_, PROC_DEF_ID_, SCOPE_ID_, SCOPE_TYPE_, SCOPE_DEFINITION_ID_) VALUES ('7507', 1, null, 'participant', '1', null, '7501', null, null, null, null);
INSERT INTO workflow.ACT_RU_IDENTITYLINK (ID_, REV_, GROUP_ID_, TYPE_, USER_ID_, TASK_ID_, PROC_INST_ID_, PROC_DEF_ID_, SCOPE_ID_, SCOPE_TYPE_, SCOPE_DEFINITION_ID_) VALUES ('80006', 1, null, 'participant', '2', null, '75008', null, null, null, null);
INSERT INTO workflow.ACT_RU_IDENTITYLINK (ID_, REV_, GROUP_ID_, TYPE_, USER_ID_, TASK_ID_, PROC_INST_ID_, PROC_DEF_ID_, SCOPE_ID_, SCOPE_TYPE_, SCOPE_DEFINITION_ID_) VALUES ('80013', 1, null, 'participant', '1', null, '80007', null, null, null, null);
INSERT INTO workflow.ACT_RU_IDENTITYLINK (ID_, REV_, GROUP_ID_, TYPE_, USER_ID_, TASK_ID_, PROC_INST_ID_, PROC_DEF_ID_, SCOPE_ID_, SCOPE_TYPE_, SCOPE_DEFINITION_ID_) VALUES ('80019', 1, null, 'participant', '2', null, '80007', null, null, null, null);
INSERT INTO workflow.ACT_RU_IDENTITYLINK (ID_, REV_, GROUP_ID_, TYPE_, USER_ID_, TASK_ID_, PROC_INST_ID_, PROC_DEF_ID_, SCOPE_ID_, SCOPE_TYPE_, SCOPE_DEFINITION_ID_) VALUES ('82504', 1, null, 'participant', '2', null, '75001', null, null, null, null);
INSERT INTO workflow.ACT_RU_IDENTITYLINK (ID_, REV_, GROUP_ID_, TYPE_, USER_ID_, TASK_ID_, PROC_INST_ID_, PROC_DEF_ID_, SCOPE_ID_, SCOPE_TYPE_, SCOPE_DEFINITION_ID_) VALUES ('82510', 1, null, 'participant', '2', null, '70001', null, null, null, null);
INSERT INTO workflow.ACT_RU_IDENTITYLINK (ID_, REV_, GROUP_ID_, TYPE_, USER_ID_, TASK_ID_, PROC_INST_ID_, PROC_DEF_ID_, SCOPE_ID_, SCOPE_TYPE_, SCOPE_DEFINITION_ID_) VALUES ('82514', 1, null, 'participant', '2', null, '67501', null, null, null, null);
INSERT INTO workflow.ACT_RU_IDENTITYLINK (ID_, REV_, GROUP_ID_, TYPE_, USER_ID_, TASK_ID_, PROC_INST_ID_, PROC_DEF_ID_, SCOPE_ID_, SCOPE_TYPE_, SCOPE_DEFINITION_ID_) VALUES ('82523', 1, null, 'participant', '2', null, '62501', null, null, null, null);
INSERT INTO workflow.ACT_RU_IDENTITYLINK (ID_, REV_, GROUP_ID_, TYPE_, USER_ID_, TASK_ID_, PROC_INST_ID_, PROC_DEF_ID_, SCOPE_ID_, SCOPE_TYPE_, SCOPE_DEFINITION_ID_) VALUES ('85013', 1, null, 'participant', '1', null, '85007', null, null, null, null);
INSERT INTO workflow.ACT_RU_IDENTITYLINK (ID_, REV_, GROUP_ID_, TYPE_, USER_ID_, TASK_ID_, PROC_INST_ID_, PROC_DEF_ID_, SCOPE_ID_, SCOPE_TYPE_, SCOPE_DEFINITION_ID_) VALUES ('85022', 1, null, 'participant', '2', null, '85007', null, null, null, null);
