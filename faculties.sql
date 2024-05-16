CREATE TABLE university.faculties ( 
    id INT PRIMARY KEY,
    faculty_name VARCHAR(100),
    price numeric(9,2)
);

--удаление 
drop table university.faculties;

select *
from university.faculties

insert into university.faculties values (1,'Инженерный', 30000);
insert into university.faculties values (2,'Экономический', 49000);