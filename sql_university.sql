--Создание таблицы с факультетами 
CREATE TABLE university.faculties ( 
    id INT NOT NULL PRIMARY KEY,
    faculty_name VARCHAR(100),
    price numeric(9,2)
);

--удаление таблицы
DROP TABLE university.faculties;

--выбрать все из таблицы с факультетами
SELECT *
	FROM university.faculties

--Заполнение данными
INSERT INTO university.faculties VALUES (1,'Инженерный', 30000);
INSERT INTO university.faculties VALUES (2,'Экономический', 49000);

--Создание таблицы с курсами
CREATE TABLE university.courses ( 
    id INT NOT NULL PRIMARY KEY,
    course_number INT,
    id_faculty INT REFERENCES university.faculties(id)
);

SELECT *
	FROM university.courses;

DROP TABLE university.students;

--Заполнение данными
INSERT INTO university.courses VALUES(1,1,1);
INSERT INTO university.courses VALUES(2,1,2);
INSERT INTO university.courses VALUES(3,4,2);

--Создание таблицы студентов
CREATE TABLE university.students (
    id INT NOT NULL PRIMARY KEY,
    s_name VARCHAR(100),
    s_surname VARCHAR(100),
    s_middle_name VARCHAR(100),
    is_status bool,
    id_course int REFERENCES university.courses(id)
);

SELECT *
	FROM university.students;

DROP TABLE university.students;

--Заполнение данными
INSERT INTO university.students VALUES(1,'Петр','Петров','Петрович',TRUE ,1);
INSERT INTO university.students VALUES(2,'Иван','Иванов','Иваныч',FALSE ,1);
INSERT INTO university.students VALUES(3,'Сергей','Михно','Иваныч',TRUE ,3);
INSERT INTO university.students VALUES(4,'Ирина','Стоцкая','Юрьевна',FALSE ,3);
INSERT INTO university.students VALUES(5,'Настасья','Младич',null,FALSE ,2);

-- Этап №3 Выборка данных. Необходимо написать sql запросы :
-- 1. Вывести всех студентов, кто платит больше 30_000.
-- 2. Перевести всех студентов Петровых на 1 курс экономического факультета.
-- 3. Вывести всех студентов без отчества или фамилии.
-- 4. Вывести всех студентов содержащих в фамилии или в имени или в отчестве "ван".
-- 5. Удалить все записи из всех таблиц.

SELECT *
	FROM university.students
	JOIN university.courses ON university.students.id_course = university.courses.id
	JOIN university.faculties ON university.courses.id_faculty = university.faculties.id
	WHERE price > 30000;

UPDATE university.students
	SET id_course = 2
	WHERE s_surname = 'Петров';

SELECT *
	FROM university.students
	WHERE s_middle_name IS NULL OR s_surname IS NULL;

SELECT *
	FROM university.students
	WHERE s_name LIKE '%ван%'
		OR s_name LIKE '%ван%'
		OR s_middle_name like '%ван%';

delete from university.students;
delete from university.courses;
delete from university.faculties;
