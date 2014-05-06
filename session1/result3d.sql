SELECT p.name FROM person p, Writes w WHERE w.pid=p.pid AND NOT EXISTS (
	SELECT * FROM Directs d WHERE d.mid = w.mid
) AND NOT EXISTS (
	SELECT * FROM Writes w, Directs d WHERE w.pid = p.pid AND d.mid = w.mid
);

