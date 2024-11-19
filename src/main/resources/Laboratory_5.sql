CREATE DATABASE students_db;

USE students_db;

CREATE TABLE students (
    id INT PRIMARY KEY AUTO_INCREMENT,
    surname VARCHAR(50) NOT NULL,
    name VARCHAR(50) NOT NULL,
    patronymic VARCHAR(50),
    birth_date DATE NOT NULL,
    record_book_number VARCHAR(20) NOT NULL
);

-- Вставка даних (20 студентів)
INSERT INTO students (surname, name, patronymic, birth_date, record_book_number)
VALUES
('Smirnov', 'Alexey', 'Sergeevich', '1998-06-12', 'AB11111'),
('Kuznetsov', 'Dmitry', 'Ivanovich', '2000-03-25', 'AB11112'),
('Morozov', 'Nikolay', 'Petrovich', '1999-08-09', 'AB11113'),
('Volkov', 'Andrey', 'Igorevich', '2001-01-17', 'AB11114'),
('Zaitsev', 'Roman', 'Vladislavovich', '1997-11-30', 'AB11115'),
('Sorokin', 'Ivan', 'Fedorovich', '1999-02-05', 'AB11116'),
('Yakovlev', 'Sergey', 'Nikolaevich', '2000-07-14', 'AB11117'),
('Popov', 'Kirill', 'Alexandrovich', '1998-09-21', 'AB11118'),
('Vasiliev', 'Yuri', 'Stepanovich', '2001-05-03', 'AB11119'),
('Frolov', 'Maxim', 'Artemovich', '1999-12-11', 'AB11120'),
('Polyakov', 'Anton', 'Sergeevich', '2000-10-29', 'AB11121'),
('Kovalev', 'Mikhail', 'Yurievich', '1998-04-15', 'AB11122'),
('Rybakov', 'Alexandr', 'Leonidovich', '1999-07-19', 'AB11123'),
('Belov', 'Artem', 'Dmitrievich', '2001-03-08', 'AB11124'),
('Solovyov', 'Vadim', 'Olegovich', '2000-05-27', 'AB11125'),
('Belyaev', 'Pavel', 'Konstantinovich', '2001-09-15', 'AB11126'),
('Nikolaev', 'Vladimir', 'Timofeevich', '1997-10-01', 'AB11127'),
('Markov', 'Denis', 'Anatolievich', '1999-01-22', 'AB11128'),
('Stepanov', 'Egor', 'Alekseevich', '2000-06-18', 'AB11129'),
('Semyonov', 'Ivan', 'Rodionovich', '2001-08-24', 'AB11130');
