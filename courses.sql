CREATE TABLE university.courses ( 
    id INT PRIMARY KEY,
    course_number int ,
     id_faculty int REFERENCES university.faculties(id)
);

select *
from university.courses;

drop table university.students;

insert into university.courses VALUES(1,1,1);
insert into university.courses VALUES(2,1,2);
insert into university.courses VALUES(3,4,2);