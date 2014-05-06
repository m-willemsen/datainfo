SELECT DISTINCT p.name FROM person p, Writes w WHERE w.pid=p.pid AND NOT EXISTS (
		SELECT * FROM Directs d WHERE d.mid = w.mid
);

