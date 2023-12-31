use DB1_232;

CREATE TABLE ESTUDANTE (
	idEstudante int PRIMARY KEY,
	Nome varchar(45),
	CPF char(11),
	Endereco varchar(45)
);

CREATE TABLE UC (
	idUC int PRIMARY KEY,
	Nome varchar(45),
	CargaHoraria int
);

CREATE TABLE Matricula (
	idEstudante int,
	idUC int,
	Conceito char(1)
	CONSTRAINT Mat_pk PRIMARY KEY (idEstudante, idUC),
	CONSTRAINT Mat_FK1 FOREIGN KEY (idEstudante) REFERENCES ESTUDANTE(idEstudante),
	CONSTRAINT Mat_FK2 FOREIGN KEY (idUC) REFERENCES UC(idUC)
);



SELECT * FROM ESTUDANTE
SELECT * FROM UC
SELECT * FROM MATRICULA

INSERT INTO ESTUDANTE VALUES (1, 'GILMARA', '12345678911', 'rua 123');
INSERT INTO ESTUDANTE VALUES (2, 'Victor', '12345678911', 'rua 123');
INSERT INTO ESTUDANTE VALUES (3, 'Rafael', '12345678911', 'rua 123');
INSERT INTO ESTUDANTE VALUES (4, 'Yuri', '12345678911', 'rua 123');

INSERT INTO UC VALUES (100, 'Banco de Dado I', 20);
INSERT INTO UC VALUES (101, 'Banco de Dado II', 20);
INSERT INTO UC VALUES (104, 'Introducao a programacao', 20);


INSERT INTO MATRICULA VALUES (1,100,'');
INSERT INTO MATRICULA VALUES (2,100,'');
INSERT INTO MATRICULA VALUES (3,101,'');
INSERT INTO MATRICULA VALUES (4,104,'');



