DROP TABLE Exemplaar;
DROP TABLE Bestelling;
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
	ON DELETE CASCADE,
	CHECK (gewicht <= 2)
);
--CREATE FUNCTION Del_book
--CREATE TRIGGER FK_On_Delete_cascade 
--	after delete on Book
	--for each row
	--BEGIN
	--when (NOT EXISTS (SELECT * FROM Book WHERE isbn=old.isbn)
	--	DELETE FROM Exemplaar e WHERE OLD.isbn= e.isbn
	--END
--;
CREATE TABLE Bestelling(
	isbn serial PRIMARY KEY,
	aantal int,
	FOREIGN KEY ("isbn") REFERENCES Book("isbn")
	ON DELETE CASCADE
	ON UPDATE CASCADE
);

--CREATE TRIGGER ADD_New_Book_to_Bestelling
--	after insert on Book
--	for each statement
--	when (NOT EXISTS (SELECT * FROM OLD WHERE auteur = new.auteur)
--		begin
--			INSERT INTO Bestelling VALUES (new.isbn, 1)
--		end;
INSERT INTO Book VALUES (1,'Dit is een boek', 'Martijn');
INSERT INTO Exemplaar VALUES (1,1, 2.0, '3a');
INSERT INTO Book VALUES (3,'Dit is een ander boek', 'Martijn');
INSERT INTO Exemplaar VALUES (2,3, 2.0, '3b');

UPDATE Book SET isbn=20 WHERE isbn=1;

DELETE FROM Book WHERE isbn=20;

SELECT * FROM Exemplaar;