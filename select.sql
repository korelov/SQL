-- Этап №3 Выборка данных. Необходимо написать sql запросы :
-- 1. Вывести всех студентов, кто платит больше 30_000.
-- 2. Перевести всех студентов Петровых на 1 курс экономического факультета.
-- 3. Вывести всех студентов без отчества или фамилии.
-- 4. Вывести всех студентов содержащих в фамилии или в имени или в отчестве "ван".
-- 5. Удалить все записи из всех таблиц.

select *
from university.students
join university.courses on id_course=university.courses.id
join university.faculties on id_faculty = university.faculties.id
where price > 30000;

UPDATE university.students
SET id_course = 2
WHERE s_surname = 'Петров';

select *
from university.students
where s_middle_name is null;

select *
from university.students
where s_middle_name like '%ван%';

delete from university.students;
delete from university.courses;
delete from university.faculties;