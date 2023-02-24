CREATE DATABASE Human_friends;
USE Human_friends;

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
