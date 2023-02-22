create table ACT_ID_MEMBERSHIP
(
    USER_ID_  varchar(64) not null,
    GROUP_ID_ varchar(64) not null,
    primary key (USER_ID_, GROUP_ID_),
    constraint ACT_FK_MEMB_GROUP
        foreign key (GROUP_ID_) references ACT_ID_GROUP (ID_),
    constraint ACT_FK_MEMB_USER
        foreign key (USER_ID_) references ACT_ID_USER (ID_)
)
    collate = utf8mb3_bin;

