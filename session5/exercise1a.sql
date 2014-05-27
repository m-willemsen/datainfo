DROP TABLE Exemplaar;
DROP TABLE Book;

CREATE TABLE Book (
	isbn serial PRIMARY KEY,
	titel varchar,
	auteur varchar
);

CREATE TABLE Exemplaar (
	volgnummer serial PRIMARY KEY,
	isbn int,
	gewicht real,
	kast varchar,
	FOREIGN KEY ("isbn") REFERENCES Book("isbn")
	ON UPDATE CASCADE
	ON DELETE CASCADE
);

INSERT INTO Book VALUES (1,'Dit is een boek', 'Martijn');
INSERT INTO Exemplaar VALUES (1,1, 20.0, '3a');

UPDATE Book SET isbn=20 WHERE isbn=1;

DELETE FROM Book WHERE isbn=20;

SELECT * FROM Exemplaar;