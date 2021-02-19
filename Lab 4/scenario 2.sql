create database lab4dbsc2;
use lab4dbsc2;
 
create table Departments (
    dept_id INTEGER PRIMARY KEY,
    dept_name VARCHAR (30),
    dept_block_number INTEGER
);
 
create table Students (
    stud_id INTEGER PRIMARY KEY,
    stud_name VARCHAR (30),
    stud_address VARCHAR (40),
    city VARCHAR (30),
    dept_id INTEGER,
    FOREIGN KEY (dept_id) REFERENCES Departments (dept_id) ON DELETE CASCADE ON UPDATE CASCADE
);
 
create table Staff (
    staff_id INTEGER PRIMARY KEY,
    staff_name VARCHAR (30),
    dept_id INTEGER,
    FOREIGN KEY (dept_id) REFERENCES Departments (dept_id) ON DELETE CASCADE ON UPDATE CASCADE
);
 
create table Subjects (
    subject_id INTEGER PRIMARY KEY,
    subject_name VARCHAR (30),
    subject_code VARCHAR (10),
    staff_id INTEGER,
    FOREIGN KEY (staff_id) REFERENCES Staff (staff_id) ON DELETE CASCADE ON UPDATE CASCADE
);
 
create table Marks (
    value INTEGER,
    subject_id INTEGER NOT NULL,
    stud_id INTEGER NOT NULL,
    FOREIGN KEY (subject_id) REFERENCES Subjects (subject_id) ON DELETE CASCADE ON UPDATE CASCADE,
    FOREIGN KEY (stud_id) REFERENCES Students (stud_id) ON DELETE CASCADE ON UPDATE CASCADE,
    PRIMARY KEY (subject_id, stud_id)
);
 
insert into Departments (dept_id, dept_name, dept_block_number) VALUES (
    1,
    "CS",
    1
);
insert into Departments (dept_id, dept_name, dept_block_number) VALUES (
    2,
    "ECE",
    2
);
 
insert into Departments (dept_id, dept_name, dept_block_number) VALUES (
    3,
    "ENI",
    3
);
insert into Departments (dept_id, dept_name, dept_block_number) VALUES (
    4,
    "MECH",
    4
);
insert into Departments (dept_id, dept_name, dept_block_number) VALUES (
    5,
    "CHEM",
    5
);
 
 
insert into Students (stud_id, stud_name, stud_address, city, dept_id) VALUES (
    1,
    "Example Student 1",
    "Example Address 1",
    "Example City 1",
    3
);
 
 
insert into Students (stud_id, stud_name, stud_address, city, dept_id) VALUES (
    2,
    "Example Student 2",
    "Example Address 2",
    "Example City 2",
    4
);
 
 
insert into Students (stud_id, stud_name, stud_address, city, dept_id) VALUES (
    3,
    "Example Student 3",
    "Example Address 3",
    "Example City 3",
    3
);
 
 
insert into Students (stud_id, stud_name, stud_address, city, dept_id) VALUES (
    4,
    "Example Student 4",
    "Example Address 4",
    "Example City 4",
    3
);
 
 
insert into Students (stud_id, stud_name, stud_address, city, dept_id) VALUES (
    5,
    "Example Student 5",
    "Example Address 5",
    "Example City 5",
    2
);
 
 
insert into Students (stud_id, stud_name, stud_address, city, dept_id) VALUES (
    6,
    "Example Student 6",
    "Example Address 6",
    "Example City 6",
    5
);
 
 
insert into Students (stud_id, stud_name, stud_address, city, dept_id) VALUES (
    7,
    "Example Student 7",
    "Example Address 7",
    "Example City 7",
    2
);
 
 
insert into Students (stud_id, stud_name, stud_address, city, dept_id) VALUES (
    8,
    "Example Student 8",
    "Example Address 8",
    "Example City 8",
    4
);
 
 
insert into Students (stud_id, stud_name, stud_address, city, dept_id) VALUES (
    9,
    "Example Student 9",
    "Example Address 9",
    "Example City 9",
    4
);
 
 
insert into Students (stud_id, stud_name, stud_address, city, dept_id) VALUES (
    10,
    "Example Student 10",
    "Example Address 10",
    "Example City 10",
    3
);
 
 
insert into Students (stud_id, stud_name, stud_address, city, dept_id) VALUES (
    11,
    "Example Student 11",
    "Example Address 11",
    "Example City 11",
    1
);
 
 
insert into Students (stud_id, stud_name, stud_address, city, dept_id) VALUES (
    12,
    "Example Student 12",
    "Example Address 12",
    "Example City 12",
    4
);
 
 
insert into Students (stud_id, stud_name, stud_address, city, dept_id) VALUES (
    13,
    "Example Student 13",
    "Example Address 13",
    "Example City 13",
    2
);
 
 
insert into Students (stud_id, stud_name, stud_address, city, dept_id) VALUES (
    14,
    "Example Student 14",
    "Example Address 14",
    "Example City 14",
    3
);
 
insert into Staff (staff_id, staff_name, dept_id) VALUES (
    1,
    "NEE Singh",
    2
);
insert into Staff (staff_id, staff_name, dept_id) VALUES (
    2,
    "NAO Kumar",
    5
);
insert into Staff (staff_id, staff_name, dept_id) VALUES (
    3,
    "PNH Kapoor",
    4
);
insert into Staff (staff_id, staff_name, dept_id) VALUES (
    4,
    "IHA Agrawal",
    1
);
insert into Staff (staff_id, staff_name, dept_id) VALUES (
    5,
    "IRE Gupta",
    3
);
 
 
 
insert into Subjects (subject_id, subject_name, subject_code, staff_id) VALUES (
    1,
    "DBMS",
    "CS F230",
    1
);
 
insert into Subjects (subject_id, subject_name, subject_code, staff_id) VALUES (
    2,
    "DSA",
    "CS F201",
    2
);
 
insert into Subjects (subject_id, subject_name, subject_code, staff_id) VALUES (
    3,
    "FDS",
    "CS F330",
    3
);
 
insert into Subjects (subject_id, subject_name, subject_code, staff_id) VALUES (
    4,
    "CompArch",
    "CS F301",
    4
);
 
insert into Subjects (subject_id, subject_name, subject_code, staff_id) VALUES (
    5,
    "MuP",
    "CS F231",
    5
);
 
insert into Marks (value, subject_id, stud_id) VALUES (
    47,
    1,
    1
);
 
 
insert into Marks (value, subject_id, stud_id) VALUES (
    91,
    3,
    2
);
 
 
insert into Marks (value, subject_id, stud_id) VALUES (
    59,
    3,
    3
);
 
 
insert into Marks (value, subject_id, stud_id) VALUES (
    20,
    4,
    4
);
 
 
insert into Marks (value, subject_id, stud_id) VALUES (
    69,
    1,
    5
);
 
 
insert into Marks (value, subject_id, stud_id) VALUES (
    44,
    1,
    6
);
 
 
insert into Marks (value, subject_id, stud_id) VALUES (
    34,
    2,
    7
);
 
 
insert into Marks (value, subject_id, stud_id) VALUES (
    31,
    1,
    8
);
 
 
insert into Marks (value, subject_id, stud_id) VALUES (
    18,
    3,
    9
);
 
 
insert into Marks (value, subject_id, stud_id) VALUES (
    57,
    1,
    10
);
 
 
insert into Marks (value, subject_id, stud_id) VALUES (
    93,
    4,
    11
);
 
 
insert into Marks (value, subject_id, stud_id) VALUES (
    22,
    5,
    12
);
 
 
insert into Marks (value, subject_id, stud_id) VALUES (
    70,
    5,
    13
);
 
 
insert into Marks (value, subject_id, stud_id) VALUES (
    18,
    4,
    14
);