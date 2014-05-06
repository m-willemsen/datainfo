INSERT INTO F VALUES 
("ABC","EF", false, "ABC EF zijn alle kolommen, dus ze zijn zeker afhankelijk. Dan heb je D nog en die is afhankelijk van E dus die heb je ook."),
("E","D", true, " Je weet geen B en C dus je kunt ook niet achter E en F komen en dus is niet de volledige tabel afhankelijk van E"),
("D","A", true, "Zelfde reden als E->D");