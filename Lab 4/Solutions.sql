//Avi Wadhwa and Abhijeet Swain DBMS Lab 4 Solution SEM 2 2020-2021
Scenario 1
See scenario1.sql  file for inseting data 
1)Select ssid, max(marks) from Students where marks < (Select max(marks) from Students);
2) select branch from (Select branch,count(ssid) as T from Students group by branch) as Q where T > 3 
second possible solution :
select branch from Students group by branch having count(*) >= 3;
  
3) select branch from students
group by branch
having avg(marks)>(select avg(marks) from students
                    where gender="FEMALE");

4) select branch from students
where gender ="MALE"
group by branch
having avg(marks)>(select avg(marks) from students
                    where gender="FEMALE");

5) with female_av (branch, marks,gender) as
        (select branch, avg(marks),gender
         from students
         where gender = "Female" group by branch),
	male_avg(branch,marks,gender) as
       (select branch, avg(marks),gender
         from students
         where gender = "Male" group by branch)
select female_av.branch
from female_av, male_avg
where female_av.marks < male_avg.marks and female_av.branch=male_avg.branch;

second possible solution :

select boyT.branch
from (select branch,avg(marks)as avgb from students where gender = "MALE" group by branch order by branch) as boyT,
(select branch,avg(marks) as avgg from students where gender="FEMALE" group by branch order by branch)as girlT
where boyT.avgb > girlT.avgg and boyT.branch = girlT.branch;

6) Select male.marks - female.marks from (select max(marks) as marks from Students where gender="Male") as male ,(select max(marks) as marks from Students where gender="Female") as female;

second possible solution :

select (select max(marks) from students where gender ="MALE")- (select max(marks) from students where gender ="FEMALE") as diff;

7) select count(ssid) from students where marks>70 and marks < 90 and branch = "CS";
8)	update students set gender = UPPER(gender);


Scenario 2: 

See scenario2.sql file for creation and insetion 

1) Select students.stud_id, min(marks.value) as minimum_marks from Students,marks where students.stud_id=marks.stud_id group by students.stud_id order by minimum_marks;
2) Select stud_id,CAST(Q.avg_mark_per as decimal(36,2)) as avg_mark  from (Select students.stud_id, avg(marks.value) as avg_mark_per from Students,marks where students.stud_id=marks.stud_id group by students.stud_id) as Q where Q.avg_mark_per > 50 order by Q.avg_mark_per;
3) alter table departments MODIFY COLUMN dept_name varchar (45)
4) Select CAST(max(Q.avg_mark_per) as decimal(36,2)) as avg_mark from (Select students.stud_id, avg(marks.value) as avg_mark_per from Students,marks where students.stud_id=marks.stud_id group by students.stud_id) as Q;
5) Select staff_name from Staff,departments where departments.dept_id=Staff.dept_id and dept_name="CS" order by staff_name;
6) alter table marks alter value Set Default 0;
7) select * from departments where dept_block_number=3 order by dept_id;
8) alter table students add COLUMN FULL_ADDRESS VARCHAR(70); 
	UPDATE students SET FULL_ADDRESS=CONCAT(stud_address, ' ' ,city);
9) select stud_name, B.subject_id from students,(select marks.stud_id ,Q.subject_id from marks,(select subjects.subject_id,max(marks.value) as a from marks,subjects where subjects.subject_id=marks.subject_id group by subjects.subject_id) as Q where Q.a=marks.value) as B where students.stud_id=B.stud_id;



