CREATE TABLE university.students (
    id INT PRIMARY KEY,
    s_name VARCHAR(100),
    s_surname VARCHAR(100),
    s_middle_name VARCHAR(100),
    is_status bool,
    id_course int REFERENCES university.courses(id)
);


select *
from university.students;

drop table university.students;


insert into university.students VALUES(1,'Петр','Петров','Петрович',TRUE ,1);
insert into university.students VALUES(2,'Иван','Иванов','Иваныч',FALSE ,1);
insert into university.students VALUES(3,'Сергей','Михно','Иваныч',TRUE ,3);
insert into university.students VALUES(4,'Ирина','Стоцкая','Юрьевна',FALSE ,3);
insert into university.students VALUES(5,'Настасья','Младич',null,FALSE ,2);