create table ACT_ID_TOKEN
(
    ID_          varchar(64)   not null
        primary key,
    REV_         int           null,
    TOKEN_VALUE_ varchar(255)  null,
    TOKEN_DATE_  timestamp(3)  null,
    IP_ADDRESS_  varchar(255)  null,
    USER_AGENT_  varchar(255)  null,
    USER_ID_     varchar(255)  null,
    TOKEN_DATA_  varchar(2000) null
)
    collate = utf8mb3_bin;

