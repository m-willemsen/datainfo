SELECT p.name, m.year FROM Person p, Movie m WHERE EXISTS(
	SELECT * FROM Directs d WHERE d.pid=p.pid AND ( 
		SELECT COUNT(*) AS aantal_actifilms_door_regisseur FROM Movie m WHERE m.mid = d.mid GROUP BY (
			SELECT DISTINCT * FROM genre g WHERE g.genre = 'Action'
		) >= 2
	)
);

SELECT p.name, m.year FROM Person p, Movie m WHERE EXISTS (
	SELECT * FROM Directs d WHERE d.pid=p.pid -- AND d.mid komt 2 keer voor in Genre
);


SELECT p.name, m.year FROM Person p, Movie m WHERE EXISTS (
	SELECT * FROM Directs d WHERE d.pid=p.pid AND EXISTS(
SELECT * FROM Genre g WHERE g.mid = d.mid AND g.genre='Action' HAVING COUNT (g.mid) >=2)
);