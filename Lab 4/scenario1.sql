--scenario 1
-- run these commands on the sql shell to set up the database and table and retrieve results from the Students table

create database lab4db;
use lab4db;

create table Students(
    ssid VARCHAR(13) NOT NULL PRIMARY KEY,
    gender VARCHAR(6),
    marks INTEGER DEFAULT 0,
    branch VARCHAR(12) DEFAULT "CS"
);

insert into Students(ssid, gender, marks, branch) VALUES (
    "2019A7PS0001G",
    "FEMALE",
    70,
    "CS"
);

insert into Students(ssid, gender, marks, branch) VALUES (
    "2019A7PS0002G",
    "MALE",
    69,
    "MECH"
);

insert into Students(ssid, gender, marks, branch) VALUES (
    "2019A7PS0003G",
    "MALE",
    43,
    "ECE"
);

insert into Students(ssid, gender, marks, branch) VALUES (
    "2019A7PS0004G",
    "FEMALE",
    89,
    "CS"
);

insert into Students(ssid, gender, marks, branch) VALUES (
    "2019A7PS0005G",
    "FEMALE",
    27,
    "CS"
);

insert into Students(ssid, gender, marks, branch) VALUES (
    "2019A7PS0006G",
    "MALE",
    99,
    "ENI"
);

insert into Students(ssid, gender, marks, branch) VALUES (
    "2019A7PS0007G",
    "MALE",
    52,
    "MECH"
);

insert into Students(ssid, gender, marks, branch) VALUES (
    "2019A7PS0008G",
    "FEMALE",
    71,
    "ECE"
);

insert into Students(ssid, gender, marks, branch) VALUES (
    "2019A7PS0009G",
    "FEMALE",
    63,
    "CS"
);

insert into Students(ssid, gender, marks, branch) VALUES (
    "2019A7PS0010G",
    "MALE",
    88,
    "CS"
);

insert into Students(ssid, gender, marks, branch) VALUES (
    "2019A7PS0011G",
    "FEMALE",
    100,
    "CHEM"
);
