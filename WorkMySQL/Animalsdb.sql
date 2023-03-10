DROP DATABASE IF EXISTS Human_friends;
CREATE DATABASE Human_friends;
USE Human_friends;
-- End Task 7
CREATE TABLE Animals(
    AnimalsId INT PRIMARY KEY AUTO_INCREMENT, 
    Pet VARCHAR(20) UNIQUE NOT NULL
);

INSERT Animals(Pet) 
VALUES
	('Pets'),
	('PackAnimals'); 
CREATE TABLE Pets(
    AnimalsId INT PRIMARY KEY AUTO_INCREMENT, 
    PetId INT,
    FOREIGN KEY (PetId) REFERENCES Animals(AnimalsId),
    Pet VARCHAR(20) NOT NULL
);
CREATE TABLE PackAnimals(
    AnimalsId INT PRIMARY KEY AUTO_INCREMENT,
    PacksId INT,
    FOREIGN KEY (PacksId) REFERENCES Animals(AnimalsId),
    PackName VARCHAR(20) NOT NULL
);
CREATE TABLE Commands(
    CommandsId INT PRIMARY KEY AUTO_INCREMENT,
    name TEXT NOT NULL
);

INSERT Pets(PetId, Pet) 
VALUES
	(1, 'Cat'),
	(1, 'Dog'),
	(1, 'Hamster');
INSERT PackAnimals(PacksId, PackName) 
VALUES
	(2, 'Horse'),
	(2, 'Donkey'), 
	(2, 'Camel'); 
INSERT Commands(name)
VALUES
	('Сидеть'),
    ('Лежить'),
    ('Голос'),
    ('Вперед'),
    ('Стоять'),
    ('Кушать'),
    ('Но! - пошёл'),
    ('Тр-р-р-р - трмози'),
    ('хать-хать!'),
    ('Служи'),
    ('Кувырок'),
    ('Грызи'),
    ('Гит'),
    ('Дур'),
    ('Каш'),
    ('Цок, Цок!');    
SELECT * FROM Commands;

-- Создаем таблицу домашних животных
CREATE TABLE Cat(
    CatId INT PRIMARY KEY AUTO_INCREMENT,
    CatsId INT,
    FOREIGN KEY (CatsId) REFERENCES Pets(AnimalsId),
    Name VARCHAR(20) NOT NULL,
    BirthDay DATE NOT NULL,
    CommandId INT NOT NULL,
    FOREIGN KEY (CommandId) REFERENCES Commands(CommandsId)
);
CREATE TABLE Dog(
    DogId INT PRIMARY KEY AUTO_INCREMENT,
    DogsId INT,
    FOREIGN KEY (DogsId) REFERENCES Pets(AnimalsId),
    Name VARCHAR(20) NOT NULL,
    BirthDay DATE NOT NULL,
    CommandId INT NOT NULL,
    FOREIGN KEY (CommandId) REFERENCES Commands(CommandsId)
);
CREATE TABLE Hamster(
    HamsterId INT PRIMARY KEY AUTO_INCREMENT,
    HamstersId INT,
    FOREIGN KEY (HamstersId) REFERENCES Pets(AnimalsId),
    Name VARCHAR(20) NOT NULL,
    BirthDay DATE NOT NULL,
    CommandId INT NOT NULL,
    FOREIGN KEY (CommandId) REFERENCES Commands(CommandsId)
);
-- Создаем таблицу вьючных животных
CREATE TABLE Horse(
    HorseId INT PRIMARY KEY AUTO_INCREMENT,
    HorsesId INT,
    FOREIGN KEY (HorsesId) REFERENCES PackAnimals(AnimalsId),
    Name VARCHAR(20) NOT NULL,
    BirthDay DATE NOT NULL,
    CommandId INT NOT NULL,
    FOREIGN KEY (CommandId) REFERENCES Commands(CommandsId)
);
CREATE TABLE Donkey(
    DonkeyId INT PRIMARY KEY AUTO_INCREMENT,
	DonkeysId INT,
    FOREIGN KEY (DonkeysId) REFERENCES PackAnimals(AnimalsId),
    Name VARCHAR(20) NOT NULL,
    BirthDay DATE NOT NULL,
    CommandId INT NOT NULL,
    FOREIGN KEY (CommandId) REFERENCES Commands(CommandsId)
);
CREATE TABLE Camel(
    CamelId INT PRIMARY KEY AUTO_INCREMENT,
	 CamelsId INT,
    FOREIGN KEY  (CamelsId) REFERENCES PackAnimals(AnimalsId),
    Name VARCHAR(20) NOT NULL,
    BirthDay DATE NOT NULL,
    CommandId INT NOT NULL,
    FOREIGN KEY (CommandId) REFERENCES Commands(CommandsId)
);
-- заполнение таблиц домашними животными
INSERT Cat(CatsId, Name, BirthDay, CommandId) VALUES
(1, 'Барсик', '20190328', 1),
(1, 'Кекс','20180101', 2),
(1, 'Мурзик','20171020', 2),
(1, 'Муська','20200224', 3),
(1, 'Снежок','20150509', 5),
(1, 'Василий','20180708',4),
(1, 'Машка','20221003', 4);

INSERT Dog(DogsId, Name, BirthDay, CommandId) VALUES
(2, 'Антонио', '20191128', 1),
(2, 'Барон','20180801', 6),
(2, 'Вольт','20170120', 2),
(2, 'Геркулес','20200424', 3),
(2, 'Ли','20150909', 5),
(2, 'Мак','20180808',1),
(2, 'Царь','20220115', 4);

INSERT Hamster(HamstersId, Name, BirthDay, CommandId) VALUES
(3, 'Бараш', '20210328', 10),
(3, 'Пендель','20200101', 11),
(3, 'Носик','20151020', 11),
(3, 'Бусик','20220224', 12),
(3, 'Пчелка','20230101', 1),
(3, 'Кротик','20190708',12),
(3, 'Беб','20201003', 12);

-- заполнение таблиц вьючными животными
INSERT Horse(HorsesId, Name, BirthDay, CommandId) VALUES
(1, 'Гром', '20170304', 7),
(1, 'Кольт','20191101', 7),
(1, 'Секрет','20151221', 8),
(1, 'Пилигрим','20221205', 9),
(1, 'Сухарик','20190408', 10),
(1, 'Цезарь','20180717',8),
(1, 'Шейтан','20221003', 9);
INSERT Donkey(DonkeysId, Name, BirthDay, CommandId) VALUES
(2, 'Альтаир', '20221128', 13),
(2, 'Чуп','20210222', 14),
(2, 'Биггс','20210120', 15),
(2, 'Жизель','20180424', 16),
(2, 'Сурия','20170909', 15),
(2, 'Марс','20140808',13),
(2, 'Юла','20230105', 14);
INSERT Camel(CamelsId, Name, BirthDay, CommandId) VALUES
(3, 'Агата', '20210328', 10),
(3, 'Ида','20200101', 11),
(3, 'Вася','20151020', 11),
(3, 'Ланцелот','20220224', 12),
(3, 'Джаред','20230101', 1),
(3, 'Цонг','20190708',12),
(3, 'Сим','20201003', 12);

-- Вывод домашних животных
SELECT * FROM Cat UNION
SELECT * FROM Dog UNION
SELECT * FROM Hamster;
-- Вывод вьючных животных
SELECT * FROM Horse UNION
SELECT * FROM Camel UNION
SELECT * FROM Donkey;
-- End Task 9

DROP TABLE Camel;
DELETE FROM PackAnimals WHERE  AnimalsId=3;
SELECT * FROM PackAnimals;
SELECT * FROM Horse UNION SELECT * FROM Donkey;
-- Объединяем лошадей и ослов
CREATE TABLE MergingPackAnimals(
    MergingId INT PRIMARY KEY AUTO_INCREMENT,
    PacksId INT NOT NULL,
    FOREIGN KEY (PacksId) REFERENCES PackAnimals(AnimalsId),
    Name VARCHAR(20) NOT NULL,
    BirthDay DATE NOT NULL,
    CommandId INT NOT NULL,
    FOREIGN KEY (CommandId) REFERENCES Commands(CommandsId)
);
-- Наполнение объединенной таблицы
INSERT INTO MergingPackAnimals ( PacksId, Name, BirthDay, CommandId) 
SELECT HorsesId, Name, BirthDay, CommandId FROM Horse
UNION SELECT DonkeysId, Name, BirthDay, CommandId FROM Donkey;
SELECT * FROM MergingPackAnimals;
-- End Task 10

CREATE TABLE YoungAnimals(
    AnimalId INT PRIMARY KEY AUTO_INCREMENT,
    Name VARCHAR(20) NOT NULL,
    BirthDay DATE NOT NULL,
    Age INT NOT NULL
)
SELECT Name, BirthDay, TIMESTAMPDIFF(MONTH, Young.BirthDay, CURDATE()) AS Age 
    FROM (
        SELECT * FROM MergingPackAnimals UNION 
        SELECT * FROM Cat UNION 
        SELECT * FROM Dog UNION
        SELECT * FROM Hamster)
    AS Young
WHERE TIMESTAMPDIFF(MONTH, Young.BirthDay, CURDATE()) < 36 and TIMESTAMPDIFF(MONTH, Young.BirthDay, CURDATE()) > 12;
-- Функция вычисления возраста с точностью до месяца
DELIMITER //
CREATE FUNCTION AgeAnimal(dates date)
returns text
deterministic
BEGIN
declare months int;
declare years int; 
Set months=(TIMESTAMPDIFF(MONTH,dates,curdate()));
set years=(TIMESTAMPDIFF(YEAR,dates,curdate()));
return CONCAT(years,' г. ',
IF((months/12)=years,0,months div 12),' м.');
END//
DELIMITER ;
-- конец функции 
SELECT AnimalId,Name, BirthDay, AgeAnimal(YoungAnimals.BirthDay) AS Age FROM YoungAnimals;
-- объединение всех таблиц в одну

SET FOREIGN_KEY_CHECKS=0;
SET GLOBAL FOREIGN_KEY_CHECKS=0;

CREATE TABLE AllAnimals(
    id INT PRIMARY KEY AUTO_INCREMENT,
    AnimalId INT NOT NULL,
    FOREIGN KEY (AnimalId) REFERENCES PackAnimals(AnimalsId),
    SubAnimalId INT NOT NULL,
    FOREIGN KEY (SubAnimalId) REFERENCES Animals(AnimalsId),
    Name VARCHAR(20) NOT NULL,
    BirthDay DATE NOT NULL,
    CommandId INT NOT NULL,
    FOREIGN KEY (CommandId) REFERENCES Commands(CommandsId)
);

SELECT * FROM Cat;
INSERT INTO AllAnimals (AnimalId, SubAnimalId, Name, BirthDay, CommandId)
SELECT DonkeysId,p.AnimalsId,  Name, BirthDay, CommandId FROM Donkey as c JOIN PackAnimals as p ON c.DonkeysId = p.PacksId UNION
SELECT HorsesId,p.AnimalsId,  Name, BirthDay, CommandId FROM Horse as c JOIN PackAnimals as p ON c.HorsesId = p.PacksId UNION
SELECT CatsId,p.AnimalsId,  Name, BirthDay, CommandId FROM Cat as c JOIN Pets as p ON c.CatsId = p.PetId UNION
SELECT DogsId,p.AnimalsId,  Name, BirthDay, CommandId FROM Dog as c JOIN Pets as p ON c.DogsId = p.PetId UNION 
SELECT HamstersId,p.AnimalsId,  Name, BirthDay, CommandId FROM Hamster as c JOIN Pets as p ON c.HamstersId = p.PetId;
SELECT * FROM  AllAnimals;
-- End Task 11