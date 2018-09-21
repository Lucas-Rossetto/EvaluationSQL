select AVG(grade) AS moyenne, 
Case a
		when grade (between 15 and 20) THEN 'A'
        when grade (between 10 and 14) THEN 'B'
        when grade (between 5 and 9) THEN 'C'
        when grade (between 0 and 4) THEN 'D'
	
order by grade desc , lastname asc;