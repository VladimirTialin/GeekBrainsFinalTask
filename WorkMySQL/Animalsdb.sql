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
    PackId INT,
    FOREIGN KEY (PackId) REFERENCES Animals(AnimalsId),
    Pack VARCHAR(20) NOT NULL
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
INSERT PackAnimals(PackId, Pack) 
VALUES
	(2, 'Horse'),
	(2, 'Donkey'), 
	(2, 'CameL'); 

SELECT * FROM Pets, PackAnimals;
-- End Task 8

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
    PetsId INT,
    FOREIGN KEY (PetsId) REFERENCES Pets(PetId),
    Name VARCHAR(20) NOT NULL,
    BirthDay DATE NOT NULL,
    CommandId INT NOT NULL,
    FOREIGN KEY (CommandId) REFERENCES Commands(CommandsId)
);
CREATE TABLE Dog(
    DogId INT PRIMARY KEY AUTO_INCREMENT,
    PetsId INT,
    FOREIGN KEY (PetsId) REFERENCES Pets(PetId),
    Name VARCHAR(20) NOT NULL,
    BirthDay DATE NOT NULL,
    CommandId INT NOT NULL,
    FOREIGN KEY (CommandId) REFERENCES Commands(CommandsId)
);
CREATE TABLE Hamster(
    HamsterId INT PRIMARY KEY AUTO_INCREMENT,
    PetsId INT,
    FOREIGN KEY (PetsId) REFERENCES Pets(PetId),
    Name VARCHAR(20) NOT NULL,
    BirthDay DATE NOT NULL,
    CommandId INT NOT NULL,
    FOREIGN KEY (CommandId) REFERENCES Commands(CommandsId)
);
-- Создаем таблицу вьючных животных
CREATE TABLE Horse(
    HorseId INT PRIMARY KEY AUTO_INCREMENT,
    PactsId INT,
    FOREIGN KEY (PactsId) REFERENCES PackAnimals(PackId),
    Name VARCHAR(20) NOT NULL,
    BirthDay DATE NOT NULL,
    CommandId INT NOT NULL,
    FOREIGN KEY (CommandId) REFERENCES Commands(CommandsId)
);

CREATE TABLE Donkey(
    DonkeyId INT PRIMARY KEY AUTO_INCREMENT,
	PactsId INT,
    FOREIGN KEY (PactsId) REFERENCES PackAnimals(PackId),
    Name VARCHAR(20) NOT NULL,
    BirthDay DATE NOT NULL,
    CommandId INT NOT NULL,
    FOREIGN KEY (CommandId) REFERENCES Commands(CommandsId)
);

CREATE TABLE Camel(
    CamelId INT PRIMARY KEY AUTO_INCREMENT,
	PactsId INT,
    FOREIGN KEY (PactsId) REFERENCES PackAnimals(PackId),
    Name VARCHAR(20) NOT NULL,
    BirthDay DATE NOT NULL,
    CommandId INT NOT NULL,
    FOREIGN KEY (CommandId) REFERENCES Commands(CommandsId)
);
-- End Task 8