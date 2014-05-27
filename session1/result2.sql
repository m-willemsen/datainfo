INSERT INTO F VALUES 
("ABC","EF", false, "ABC EF zijn alle kolommen, dus ze zijn zeker afhankelijk. Dan heb je D nog en die is afhankelijk van E dus die heb je ook."),
("E","D", true, " Je weet geen B en C dus je kunt ook niet achter E en F komen en dus is niet de volledige tabel afhankelijk van E"),
("D","A", true, "Zelfde reden als E->D");

CREATE TABLE R1 (E INT, D INT, FOREIGN KEY (E) REFRENCES R2(E));
CREATE TABLE R2 (A INT, B INT, C INT, E INT, F INT);
CREATE TABLE F1 (x VARCHAR(10), y VARCHAR(10), violation BOOLEAN, motivation VARCHAR(200));
INSERT INTO F1 VALUES ("E", "D", false, "Met E kun je alle andere kolommen bereiken.");
CREATE TABLE F2 (x VARCHAR(10), y VARCHAR(10), violation BOOLEAN, motivation VARCHAR(200));
INSERT INTO F2 VALUES ("ABC", "EF", false, "Zie vorige tabel"), ("E", "A", true, "Met E kun je nog steeds niet alle kolommen krijgen");

CREATE TABLE R21 (E INT, A INT, FOREIGN KEY (E) REFRENCES R22(E));
CREATE TABLE R22 (B INT, C INT, E INT, F INT);
CREATE TABLE F21 (x VARCHAR(10), y VARCHAR(10), violation BOOLEAN, motivation VARCHAR(200));
INSERT INTO F21 VALUES ("E", "A", false, "Met E kun je A krijgen");
CREATE TABLE F22 (x VARCHAR(10), y VARCHAR(10), violation BOOLEAN, motivation VARCHAR(200));
INSERT INTO F22 VALUES ("EBC", "EF", false, "Met BC kun je alle andere kolommen krijgen");