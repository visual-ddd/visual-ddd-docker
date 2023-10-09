create database if not exists wd_visual_ddd;

use wd_visual_ddd;

create table if not exists domain_event_lock
(
    lock_name varchar(50) null comment '锁名称'
)
    comment '领域事件锁';

create table if not exists domain_event_redo_log
(
    id              int auto_increment comment '主键'
        primary key,
    event_info      json          null comment '事件内容',
    target_info     json          null comment '重试目标信息',
    retry_times     int default 0 null comment '重试次数',
    last_retry_time datetime      null comment '最后重试时间',
    retry_type      int           null comment '重试类型 0:定时调度  1:重启时重试 ',
    idem            varchar(64)   null comment '幂等值',
    create_time     datetime      null comment '创建时间',
    update_time     datetime      null comment '更新时间',
    constraint UK_domain_event_redo_log_idem
        unique (idem)
)
    comment '领域事件重试表';

create table if not exists wd_account
(
    id          bigint auto_increment
        primary key,
    create_by   varchar(40)  null comment '创建人',
    create_time datetime     null comment '创建时间',
    update_by   varchar(40)  null comment '更新人',
    update_time datetime     null comment '更新时间',
    account_no  varchar(255) null,
    description varchar(255) null,
    password    varchar(255) null,
    user_name   varchar(255) null,
    uuid        varchar(255) null,
    icon        varchar(255) null comment '用户头像'
);

INSERT INTO wd_account (id, create_by, create_time, update_by, update_time, account_no, description, password, user_name, uuid, icon) VALUES (1, '0', '2023-01-05 14:38:09', '系统管理员', '2023-04-07 10:20:17', 'admin@gpt.com', '', 'wY&KG+V8', '系统管理员', '70c5c3a3-aee3-40f4-9be4-6e565a984793', '');

create table if not exists wd_account_verification
(
    id          bigint auto_increment
        primary key,
    create_by   varchar(40)  null comment '创建人',
    create_time datetime     null comment '创建时间',
    update_by   varchar(40)  null comment '更新人',
    update_time datetime     null comment '更新时间',
    account_no  varchar(255) null,
    code        varchar(255) null
);

create table if not exists wd_application
(
    id           bigint auto_increment
        primary key,
    create_by    varchar(40)   null comment '创建人',
    create_time  datetime      null comment '创建时间',
    update_by    varchar(40)   null comment '更新人',
    update_time  datetime      null comment '更新时间',
    description  varchar(255)  null,
    identity     varchar(255)  null,
    name         varchar(255)  null,
    package_name varchar(255)  null,
    team_id      bigint        null,
    is_deleted   int default 0 not null comment '是否删除'
);

create table if not exists wd_application_version
(
    id                         bigint auto_increment
        primary key,
    create_by                  varchar(40)  null comment '创建人',
    create_time                datetime     null comment '创建时间',
    update_by                  varchar(40)  null comment '更新人',
    update_time                datetime     null comment '更新时间',
    application_id             bigint       null,
    business_scene_version_ids varchar(255) null,
    current_version            varchar(255) null,
    description                varchar(255) null,
    domain_design_version_ids  varchar(255) null,
    start_version              varchar(255) null,
    state                      int          null,
    dsl                        longtext     null
);

create table if not exists wd_business_scene
(
    id          bigint auto_increment
        primary key,
    create_by   varchar(40)   null comment '创建人',
    create_time datetime      null comment '创建时间',
    update_by   varchar(40)   null comment '更新人',
    update_time datetime      null comment '更新时间',
    description varchar(255)  null,
    identity    varchar(255)  null,
    name        varchar(255)  null,
    team_id     bigint        null,
    is_deleted  int default 0 not null comment '是否删除 0-未删除 1-已删除'
);

create table if not exists wd_business_scene_version
(
    id                bigint auto_increment
        primary key,
    create_by         varchar(40)  null comment '创建人',
    create_time       datetime     null comment '创建时间',
    update_by         varchar(40)  null comment '更新人',
    update_time       datetime     null comment '更新时间',
    business_scene_id bigint       null,
    current_version   varchar(255) null,
    description       varchar(255) null,
    dsl               longtext     null,
    graph_dsl         longtext     null,
    start_version     varchar(255) null,
    state             int          null
);

create table if not exists wd_domain_design
(
    id          bigint auto_increment
        primary key,
    create_by   varchar(40)   null comment '创建人',
    create_time datetime      null comment '创建时间',
    update_by   varchar(40)   null comment '更新人',
    update_time datetime      null comment '更新时间',
    description text          null,
    identity    varchar(255)  null,
    name        varchar(255)  null,
    team_id     bigint        null,
    is_deleted  int default 0 not null comment '是否删除 0-未删除 1-已删除'
);

create table if not exists wd_domain_design_version
(
    id                bigint auto_increment
        primary key,
    create_by         varchar(40)  null comment '创建人',
    create_time       datetime     null comment '创建时间',
    update_by         varchar(40)  null comment '更新人',
    update_time       datetime     null comment '更新时间',
    current_version   varchar(255) null,
    description       varchar(255) null,
    domain_design_dsl longtext     null,
    domain_design_id  bigint       null,
    graph_dsl         longtext     null,
    start_version     varchar(255) null,
    state             int          null
);

create table if not exists wd_organization
(
    id                      bigint auto_increment
        primary key,
    create_by               varchar(40)   null comment '创建人',
    create_time             datetime      null comment '创建时间',
    update_by               varchar(40)   null comment '更新人',
    update_time             datetime      null comment '更新时间',
    description             varchar(255)  null,
    name                    varchar(255)  null,
    organization_manager_id bigint        null,
    is_deleted              int default 0 not null comment '是否删除 0-未删除 1-已删除'
);

create table if not exists wd_organization_team
(
    id              bigint auto_increment
        primary key,
    create_by       varchar(40)   null comment '创建人',
    create_time     datetime      null comment '创建时间',
    update_by       varchar(40)   null comment '更新人',
    update_time     datetime      null comment '更新时间',
    description     varchar(255)  null,
    name            varchar(255)  null,
    organization_id bigint        null,
    team_manager_id bigint        null,
    is_deleted      int default 0 not null comment '是否删除 0-未删除 1-已删除'
);

create table if not exists wd_organization_team_member
(
    id               bigint auto_increment
        primary key,
    create_by        varchar(40)  null comment '创建人',
    create_time      datetime     null comment '创建时间',
    update_by        varchar(40)  null comment '更新人',
    update_time      datetime     null comment '更新时间',
    account_id       bigint       null,
    member_type_list varchar(255) null,
    team_id          bigint       null
);

create table if not exists wd_prompt
(
    id                 bigint auto_increment
        primary key,
    create_by          varchar(40)  null comment '创建人',
    create_time        datetime     null comment '创建时间',
    update_by          varchar(40)  null comment '更新人',
    update_time        datetime     null comment '更新时间',
    author             varchar(255) null,
    date               datetime(6)  null,
    description        varchar(255) null,
    introduction       varchar(255) null,
    max_context_length bigint       null,
    name               varchar(255) null,
    system_prompt      varchar(255) null,
    temperature        double       null
);

create table if not exists wd_universal_language
(
    id            bigint auto_increment
        primary key,
    create_by     varchar(40)  null comment '创建人',
    create_time   datetime     null comment '创建时间',
    update_by     varchar(40)  null comment '更新人',
    update_time   datetime     null comment '更新时间',
    conception    varchar(255) null,
    definition    varchar(255) null,
    english_name  varchar(255) null,
    identity      bigint       null,
    language_type int          null,
    restraint     varchar(255) null,
    example       varchar(100) null comment '举例'
);

create table if not exists wd_white_list
(
    id          bigint auto_increment
        primary key,
    create_by   varchar(40)  null comment '创建人',
    create_time datetime     null comment '创建时间',
    update_by   varchar(40)  null comment '更新人',
    update_time datetime     null comment '更新时间',
    account_no  varchar(255) null,
    description varchar(255) null
);
