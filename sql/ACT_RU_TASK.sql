create table ACT_RU_TASK
(
    ID_                  varchar(64)             not null
        primary key,
    REV_                 int                     null,
    EXECUTION_ID_        varchar(64)             null,
    PROC_INST_ID_        varchar(64)             null,
    PROC_DEF_ID_         varchar(64)             null,
    TASK_DEF_ID_         varchar(64)             null,
    SCOPE_ID_            varchar(255)            null,
    SUB_SCOPE_ID_        varchar(255)            null,
    SCOPE_TYPE_          varchar(255)            null,
    SCOPE_DEFINITION_ID_ varchar(255)            null,
    NAME_                varchar(255)            null,
    PARENT_TASK_ID_      varchar(64)             null,
    DESCRIPTION_         varchar(4000)           null,
    TASK_DEF_KEY_        varchar(255)            null,
    OWNER_               varchar(255)            null,
    ASSIGNEE_            varchar(255)            null,
    DELEGATION_          varchar(64)             null,
    PRIORITY_            int                     null,
    CREATE_TIME_         timestamp(3)            null,
    DUE_DATE_            datetime(3)             null,
    CATEGORY_            varchar(255)            null,
    SUSPENSION_STATE_    int                     null,
    TENANT_ID_           varchar(255) default '' null,
    FORM_KEY_            varchar(255)            null,
    CLAIM_TIME_          datetime(3)             null,
    IS_COUNT_ENABLED_    tinyint                 null,
    VAR_COUNT_           int                     null,
    ID_LINK_COUNT_       int                     null,
    SUB_TASK_COUNT_      int                     null,
    constraint ACT_FK_TASK_EXE
        foreign key (EXECUTION_ID_) references ACT_RU_EXECUTION (ID_),
    constraint ACT_FK_TASK_PROCDEF
        foreign key (PROC_DEF_ID_) references ACT_RE_PROCDEF (ID_),
    constraint ACT_FK_TASK_PROCINST
        foreign key (PROC_INST_ID_) references ACT_RU_EXECUTION (ID_)
)
    collate = utf8mb3_bin;

create index ACT_IDX_TASK_CREATE
    on ACT_RU_TASK (CREATE_TIME_);

create index ACT_IDX_TASK_SCOPE
    on ACT_RU_TASK (SCOPE_ID_, SCOPE_TYPE_);

create index ACT_IDX_TASK_SCOPE_DEF
    on ACT_RU_TASK (SCOPE_DEFINITION_ID_, SCOPE_TYPE_);

create index ACT_IDX_TASK_SUB_SCOPE
    on ACT_RU_TASK (SUB_SCOPE_ID_, SCOPE_TYPE_);

INSERT INTO workflow.ACT_RU_TASK (ID_, REV_, EXECUTION_ID_, PROC_INST_ID_, PROC_DEF_ID_, TASK_DEF_ID_, SCOPE_ID_, SUB_SCOPE_ID_, SCOPE_TYPE_, SCOPE_DEFINITION_ID_, NAME_, PARENT_TASK_ID_, DESCRIPTION_, TASK_DEF_KEY_, OWNER_, ASSIGNEE_, DELEGATION_, PRIORITY_, CREATE_TIME_, DUE_DATE_, CATEGORY_, SUSPENSION_STATE_, TENANT_ID_, FORM_KEY_, CLAIM_TIME_, IS_COUNT_ENABLED_, VAR_COUNT_, ID_LINK_COUNT_, SUB_TASK_COUNT_) VALUES ('100005', 1, '100002', '100001', 'process_1667737476222:7:90007', null, null, null, null, null, '填写普通发票', null, null, 'Activity_1wfcnsg', null, '1', null, 50, '2023-02-22 04:58:27.210', null, null, 1, '', null, null, 1, 0, 0, 0);
INSERT INTO workflow.ACT_RU_TASK (ID_, REV_, EXECUTION_ID_, PROC_INST_ID_, PROC_DEF_ID_, TASK_DEF_ID_, SCOPE_ID_, SUB_SCOPE_ID_, SCOPE_TYPE_, SCOPE_DEFINITION_ID_, NAME_, PARENT_TASK_ID_, DESCRIPTION_, TASK_DEF_KEY_, OWNER_, ASSIGNEE_, DELEGATION_, PRIORITY_, CREATE_TIME_, DUE_DATE_, CATEGORY_, SUSPENSION_STATE_, TENANT_ID_, FORM_KEY_, CLAIM_TIME_, IS_COUNT_ENABLED_, VAR_COUNT_, ID_LINK_COUNT_, SUB_TASK_COUNT_) VALUES ('10002', 1, '7502', '7501', 'process_1667737476222:1:5004', null, null, null, null, null, '审核1', null, null, 'Activity_1vxlpzp', null, '2', null, 50, '2022-11-06 13:51:06.704', null, null, 1, '', null, null, 1, 0, 0, 0);
INSERT INTO workflow.ACT_RU_TASK (ID_, REV_, EXECUTION_ID_, PROC_INST_ID_, PROC_DEF_ID_, TASK_DEF_ID_, SCOPE_ID_, SUB_SCOPE_ID_, SCOPE_TYPE_, SCOPE_DEFINITION_ID_, NAME_, PARENT_TASK_ID_, DESCRIPTION_, TASK_DEF_KEY_, OWNER_, ASSIGNEE_, DELEGATION_, PRIORITY_, CREATE_TIME_, DUE_DATE_, CATEGORY_, SUSPENSION_STATE_, TENANT_ID_, FORM_KEY_, CLAIM_TIME_, IS_COUNT_ENABLED_, VAR_COUNT_, ID_LINK_COUNT_, SUB_TASK_COUNT_) VALUES ('105005', 1, '105002', '105001', 'createBidSecurity:1:102504', null, null, null, null, null, '填写投标保证金', null, null, 'input', null, null, null, 50, '2023-02-22 10:20:08.727', null, null, 1, '', null, null, 1, 0, 0, 0);
INSERT INTO workflow.ACT_RU_TASK (ID_, REV_, EXECUTION_ID_, PROC_INST_ID_, PROC_DEF_ID_, TASK_DEF_ID_, SCOPE_ID_, SUB_SCOPE_ID_, SCOPE_TYPE_, SCOPE_DEFINITION_ID_, NAME_, PARENT_TASK_ID_, DESCRIPTION_, TASK_DEF_KEY_, OWNER_, ASSIGNEE_, DELEGATION_, PRIORITY_, CREATE_TIME_, DUE_DATE_, CATEGORY_, SUSPENSION_STATE_, TENANT_ID_, FORM_KEY_, CLAIM_TIME_, IS_COUNT_ENABLED_, VAR_COUNT_, ID_LINK_COUNT_, SUB_TASK_COUNT_) VALUES ('105014', 1, '105011', '105010', 'createBidSecurity:2:105009', null, null, null, null, null, '填写投标保证金', null, null, 'input', null, null, null, 50, '2023-02-22 10:26:23.894', null, null, 1, '', null, null, 1, 0, 0, 0);
INSERT INTO workflow.ACT_RU_TASK (ID_, REV_, EXECUTION_ID_, PROC_INST_ID_, PROC_DEF_ID_, TASK_DEF_ID_, SCOPE_ID_, SUB_SCOPE_ID_, SCOPE_TYPE_, SCOPE_DEFINITION_ID_, NAME_, PARENT_TASK_ID_, DESCRIPTION_, TASK_DEF_KEY_, OWNER_, ASSIGNEE_, DELEGATION_, PRIORITY_, CREATE_TIME_, DUE_DATE_, CATEGORY_, SUSPENSION_STATE_, TENANT_ID_, FORM_KEY_, CLAIM_TIME_, IS_COUNT_ENABLED_, VAR_COUNT_, ID_LINK_COUNT_, SUB_TASK_COUNT_) VALUES ('105019', 1, '105016', '105015', 'process_1667737476222:7:90007', null, null, null, null, null, '填写普通发票', null, null, 'Activity_1wfcnsg', null, '1', null, 50, '2023-02-22 10:27:19.480', null, null, 1, '', null, null, 1, 0, 0, 0);
INSERT INTO workflow.ACT_RU_TASK (ID_, REV_, EXECUTION_ID_, PROC_INST_ID_, PROC_DEF_ID_, TASK_DEF_ID_, SCOPE_ID_, SUB_SCOPE_ID_, SCOPE_TYPE_, SCOPE_DEFINITION_ID_, NAME_, PARENT_TASK_ID_, DESCRIPTION_, TASK_DEF_KEY_, OWNER_, ASSIGNEE_, DELEGATION_, PRIORITY_, CREATE_TIME_, DUE_DATE_, CATEGORY_, SUSPENSION_STATE_, TENANT_ID_, FORM_KEY_, CLAIM_TIME_, IS_COUNT_ENABLED_, VAR_COUNT_, ID_LINK_COUNT_, SUB_TASK_COUNT_) VALUES ('105026', 1, '105023', '105022', 'createBidSecurity:2:105009', null, null, null, null, null, '填写投标保证金', null, null, 'input', null, null, null, 50, '2023-02-22 10:27:24.074', null, null, 1, '', null, null, 1, 0, 0, 0);
INSERT INTO workflow.ACT_RU_TASK (ID_, REV_, EXECUTION_ID_, PROC_INST_ID_, PROC_DEF_ID_, TASK_DEF_ID_, SCOPE_ID_, SUB_SCOPE_ID_, SCOPE_TYPE_, SCOPE_DEFINITION_ID_, NAME_, PARENT_TASK_ID_, DESCRIPTION_, TASK_DEF_KEY_, OWNER_, ASSIGNEE_, DELEGATION_, PRIORITY_, CREATE_TIME_, DUE_DATE_, CATEGORY_, SUSPENSION_STATE_, TENANT_ID_, FORM_KEY_, CLAIM_TIME_, IS_COUNT_ENABLED_, VAR_COUNT_, ID_LINK_COUNT_, SUB_TASK_COUNT_) VALUES ('105039', 1, '105036', '105035', 'createBidSecurity:4:105034', null, null, null, null, null, '填写投标保证金', null, null, 'input', null, null, null, 50, '2023-02-22 10:29:57.161', null, null, 1, '', null, null, 1, 0, 0, 0);
INSERT INTO workflow.ACT_RU_TASK (ID_, REV_, EXECUTION_ID_, PROC_INST_ID_, PROC_DEF_ID_, TASK_DEF_ID_, SCOPE_ID_, SUB_SCOPE_ID_, SCOPE_TYPE_, SCOPE_DEFINITION_ID_, NAME_, PARENT_TASK_ID_, DESCRIPTION_, TASK_DEF_KEY_, OWNER_, ASSIGNEE_, DELEGATION_, PRIORITY_, CREATE_TIME_, DUE_DATE_, CATEGORY_, SUSPENSION_STATE_, TENANT_ID_, FORM_KEY_, CLAIM_TIME_, IS_COUNT_ENABLED_, VAR_COUNT_, ID_LINK_COUNT_, SUB_TASK_COUNT_) VALUES ('105044', 1, '105041', '105040', 'createBidSecurity:4:105034', null, null, null, null, null, '填写投标保证金', null, null, 'input', null, null, null, 50, '2023-02-22 10:30:11.462', null, null, 1, '', null, null, 1, 0, 0, 0);
INSERT INTO workflow.ACT_RU_TASK (ID_, REV_, EXECUTION_ID_, PROC_INST_ID_, PROC_DEF_ID_, TASK_DEF_ID_, SCOPE_ID_, SUB_SCOPE_ID_, SCOPE_TYPE_, SCOPE_DEFINITION_ID_, NAME_, PARENT_TASK_ID_, DESCRIPTION_, TASK_DEF_KEY_, OWNER_, ASSIGNEE_, DELEGATION_, PRIORITY_, CREATE_TIME_, DUE_DATE_, CATEGORY_, SUSPENSION_STATE_, TENANT_ID_, FORM_KEY_, CLAIM_TIME_, IS_COUNT_ENABLED_, VAR_COUNT_, ID_LINK_COUNT_, SUB_TASK_COUNT_) VALUES ('105049', 1, '105046', '105045', 'process_1667737476222:7:90007', null, null, null, null, null, '填写普通发票', null, null, 'Activity_1wfcnsg', null, '1', null, 50, '2023-02-22 10:30:14.661', null, null, 1, '', null, null, 1, 0, 0, 0);
INSERT INTO workflow.ACT_RU_TASK (ID_, REV_, EXECUTION_ID_, PROC_INST_ID_, PROC_DEF_ID_, TASK_DEF_ID_, SCOPE_ID_, SUB_SCOPE_ID_, SCOPE_TYPE_, SCOPE_DEFINITION_ID_, NAME_, PARENT_TASK_ID_, DESCRIPTION_, TASK_DEF_KEY_, OWNER_, ASSIGNEE_, DELEGATION_, PRIORITY_, CREATE_TIME_, DUE_DATE_, CATEGORY_, SUSPENSION_STATE_, TENANT_ID_, FORM_KEY_, CLAIM_TIME_, IS_COUNT_ENABLED_, VAR_COUNT_, ID_LINK_COUNT_, SUB_TASK_COUNT_) VALUES ('105056', 1, '105053', '105052', 'createBidSecurity:4:105034', null, null, null, null, null, '填写投标保证金', null, null, 'input', null, null, null, 50, '2023-02-22 10:30:17.224', null, null, 1, '', null, null, 1, 0, 0, 0);
INSERT INTO workflow.ACT_RU_TASK (ID_, REV_, EXECUTION_ID_, PROC_INST_ID_, PROC_DEF_ID_, TASK_DEF_ID_, SCOPE_ID_, SUB_SCOPE_ID_, SCOPE_TYPE_, SCOPE_DEFINITION_ID_, NAME_, PARENT_TASK_ID_, DESCRIPTION_, TASK_DEF_KEY_, OWNER_, ASSIGNEE_, DELEGATION_, PRIORITY_, CREATE_TIME_, DUE_DATE_, CATEGORY_, SUSPENSION_STATE_, TENANT_ID_, FORM_KEY_, CLAIM_TIME_, IS_COUNT_ENABLED_, VAR_COUNT_, ID_LINK_COUNT_, SUB_TASK_COUNT_) VALUES ('105065', 1, '105062', '105061', 'createBidSecurity:5:105060', null, null, null, null, null, '填写投标保证金', null, null, 'input', null, null, null, 50, '2023-02-22 10:34:56.810', null, null, 1, '', null, null, 1, 0, 0, 0);
INSERT INTO workflow.ACT_RU_TASK (ID_, REV_, EXECUTION_ID_, PROC_INST_ID_, PROC_DEF_ID_, TASK_DEF_ID_, SCOPE_ID_, SUB_SCOPE_ID_, SCOPE_TYPE_, SCOPE_DEFINITION_ID_, NAME_, PARENT_TASK_ID_, DESCRIPTION_, TASK_DEF_KEY_, OWNER_, ASSIGNEE_, DELEGATION_, PRIORITY_, CREATE_TIME_, DUE_DATE_, CATEGORY_, SUSPENSION_STATE_, TENANT_ID_, FORM_KEY_, CLAIM_TIME_, IS_COUNT_ENABLED_, VAR_COUNT_, ID_LINK_COUNT_, SUB_TASK_COUNT_) VALUES ('105070', 1, '105067', '105066', 'process_1667737476222:7:90007', null, null, null, null, null, '填写普通发票', null, null, 'Activity_1wfcnsg', null, '1', null, 50, '2023-02-22 10:36:49.970', null, null, 1, '', null, null, 1, 0, 0, 0);
INSERT INTO workflow.ACT_RU_TASK (ID_, REV_, EXECUTION_ID_, PROC_INST_ID_, PROC_DEF_ID_, TASK_DEF_ID_, SCOPE_ID_, SUB_SCOPE_ID_, SCOPE_TYPE_, SCOPE_DEFINITION_ID_, NAME_, PARENT_TASK_ID_, DESCRIPTION_, TASK_DEF_KEY_, OWNER_, ASSIGNEE_, DELEGATION_, PRIORITY_, CREATE_TIME_, DUE_DATE_, CATEGORY_, SUSPENSION_STATE_, TENANT_ID_, FORM_KEY_, CLAIM_TIME_, IS_COUNT_ENABLED_, VAR_COUNT_, ID_LINK_COUNT_, SUB_TASK_COUNT_) VALUES ('105081', 1, '105078', '105077', 'createBidSecurity:6:105076', null, null, null, null, null, '填写投标保证金', null, null, 'input', null, null, null, 50, '2023-02-22 10:38:56.039', null, null, 1, '', null, null, 1, 0, 0, 0);
INSERT INTO workflow.ACT_RU_TASK (ID_, REV_, EXECUTION_ID_, PROC_INST_ID_, PROC_DEF_ID_, TASK_DEF_ID_, SCOPE_ID_, SUB_SCOPE_ID_, SCOPE_TYPE_, SCOPE_DEFINITION_ID_, NAME_, PARENT_TASK_ID_, DESCRIPTION_, TASK_DEF_KEY_, OWNER_, ASSIGNEE_, DELEGATION_, PRIORITY_, CREATE_TIME_, DUE_DATE_, CATEGORY_, SUSPENSION_STATE_, TENANT_ID_, FORM_KEY_, CLAIM_TIME_, IS_COUNT_ENABLED_, VAR_COUNT_, ID_LINK_COUNT_, SUB_TASK_COUNT_) VALUES ('105090', 1, '105087', '105086', 'createBidSecurity:7:105085', null, null, null, null, null, '填写投标保证金', null, null, 'input', null, null, null, 50, '2023-02-22 10:41:32.614', null, null, 1, '', null, null, 1, 0, 0, 0);
INSERT INTO workflow.ACT_RU_TASK (ID_, REV_, EXECUTION_ID_, PROC_INST_ID_, PROC_DEF_ID_, TASK_DEF_ID_, SCOPE_ID_, SUB_SCOPE_ID_, SCOPE_TYPE_, SCOPE_DEFINITION_ID_, NAME_, PARENT_TASK_ID_, DESCRIPTION_, TASK_DEF_KEY_, OWNER_, ASSIGNEE_, DELEGATION_, PRIORITY_, CREATE_TIME_, DUE_DATE_, CATEGORY_, SUSPENSION_STATE_, TENANT_ID_, FORM_KEY_, CLAIM_TIME_, IS_COUNT_ENABLED_, VAR_COUNT_, ID_LINK_COUNT_, SUB_TASK_COUNT_) VALUES ('107533', 1, '107513', '107512', 'createBidSecurity:10:107504', null, null, null, null, null, '审核', null, null, 'check', null, '2', null, 50, '2023-02-22 10:55:47.313', null, null, 1, '', null, null, 1, 0, 0, 0);
INSERT INTO workflow.ACT_RU_TASK (ID_, REV_, EXECUTION_ID_, PROC_INST_ID_, PROC_DEF_ID_, TASK_DEF_ID_, SCOPE_ID_, SUB_SCOPE_ID_, SCOPE_TYPE_, SCOPE_DEFINITION_ID_, NAME_, PARENT_TASK_ID_, DESCRIPTION_, TASK_DEF_KEY_, OWNER_, ASSIGNEE_, DELEGATION_, PRIORITY_, CREATE_TIME_, DUE_DATE_, CATEGORY_, SUSPENSION_STATE_, TENANT_ID_, FORM_KEY_, CLAIM_TIME_, IS_COUNT_ENABLED_, VAR_COUNT_, ID_LINK_COUNT_, SUB_TASK_COUNT_) VALUES ('110015', 1, '107506', '107505', 'createBidSecurity:10:107504', null, null, null, null, null, '审核', null, null, 'check', null, '2', null, 50, '2023-02-22 11:06:26.187', null, null, 1, '', null, null, 1, 0, 0, 0);
INSERT INTO workflow.ACT_RU_TASK (ID_, REV_, EXECUTION_ID_, PROC_INST_ID_, PROC_DEF_ID_, TASK_DEF_ID_, SCOPE_ID_, SUB_SCOPE_ID_, SCOPE_TYPE_, SCOPE_DEFINITION_ID_, NAME_, PARENT_TASK_ID_, DESCRIPTION_, TASK_DEF_KEY_, OWNER_, ASSIGNEE_, DELEGATION_, PRIORITY_, CREATE_TIME_, DUE_DATE_, CATEGORY_, SUSPENSION_STATE_, TENANT_ID_, FORM_KEY_, CLAIM_TIME_, IS_COUNT_ENABLED_, VAR_COUNT_, ID_LINK_COUNT_, SUB_TASK_COUNT_) VALUES ('110022', 2, '110019', '110018', 'createBidSecurity:10:107504', null, null, null, null, null, '填写投标保证金', null, null, 'input', null, '1', null, 50, '2023-02-22 11:07:43.522', null, null, 1, '', null, null, 1, 13, 0, 0);
INSERT INTO workflow.ACT_RU_TASK (ID_, REV_, EXECUTION_ID_, PROC_INST_ID_, PROC_DEF_ID_, TASK_DEF_ID_, SCOPE_ID_, SUB_SCOPE_ID_, SCOPE_TYPE_, SCOPE_DEFINITION_ID_, NAME_, PARENT_TASK_ID_, DESCRIPTION_, TASK_DEF_KEY_, OWNER_, ASSIGNEE_, DELEGATION_, PRIORITY_, CREATE_TIME_, DUE_DATE_, CATEGORY_, SUSPENSION_STATE_, TENANT_ID_, FORM_KEY_, CLAIM_TIME_, IS_COUNT_ENABLED_, VAR_COUNT_, ID_LINK_COUNT_, SUB_TASK_COUNT_) VALUES ('112525', 1, '112502', '112501', 'createBidSecurity:10:107504', null, null, null, null, null, '审核', null, null, 'check', null, '2', null, 50, '2023-02-22 11:10:37.651', null, null, 1, '', null, null, 1, 0, 0, 0);
INSERT INTO workflow.ACT_RU_TASK (ID_, REV_, EXECUTION_ID_, PROC_INST_ID_, PROC_DEF_ID_, TASK_DEF_ID_, SCOPE_ID_, SUB_SCOPE_ID_, SCOPE_TYPE_, SCOPE_DEFINITION_ID_, NAME_, PARENT_TASK_ID_, DESCRIPTION_, TASK_DEF_KEY_, OWNER_, ASSIGNEE_, DELEGATION_, PRIORITY_, CREATE_TIME_, DUE_DATE_, CATEGORY_, SUSPENSION_STATE_, TENANT_ID_, FORM_KEY_, CLAIM_TIME_, IS_COUNT_ENABLED_, VAR_COUNT_, ID_LINK_COUNT_, SUB_TASK_COUNT_) VALUES ('112552', 1, '112529', '112528', 'createBidSecurity:10:107504', null, null, null, null, null, '审核', null, null, 'check', null, '2', null, 50, '2023-02-22 11:40:49.813', null, null, 1, '', null, null, 1, 0, 0, 0);
INSERT INTO workflow.ACT_RU_TASK (ID_, REV_, EXECUTION_ID_, PROC_INST_ID_, PROC_DEF_ID_, TASK_DEF_ID_, SCOPE_ID_, SUB_SCOPE_ID_, SCOPE_TYPE_, SCOPE_DEFINITION_ID_, NAME_, PARENT_TASK_ID_, DESCRIPTION_, TASK_DEF_KEY_, OWNER_, ASSIGNEE_, DELEGATION_, PRIORITY_, CREATE_TIME_, DUE_DATE_, CATEGORY_, SUSPENSION_STATE_, TENANT_ID_, FORM_KEY_, CLAIM_TIME_, IS_COUNT_ENABLED_, VAR_COUNT_, ID_LINK_COUNT_, SUB_TASK_COUNT_) VALUES ('112579', 1, '112556', '112555', 'createBidSecurity:10:107504', null, null, null, null, null, '审核', null, null, 'check', null, '2', null, 50, '2023-02-22 11:44:40.703', null, null, 1, '', null, null, 1, 0, 0, 0);
INSERT INTO workflow.ACT_RU_TASK (ID_, REV_, EXECUTION_ID_, PROC_INST_ID_, PROC_DEF_ID_, TASK_DEF_ID_, SCOPE_ID_, SUB_SCOPE_ID_, SCOPE_TYPE_, SCOPE_DEFINITION_ID_, NAME_, PARENT_TASK_ID_, DESCRIPTION_, TASK_DEF_KEY_, OWNER_, ASSIGNEE_, DELEGATION_, PRIORITY_, CREATE_TIME_, DUE_DATE_, CATEGORY_, SUSPENSION_STATE_, TENANT_ID_, FORM_KEY_, CLAIM_TIME_, IS_COUNT_ENABLED_, VAR_COUNT_, ID_LINK_COUNT_, SUB_TASK_COUNT_) VALUES ('115029', 1, '115006', '115005', 'createBidSecurity:11:115004', null, null, null, null, null, '审核', null, null, 'check', null, '2', null, 50, '2023-02-22 11:53:13.236', null, null, 1, '', null, null, 1, 0, 0, 0);
INSERT INTO workflow.ACT_RU_TASK (ID_, REV_, EXECUTION_ID_, PROC_INST_ID_, PROC_DEF_ID_, TASK_DEF_ID_, SCOPE_ID_, SUB_SCOPE_ID_, SCOPE_TYPE_, SCOPE_DEFINITION_ID_, NAME_, PARENT_TASK_ID_, DESCRIPTION_, TASK_DEF_KEY_, OWNER_, ASSIGNEE_, DELEGATION_, PRIORITY_, CREATE_TIME_, DUE_DATE_, CATEGORY_, SUSPENSION_STATE_, TENANT_ID_, FORM_KEY_, CLAIM_TIME_, IS_COUNT_ENABLED_, VAR_COUNT_, ID_LINK_COUNT_, SUB_TASK_COUNT_) VALUES ('15002', 1, '12506', '12505', 'process_1667737476222:2:12504', null, null, null, null, null, '审核1', null, null, 'Activity_1vxlpzp', null, '2', null, 50, '2022-11-07 05:57:42.320', null, null, 1, '', null, null, 1, 0, 0, 0);
INSERT INTO workflow.ACT_RU_TASK (ID_, REV_, EXECUTION_ID_, PROC_INST_ID_, PROC_DEF_ID_, TASK_DEF_ID_, SCOPE_ID_, SUB_SCOPE_ID_, SCOPE_TYPE_, SCOPE_DEFINITION_ID_, NAME_, PARENT_TASK_ID_, DESCRIPTION_, TASK_DEF_KEY_, OWNER_, ASSIGNEE_, DELEGATION_, PRIORITY_, CREATE_TIME_, DUE_DATE_, CATEGORY_, SUSPENSION_STATE_, TENANT_ID_, FORM_KEY_, CLAIM_TIME_, IS_COUNT_ENABLED_, VAR_COUNT_, ID_LINK_COUNT_, SUB_TASK_COUNT_) VALUES ('20002', 1, '17502', '17501', 'process_1667737476222:2:12504', null, null, null, null, null, '审核1', null, null, 'Activity_1vxlpzp', null, '2', null, 50, '2022-11-09 11:00:07.374', null, null, 1, '', null, null, 1, 0, 0, 0);
INSERT INTO workflow.ACT_RU_TASK (ID_, REV_, EXECUTION_ID_, PROC_INST_ID_, PROC_DEF_ID_, TASK_DEF_ID_, SCOPE_ID_, SUB_SCOPE_ID_, SCOPE_TYPE_, SCOPE_DEFINITION_ID_, NAME_, PARENT_TASK_ID_, DESCRIPTION_, TASK_DEF_KEY_, OWNER_, ASSIGNEE_, DELEGATION_, PRIORITY_, CREATE_TIME_, DUE_DATE_, CATEGORY_, SUSPENSION_STATE_, TENANT_ID_, FORM_KEY_, CLAIM_TIME_, IS_COUNT_ENABLED_, VAR_COUNT_, ID_LINK_COUNT_, SUB_TASK_COUNT_) VALUES ('25002', 1, '22502', '22501', 'process_1667737476222:2:12504', null, null, null, null, null, '审核1', null, null, 'Activity_1vxlpzp', null, '2', null, 50, '2022-11-09 11:07:52.717', null, null, 1, '', null, null, 1, 0, 0, 0);
INSERT INTO workflow.ACT_RU_TASK (ID_, REV_, EXECUTION_ID_, PROC_INST_ID_, PROC_DEF_ID_, TASK_DEF_ID_, SCOPE_ID_, SUB_SCOPE_ID_, SCOPE_TYPE_, SCOPE_DEFINITION_ID_, NAME_, PARENT_TASK_ID_, DESCRIPTION_, TASK_DEF_KEY_, OWNER_, ASSIGNEE_, DELEGATION_, PRIORITY_, CREATE_TIME_, DUE_DATE_, CATEGORY_, SUSPENSION_STATE_, TENANT_ID_, FORM_KEY_, CLAIM_TIME_, IS_COUNT_ENABLED_, VAR_COUNT_, ID_LINK_COUNT_, SUB_TASK_COUNT_) VALUES ('27509', 1, '27502', '27501', 'process_1667737476222:2:12504', null, null, null, null, null, '审核1', null, null, 'Activity_1vxlpzp', null, '2', null, 50, '2022-11-09 11:16:16.482', null, null, 1, '', null, null, 1, 0, 0, 0);
INSERT INTO workflow.ACT_RU_TASK (ID_, REV_, EXECUTION_ID_, PROC_INST_ID_, PROC_DEF_ID_, TASK_DEF_ID_, SCOPE_ID_, SUB_SCOPE_ID_, SCOPE_TYPE_, SCOPE_DEFINITION_ID_, NAME_, PARENT_TASK_ID_, DESCRIPTION_, TASK_DEF_KEY_, OWNER_, ASSIGNEE_, DELEGATION_, PRIORITY_, CREATE_TIME_, DUE_DATE_, CATEGORY_, SUSPENSION_STATE_, TENANT_ID_, FORM_KEY_, CLAIM_TIME_, IS_COUNT_ENABLED_, VAR_COUNT_, ID_LINK_COUNT_, SUB_TASK_COUNT_) VALUES ('30009', 1, '30002', '30001', 'process_1667737476222:2:12504', null, null, null, null, null, '审核1', null, null, 'Activity_1vxlpzp', null, '2', null, 50, '2022-11-09 11:19:57.336', null, null, 1, '', null, null, 1, 0, 0, 0);
INSERT INTO workflow.ACT_RU_TASK (ID_, REV_, EXECUTION_ID_, PROC_INST_ID_, PROC_DEF_ID_, TASK_DEF_ID_, SCOPE_ID_, SUB_SCOPE_ID_, SCOPE_TYPE_, SCOPE_DEFINITION_ID_, NAME_, PARENT_TASK_ID_, DESCRIPTION_, TASK_DEF_KEY_, OWNER_, ASSIGNEE_, DELEGATION_, PRIORITY_, CREATE_TIME_, DUE_DATE_, CATEGORY_, SUSPENSION_STATE_, TENANT_ID_, FORM_KEY_, CLAIM_TIME_, IS_COUNT_ENABLED_, VAR_COUNT_, ID_LINK_COUNT_, SUB_TASK_COUNT_) VALUES ('32513', 1, '32506', '32505', 'process_1667737476222:3:32504', null, null, null, null, null, '审核1', null, null, 'Activity_1vxlpzp', null, '2', null, 50, '2022-11-09 11:28:03.580', null, null, 1, '', null, null, 1, 0, 0, 0);
INSERT INTO workflow.ACT_RU_TASK (ID_, REV_, EXECUTION_ID_, PROC_INST_ID_, PROC_DEF_ID_, TASK_DEF_ID_, SCOPE_ID_, SUB_SCOPE_ID_, SCOPE_TYPE_, SCOPE_DEFINITION_ID_, NAME_, PARENT_TASK_ID_, DESCRIPTION_, TASK_DEF_KEY_, OWNER_, ASSIGNEE_, DELEGATION_, PRIORITY_, CREATE_TIME_, DUE_DATE_, CATEGORY_, SUSPENSION_STATE_, TENANT_ID_, FORM_KEY_, CLAIM_TIME_, IS_COUNT_ENABLED_, VAR_COUNT_, ID_LINK_COUNT_, SUB_TASK_COUNT_) VALUES ('35013', 1, '35006', '35005', 'process_1667737476222:4:35004', null, null, null, null, null, '审核1', null, null, 'Activity_1vxlpzp', null, '2', null, 50, '2022-11-09 11:42:19.927', null, null, 1, '', null, null, 1, 0, 0, 0);
INSERT INTO workflow.ACT_RU_TASK (ID_, REV_, EXECUTION_ID_, PROC_INST_ID_, PROC_DEF_ID_, TASK_DEF_ID_, SCOPE_ID_, SUB_SCOPE_ID_, SCOPE_TYPE_, SCOPE_DEFINITION_ID_, NAME_, PARENT_TASK_ID_, DESCRIPTION_, TASK_DEF_KEY_, OWNER_, ASSIGNEE_, DELEGATION_, PRIORITY_, CREATE_TIME_, DUE_DATE_, CATEGORY_, SUSPENSION_STATE_, TENANT_ID_, FORM_KEY_, CLAIM_TIME_, IS_COUNT_ENABLED_, VAR_COUNT_, ID_LINK_COUNT_, SUB_TASK_COUNT_) VALUES ('37513', 1, '37506', '37505', 'process_1667737476222:5:37504', null, null, null, null, null, '审核1', null, null, 'Activity_1vxlpzp', null, '2', null, 50, '2022-11-09 11:50:44.323', null, null, 1, '', null, null, 1, 0, 0, 0);
INSERT INTO workflow.ACT_RU_TASK (ID_, REV_, EXECUTION_ID_, PROC_INST_ID_, PROC_DEF_ID_, TASK_DEF_ID_, SCOPE_ID_, SUB_SCOPE_ID_, SCOPE_TYPE_, SCOPE_DEFINITION_ID_, NAME_, PARENT_TASK_ID_, DESCRIPTION_, TASK_DEF_KEY_, OWNER_, ASSIGNEE_, DELEGATION_, PRIORITY_, CREATE_TIME_, DUE_DATE_, CATEGORY_, SUSPENSION_STATE_, TENANT_ID_, FORM_KEY_, CLAIM_TIME_, IS_COUNT_ENABLED_, VAR_COUNT_, ID_LINK_COUNT_, SUB_TASK_COUNT_) VALUES ('40009', 1, '40002', '40001', 'process_1667737476222:5:37504', null, null, null, null, null, '审核1', null, null, 'Activity_1vxlpzp', null, '2', null, 50, '2022-11-09 11:58:32.503', null, null, 1, '', null, null, 1, 0, 0, 0);
INSERT INTO workflow.ACT_RU_TASK (ID_, REV_, EXECUTION_ID_, PROC_INST_ID_, PROC_DEF_ID_, TASK_DEF_ID_, SCOPE_ID_, SUB_SCOPE_ID_, SCOPE_TYPE_, SCOPE_DEFINITION_ID_, NAME_, PARENT_TASK_ID_, DESCRIPTION_, TASK_DEF_KEY_, OWNER_, ASSIGNEE_, DELEGATION_, PRIORITY_, CREATE_TIME_, DUE_DATE_, CATEGORY_, SUSPENSION_STATE_, TENANT_ID_, FORM_KEY_, CLAIM_TIME_, IS_COUNT_ENABLED_, VAR_COUNT_, ID_LINK_COUNT_, SUB_TASK_COUNT_) VALUES ('42509', 1, '42502', '42501', 'process_1667737476222:5:37504', null, null, null, null, null, '审核1', null, null, 'Activity_1vxlpzp', null, '2', null, 50, '2022-11-09 12:00:58.634', null, null, 1, '', null, null, 1, 0, 0, 0);
INSERT INTO workflow.ACT_RU_TASK (ID_, REV_, EXECUTION_ID_, PROC_INST_ID_, PROC_DEF_ID_, TASK_DEF_ID_, SCOPE_ID_, SUB_SCOPE_ID_, SCOPE_TYPE_, SCOPE_DEFINITION_ID_, NAME_, PARENT_TASK_ID_, DESCRIPTION_, TASK_DEF_KEY_, OWNER_, ASSIGNEE_, DELEGATION_, PRIORITY_, CREATE_TIME_, DUE_DATE_, CATEGORY_, SUSPENSION_STATE_, TENANT_ID_, FORM_KEY_, CLAIM_TIME_, IS_COUNT_ENABLED_, VAR_COUNT_, ID_LINK_COUNT_, SUB_TASK_COUNT_) VALUES ('45012', 1, '45002', '45001', 'process_1667737476222:5:37504', null, null, null, null, null, '审核1', null, null, 'Activity_1vxlpzp', null, '2', null, 50, '2022-11-09 12:12:22.920', null, null, 1, '', null, null, 1, 0, 0, 0);
INSERT INTO workflow.ACT_RU_TASK (ID_, REV_, EXECUTION_ID_, PROC_INST_ID_, PROC_DEF_ID_, TASK_DEF_ID_, SCOPE_ID_, SUB_SCOPE_ID_, SCOPE_TYPE_, SCOPE_DEFINITION_ID_, NAME_, PARENT_TASK_ID_, DESCRIPTION_, TASK_DEF_KEY_, OWNER_, ASSIGNEE_, DELEGATION_, PRIORITY_, CREATE_TIME_, DUE_DATE_, CATEGORY_, SUSPENSION_STATE_, TENANT_ID_, FORM_KEY_, CLAIM_TIME_, IS_COUNT_ENABLED_, VAR_COUNT_, ID_LINK_COUNT_, SUB_TASK_COUNT_) VALUES ('47512', 1, '47502', '47501', 'process_1667737476222:5:37504', null, null, null, null, null, '审核1', null, null, 'Activity_1vxlpzp', null, '2', null, 50, '2022-11-09 12:25:33.804', null, null, 1, '', null, null, 1, 0, 0, 0);
INSERT INTO workflow.ACT_RU_TASK (ID_, REV_, EXECUTION_ID_, PROC_INST_ID_, PROC_DEF_ID_, TASK_DEF_ID_, SCOPE_ID_, SUB_SCOPE_ID_, SCOPE_TYPE_, SCOPE_DEFINITION_ID_, NAME_, PARENT_TASK_ID_, DESCRIPTION_, TASK_DEF_KEY_, OWNER_, ASSIGNEE_, DELEGATION_, PRIORITY_, CREATE_TIME_, DUE_DATE_, CATEGORY_, SUSPENSION_STATE_, TENANT_ID_, FORM_KEY_, CLAIM_TIME_, IS_COUNT_ENABLED_, VAR_COUNT_, ID_LINK_COUNT_, SUB_TASK_COUNT_) VALUES ('50012', 1, '50002', '50001', 'process_1667737476222:5:37504', null, null, null, null, null, '审核1', null, null, 'Activity_1vxlpzp', null, '2', null, 50, '2022-11-09 12:29:03.495', null, null, 1, '', null, null, 1, 0, 0, 0);
INSERT INTO workflow.ACT_RU_TASK (ID_, REV_, EXECUTION_ID_, PROC_INST_ID_, PROC_DEF_ID_, TASK_DEF_ID_, SCOPE_ID_, SUB_SCOPE_ID_, SCOPE_TYPE_, SCOPE_DEFINITION_ID_, NAME_, PARENT_TASK_ID_, DESCRIPTION_, TASK_DEF_KEY_, OWNER_, ASSIGNEE_, DELEGATION_, PRIORITY_, CREATE_TIME_, DUE_DATE_, CATEGORY_, SUSPENSION_STATE_, TENANT_ID_, FORM_KEY_, CLAIM_TIME_, IS_COUNT_ENABLED_, VAR_COUNT_, ID_LINK_COUNT_, SUB_TASK_COUNT_) VALUES ('52512', 1, '52502', '52501', 'process_1667737476222:5:37504', null, null, null, null, null, '审核1', null, null, 'Activity_1vxlpzp', null, '2', null, 50, '2022-11-09 12:37:52.326', null, null, 1, '', null, null, 1, 0, 0, 0);
INSERT INTO workflow.ACT_RU_TASK (ID_, REV_, EXECUTION_ID_, PROC_INST_ID_, PROC_DEF_ID_, TASK_DEF_ID_, SCOPE_ID_, SUB_SCOPE_ID_, SCOPE_TYPE_, SCOPE_DEFINITION_ID_, NAME_, PARENT_TASK_ID_, DESCRIPTION_, TASK_DEF_KEY_, OWNER_, ASSIGNEE_, DELEGATION_, PRIORITY_, CREATE_TIME_, DUE_DATE_, CATEGORY_, SUSPENSION_STATE_, TENANT_ID_, FORM_KEY_, CLAIM_TIME_, IS_COUNT_ENABLED_, VAR_COUNT_, ID_LINK_COUNT_, SUB_TASK_COUNT_) VALUES ('55015', 1, '55002', '55001', 'process_1667737476222:5:37504', null, null, null, null, null, '审核1', null, null, 'Activity_1vxlpzp', null, '2', null, 50, '2022-11-09 12:43:33.927', null, null, 1, '', null, null, 1, 0, 0, 0);
INSERT INTO workflow.ACT_RU_TASK (ID_, REV_, EXECUTION_ID_, PROC_INST_ID_, PROC_DEF_ID_, TASK_DEF_ID_, SCOPE_ID_, SUB_SCOPE_ID_, SCOPE_TYPE_, SCOPE_DEFINITION_ID_, NAME_, PARENT_TASK_ID_, DESCRIPTION_, TASK_DEF_KEY_, OWNER_, ASSIGNEE_, DELEGATION_, PRIORITY_, CREATE_TIME_, DUE_DATE_, CATEGORY_, SUSPENSION_STATE_, TENANT_ID_, FORM_KEY_, CLAIM_TIME_, IS_COUNT_ENABLED_, VAR_COUNT_, ID_LINK_COUNT_, SUB_TASK_COUNT_) VALUES ('65005', 1, '65002', '65001', 'process_1667737476222:5:37504', null, null, null, null, null, '填写普通发票', null, null, 'Activity_1wfcnsg', null, '1', null, 50, '2022-11-26 06:19:03.305', null, null, 1, '', null, null, 1, 0, 0, 0);
INSERT INTO workflow.ACT_RU_TASK (ID_, REV_, EXECUTION_ID_, PROC_INST_ID_, PROC_DEF_ID_, TASK_DEF_ID_, SCOPE_ID_, SUB_SCOPE_ID_, SCOPE_TYPE_, SCOPE_DEFINITION_ID_, NAME_, PARENT_TASK_ID_, DESCRIPTION_, TASK_DEF_KEY_, OWNER_, ASSIGNEE_, DELEGATION_, PRIORITY_, CREATE_TIME_, DUE_DATE_, CATEGORY_, SUSPENSION_STATE_, TENANT_ID_, FORM_KEY_, CLAIM_TIME_, IS_COUNT_ENABLED_, VAR_COUNT_, ID_LINK_COUNT_, SUB_TASK_COUNT_) VALUES ('72502', 1, '57502', '57501', 'process_1667737476222:5:37504', null, null, null, null, null, '审核1', null, null, 'Activity_1vxlpzp', null, '2', null, 50, '2022-11-26 11:52:26.757', null, null, 1, '', null, null, 1, 0, 0, 0);
INSERT INTO workflow.ACT_RU_TASK (ID_, REV_, EXECUTION_ID_, PROC_INST_ID_, PROC_DEF_ID_, TASK_DEF_ID_, SCOPE_ID_, SUB_SCOPE_ID_, SCOPE_TYPE_, SCOPE_DEFINITION_ID_, NAME_, PARENT_TASK_ID_, DESCRIPTION_, TASK_DEF_KEY_, OWNER_, ASSIGNEE_, DELEGATION_, PRIORITY_, CREATE_TIME_, DUE_DATE_, CATEGORY_, SUSPENSION_STATE_, TENANT_ID_, FORM_KEY_, CLAIM_TIME_, IS_COUNT_ENABLED_, VAR_COUNT_, ID_LINK_COUNT_, SUB_TASK_COUNT_) VALUES ('72506', 1, '60002', '60001', 'process_1667737476222:5:37504', null, null, null, null, null, '审核1', null, null, 'Activity_1vxlpzp', null, '2', null, 50, '2022-11-26 11:53:58.734', null, null, 1, '', null, null, 1, 0, 0, 0);
INSERT INTO workflow.ACT_RU_TASK (ID_, REV_, EXECUTION_ID_, PROC_INST_ID_, PROC_DEF_ID_, TASK_DEF_ID_, SCOPE_ID_, SUB_SCOPE_ID_, SCOPE_TYPE_, SCOPE_DEFINITION_ID_, NAME_, PARENT_TASK_ID_, DESCRIPTION_, TASK_DEF_KEY_, OWNER_, ASSIGNEE_, DELEGATION_, PRIORITY_, CREATE_TIME_, DUE_DATE_, CATEGORY_, SUSPENSION_STATE_, TENANT_ID_, FORM_KEY_, CLAIM_TIME_, IS_COUNT_ENABLED_, VAR_COUNT_, ID_LINK_COUNT_, SUB_TASK_COUNT_) VALUES ('80004', 1, '75009', '75008', 'process_1667737476222:5:37504', null, null, null, null, null, '审核1', null, null, 'Activity_1vxlpzp', null, '2', null, 50, '2022-12-21 11:15:13.687', null, null, 1, '', null, null, 1, 0, 0, 0);
INSERT INTO workflow.ACT_RU_TASK (ID_, REV_, EXECUTION_ID_, PROC_INST_ID_, PROC_DEF_ID_, TASK_DEF_ID_, SCOPE_ID_, SUB_SCOPE_ID_, SCOPE_TYPE_, SCOPE_DEFINITION_ID_, NAME_, PARENT_TASK_ID_, DESCRIPTION_, TASK_DEF_KEY_, OWNER_, ASSIGNEE_, DELEGATION_, PRIORITY_, CREATE_TIME_, DUE_DATE_, CATEGORY_, SUSPENSION_STATE_, TENANT_ID_, FORM_KEY_, CLAIM_TIME_, IS_COUNT_ENABLED_, VAR_COUNT_, ID_LINK_COUNT_, SUB_TASK_COUNT_) VALUES ('80017', 1, '80008', '80007', 'process_1667737476222:5:37504', null, null, null, null, null, '审核1', null, null, 'Activity_1vxlpzp', null, '2', null, 50, '2022-12-21 11:25:15.598', null, null, 1, '', null, null, 1, 0, 0, 0);
INSERT INTO workflow.ACT_RU_TASK (ID_, REV_, EXECUTION_ID_, PROC_INST_ID_, PROC_DEF_ID_, TASK_DEF_ID_, SCOPE_ID_, SUB_SCOPE_ID_, SCOPE_TYPE_, SCOPE_DEFINITION_ID_, NAME_, PARENT_TASK_ID_, DESCRIPTION_, TASK_DEF_KEY_, OWNER_, ASSIGNEE_, DELEGATION_, PRIORITY_, CREATE_TIME_, DUE_DATE_, CATEGORY_, SUSPENSION_STATE_, TENANT_ID_, FORM_KEY_, CLAIM_TIME_, IS_COUNT_ENABLED_, VAR_COUNT_, ID_LINK_COUNT_, SUB_TASK_COUNT_) VALUES ('82502', 1, '75002', '75001', 'process_1667737476222:5:37504', null, null, null, null, null, '审核1', null, null, 'Activity_1vxlpzp', null, '2', null, 50, '2022-12-21 11:37:48.516', null, null, 1, '', null, null, 1, 0, 0, 0);
INSERT INTO workflow.ACT_RU_TASK (ID_, REV_, EXECUTION_ID_, PROC_INST_ID_, PROC_DEF_ID_, TASK_DEF_ID_, SCOPE_ID_, SUB_SCOPE_ID_, SCOPE_TYPE_, SCOPE_DEFINITION_ID_, NAME_, PARENT_TASK_ID_, DESCRIPTION_, TASK_DEF_KEY_, OWNER_, ASSIGNEE_, DELEGATION_, PRIORITY_, CREATE_TIME_, DUE_DATE_, CATEGORY_, SUSPENSION_STATE_, TENANT_ID_, FORM_KEY_, CLAIM_TIME_, IS_COUNT_ENABLED_, VAR_COUNT_, ID_LINK_COUNT_, SUB_TASK_COUNT_) VALUES ('82508', 1, '70002', '70001', 'process_1667737476222:5:37504', null, null, null, null, null, '审核1', null, null, 'Activity_1vxlpzp', null, '2', null, 50, '2022-12-21 11:41:11.066', null, null, 1, '', null, null, 1, 0, 0, 0);
INSERT INTO workflow.ACT_RU_TASK (ID_, REV_, EXECUTION_ID_, PROC_INST_ID_, PROC_DEF_ID_, TASK_DEF_ID_, SCOPE_ID_, SUB_SCOPE_ID_, SCOPE_TYPE_, SCOPE_DEFINITION_ID_, NAME_, PARENT_TASK_ID_, DESCRIPTION_, TASK_DEF_KEY_, OWNER_, ASSIGNEE_, DELEGATION_, PRIORITY_, CREATE_TIME_, DUE_DATE_, CATEGORY_, SUSPENSION_STATE_, TENANT_ID_, FORM_KEY_, CLAIM_TIME_, IS_COUNT_ENABLED_, VAR_COUNT_, ID_LINK_COUNT_, SUB_TASK_COUNT_) VALUES ('82512', 1, '67502', '67501', 'process_1667737476222:5:37504', null, null, null, null, null, '审核1', null, null, 'Activity_1vxlpzp', null, '2', null, 50, '2022-12-21 11:43:13.637', null, null, 1, '', null, null, 1, 0, 0, 0);
INSERT INTO workflow.ACT_RU_TASK (ID_, REV_, EXECUTION_ID_, PROC_INST_ID_, PROC_DEF_ID_, TASK_DEF_ID_, SCOPE_ID_, SUB_SCOPE_ID_, SCOPE_TYPE_, SCOPE_DEFINITION_ID_, NAME_, PARENT_TASK_ID_, DESCRIPTION_, TASK_DEF_KEY_, OWNER_, ASSIGNEE_, DELEGATION_, PRIORITY_, CREATE_TIME_, DUE_DATE_, CATEGORY_, SUSPENSION_STATE_, TENANT_ID_, FORM_KEY_, CLAIM_TIME_, IS_COUNT_ENABLED_, VAR_COUNT_, ID_LINK_COUNT_, SUB_TASK_COUNT_) VALUES ('82521', 3, '62502', '62501', 'process_1667737476222:5:37504', null, null, null, null, null, '审核1', null, null, 'Activity_1vxlpzp', null, '2', null, 50, '2022-12-21 11:45:10.430', null, null, 1, '', null, null, 1, 1, 0, 0);
INSERT INTO workflow.ACT_RU_TASK (ID_, REV_, EXECUTION_ID_, PROC_INST_ID_, PROC_DEF_ID_, TASK_DEF_ID_, SCOPE_ID_, SUB_SCOPE_ID_, SCOPE_TYPE_, SCOPE_DEFINITION_ID_, NAME_, PARENT_TASK_ID_, DESCRIPTION_, TASK_DEF_KEY_, OWNER_, ASSIGNEE_, DELEGATION_, PRIORITY_, CREATE_TIME_, DUE_DATE_, CATEGORY_, SUSPENSION_STATE_, TENANT_ID_, FORM_KEY_, CLAIM_TIME_, IS_COUNT_ENABLED_, VAR_COUNT_, ID_LINK_COUNT_, SUB_TASK_COUNT_) VALUES ('85020', 3, '85008', '85007', 'process_1667737476222:6:85006', null, null, null, null, null, '审核1', null, null, 'Activity_1vxlpzp', null, '2', null, 50, '2022-12-29 03:08:51.690', null, null, 1, '', null, null, 1, 1, 0, 0);