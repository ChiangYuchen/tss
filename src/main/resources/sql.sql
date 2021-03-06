create database tss;

create table user(
  id int not null auto_increment,
  student_id varchar(64) not null,
  student_pwd varchar(64) not null,
  student_status tinyint(1) not null comment '0-not modified pwd; 1-modified pwd',
  yn tinyint(1) not null comment '0-inactive; 1-active',
  create_time datetime not null default current_timestamp,
  modify_time datetime not null default current_timestamp,
  primary key(id)
)engine=innodb default charset=utf8;

create table student(
  id int not null auto_increment,
  student_id varchar(64) not null,
  student_name varchar(64) not null,
  class_id varchar(64) not null,
  topic_id varchar(64) null,
  topic_name varchar(64) null,
  yn tinyint(1) not null comment '0-inactive; 1-active',
  create_time datetime not null default current_timestamp,
  modify_time datetime not null default current_timestamp,
  primary key(id)
)engine=innodb default charset=utf8;

create table teacher(
  id int not null auto_increment,
  class_id varchar(64) not null,
  teacher_id varchar(64) not null,
  teacher_name varchar(64) not null,
  authority varchar(32) not null,
  yn tinyint(1) not null,
  create_time datetime not null default current_timestamp,
  modify_time datetime not null default current_timestamp,
  primary key(id)
)engine=innodb default charset=utf8;

create table topic(
  id int not null auto_increment,
  topic_id varchar(64) not null,
  topic_name varchar(64) not null,
  topic_type varchar(64) not null,
  topic_description varchar(1024) not null,
  topic_max_selected int not null,
  topic_real_selected_1 int not null,
  topic_real_selected_2 int not null,
  topic_real_selected_3 int not null,
  yn tinyint(1) not null,
  create_time datetime not null default current_timestamp,
  modify_time datetime not null default current_timestamp,
  primary key(id)
)engine=innodb default charset=utf8;

create table status(
  id int not null auto_increment,
  tss_status int not null comment '3-debug status; 0-change pwd; 1-start select; 2-end select',
  modify_time datetime not null default current_timestamp,
  primary key(id)
)engine=innodb default charset=utf8;