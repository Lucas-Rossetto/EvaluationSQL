SELECT YEAR(m.year_id) ,concat(s.firstname , ' ' , s.lastname) AS etudiant , AVG(grade) AS moyenne
FROM student s 
LEFT JOIN assessment a ON a.id_student = s.id
INNER JOIN module m ON m.id = s.id
WHERE m.year_id = 2
AND m.id = a.attempted
order by 1,3,2;