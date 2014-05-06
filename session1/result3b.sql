#SELECT acts.pid FROM acts WHERE EXISTS(
#	SELECT movie.mid FROM movie 
#		WHERE (acts.mid = movie.mid) 
#		AND (movie.name = 'Back to the Future')
#)

SELECT DISTINCT a.pid FROM movie m, acts a WHERE m.mid = a.mid AND m.name = 'Back to the Future';

