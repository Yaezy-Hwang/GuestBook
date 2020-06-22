drop table guestbook;

drop sequence seq_no;

create table guestbook(
    no          number(5),
    name        varchar2(80),
    password    varchar2(20),
    content     varchar2(200),
    reg_date    date,
    primary key(no)
);

create sequence seq_no
increment by 1
start with 1;

commit;