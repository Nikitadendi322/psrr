Server [localhost]:
Database [postgres]:
Port [5432]:
Username [postgres]:
Пароль пользователя postgres:
psql (15.2)
ПРЕДУПРЕЖДЕНИЕ: Кодовая страница консоли (866) отличается от основной
                страницы Windows (1251).
                8-битовые (русские) символы могут отображаться некорректно.
                Подробнее об этом смотрите документацию psql, раздел
                "Notes for Windows users".
Введите "help", чтобы получить справку.

postgres=# \1
неверная команда \1
Введите \? для получения справки.
postgres=# CREATE DATABASE skypro;
CREATE DATABASE
postgres=# \l
╤яшёюъ срч фрээ√ї
╚ь     | ┬ырфхыхЎ | ╩юфшЁютър |     LC_COLLATE      |      LC_CTYPE       | ыюъры№ ICU | ╧ЁютрщфхЁ ыюърыш |     ╧Ёртр фюёЄєяр
-----------+----------+-----------+---------------------+---------------------+------------+------------------+-----------------------
 postgres  | postgres | UTF8      | Russian_Russia.1251 | Russian_Russia.1251 |            | libc             |
 skypro    | postgres | UTF8      | Russian_Russia.1251 | Russian_Russia.1251 |            | libc             |
 template0 | postgres | UTF8      | Russian_Russia.1251 | Russian_Russia.1251 |            | libc             | =c/postgres          +
           |          |           |                     |                     |            |                  | postgres=CTc/postgres
 template1 | postgres | UTF8      | Russian_Russia.1251 | Russian_Russia.1251 |            | libc             | =c/postgres          +
           |          |           |                     |                     |            |                  | postgres=CTc/postgres
(4 ёЄЁюъш)


postgres=# \c skypro
Вы подключены к базе данных "skypro" как пользователь "postgres".
skypro=# CREATE TABLE book (
    skypro(# id BIGSERIAL,NOT NULL,PRIMARY KEY,
        skypro(# first_name VARCHAR(50), NOT NULL,
        skypro(# last_name VARCHAR(50), NOT NULL,
        skypro(# gender VARCHAR(6), NOT NULL,
        skypro(# age INT, NOT NULL
        skypro(# );
ОШИБКА:  ошибка синтаксиса (примерное положение: "NOT")
СТРОКА 2: id BIGSERIAL,NOT NULL,PRIMARY KEY,
                       ^
skypro=# \c skypro
Вы подключены к базе данных "skypro" как пользователь "postgres".
skypro=# ALTER TABLE book
    skypro-# \c skypro
Вы подключены к базе данных "skypro" как пользователь "postgres".
skypro-# CREAT TABLE book(
skypro(# id BIGSERIAL NOT NULL PRIMARY KEY,
skypro(# first_name VARCHAR(50), NOT NULL,
skypro(# last_name VARCHAR(50), NOT NULL,
skypro(# gender VARCHAR(6), NOT NULL,
skypro(# age INT NOT NULL
skypro(# );
ОШИБКА:  ошибка синтаксиса (примерное положение: "CREAT")
СТРОКА 2: CREAT TABLE book(
          ^
skypro=# \c skypro
Вы подключены к базе данных "skypro" как пользователь "postgres".
skypro=# CREATE TABLE book (
skypro(# id BIGSERIAL NOT NULL PRIMARY KEY,
skypro(# first_name VARCHAR(50) NOT NULL,
skypro(# last_name VARCHAR(50) NOT NULL,
skypro(# gender VARCHAR(6) NOT NULL,
skypro(# age INT NOT NULL
skypro(# );
CREATE TABLE
skypro=# SELECT * FROM book;
 id | first_name | last_name | gender | age
----+------------+-----------+--------+-----
(0 ёЄЁюъ)


skypro=# INSERT INTO book(
skypro(# first_name, last_name, gender, age)
skypro-# VALUES ('NIKITA', 'PAVLOV', 'MAN', 25);
INSERT 0 1
skypro=# SELECT * FROM book;
 id | first_name | last_name | gender | age
----+------------+-----------+--------+-----
  1 | NIKITA     | PAVLOV    | MAN    |  25
(1 ёЄЁюър)


skypro=# INSERT INTO book(
skypro(# first_name, last_name, gender, age)
skypro-# VALUES ('MAXIM', 'PUPKIN', 'MAN', 19);
INSERT 0 1
skypro=# SELECT * FROM book;
 id | first_name | last_name | gender | age
----+------------+-----------+--------+-----
  1 | NIKITA     | PAVLOV    | MAN    |  25
  2 | MAXIM      | PUPKIN    | MAN    |  19
(2 ёЄЁюъш)


skypro=# INSERT INTO book(
skypro(# first_name, last_name, gender, age)
skypro-# VALUES ('EKATERINA', 'YUDINA, "WOMAN', 27);
ОШИБКА:  INSERT содержит больше целевых столбцов, чем выражений
СТРОКА 2: first_name, last_name, gender, age)
                                         ^
skypro=# INSERT INTO book(
skypro(# first_name, last_name, gender, age)
skypro-# VALUES ('KATYA', 'YUDINA', 'WOMAN', 27);
INSERT 0 1
skypro=# SELECT * FROM book;
 id | first_name | last_name | gender | age
----+------------+-----------+--------+-----
  1 | NIKITA     | PAVLOV    | MAN    |  25
  2 | MAXIM      | PUPKIN    | MAN    |  19
  3 | KATYA      | YUDINA    | WOMAN  |  27
(3 ёЄЁюъш)


skypro=# UPDATE book SET age= 24;
UPDATE 3
skypro=# SELECT * FROM book(
skypro(# 0;
skypro(# SELECT FROM book;
skypro(# SELECT * FROM book;
skypro(# SELECT * FROM book;
skypro(# );
ОШИБКА:  ошибка синтаксиса (примерное положение: ";")
СТРОКА 2: 0;
           ^
skypro=# SELECT * FROM book;
 id | first_name | last_name | gender | age
----+------------+-----------+--------+-----
  1 | NIKITA     | PAVLOV    | MAN    |  24
  2 | MAXIM      | PUPKIN    | MAN    |  24
  3 | KATYA      | YUDINA    | WOMAN  |  24
(3 ёЄЁюъш)


skypro=# DELETE FROM book WHERE id = 1;
DELETE 1
skypro=# SELECT * FROM book;
 id | first_name | last_name | gender | age
----+------------+-----------+--------+-----
  2 | MAXIM      | PUPKIN    | MAN    |  24
  3 | KATYA      | YUDINA    | WOMAN  |  24
(2 ёЄЁюъш)


skypro=#