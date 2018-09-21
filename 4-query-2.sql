select DISTINCT CONCAT(s.firstname , ' ', s.lastname) AS etudiant , label AS "année_d''étude" 
FROM enrolment e
RIGHT JOIN student s ON e.id_student = s.id
INNER JOIN year y on e.id_year = y.id 
WHERE datediff(`to`, '2017-07-01') > 0
ORDER BY s.lastname;