--Q1. Listar todas las inscripciones mostrando el nombre del estudiante, el título del curso y su porcentaje de completado
SELECT s.name, c.title, e.completion_percentage
FROM enrollments e
INNER JOIN students s ON e.student_id = s.id
INNER JOIN courses c ON e.course_id = c.id;


--Q2. Mostrar el nombre y email de los estudiantes que han aprobado al menos un curso, junto con el título del curso que aprobaron;
SELECT s.name, s.email, c.title
FROM enrollments e
INNER JOIN students s ON e.student_id = s.id
INNER JOIN courses c ON e.course_id = c.id
WHERE e.passed = TRUE;


-- Q3. Calcular el porcentaje de completado medio por instructor, ordenado de mayor a menor;
SELECT c.instructor_name, AVG(e.completion_percentage) AS average_completion
FROM enrollments e
INNER JOIN courses c ON e.course_id = c.id
GROUP BY c.instructor_name
ORDER BY average_completion DESC;


--Q4. Encontrar todos los estudiantes qu eno tienen  ninguna inscripción  (se registraron en la plataforma pero nunca se apuntaron a un curso);
SELECT s.id, s.name, s.email
FROM students s
LEFT JOIN enrollments e ON s.id = e.student_id
WHERE e.student_id IS NULL;


-- Q5. Encontrar todos los cursos que no tienen ninguna inscripción
SELECT c.id, c.title, c.category
FROM courses c
LEFT JOIN enrollments e ON c.id = e.course_id
WHERE e.course_id IS NULL;


-- Q6. Contar cuántos cursos tiene inscrito cada estudiante y mostrar solo los inscritos en más de un curso
SELECT s.id, s.name, COUNT(e.course_id) AS total_courses
FROM students s
INNER JOIN enrollments e ON s.id = e.student_id
GROUP BY s.id, s.name
HAVING COUNT(e.course_id) > 1
ORDER BY total_courses DESC;

-- Q7. Calcular los ingresos totales por categoría usando el precio mensual de courses
SELECT c.category, SUM(c.monthly_fee) AS total_revenue
FROM enrollments e
INNER JOIN courses c ON e.course_id = c.id
GROUP BY c.category
ORDER BY total_revenue DESC;


-- Q8. Mostrar cada instructor junto con el número de estudiantes inscritos en sus cursos
SELECT c.instructor_name, COUNT(e.student_id) AS total_students
FROM courses c
INNER JOIN enrollments e ON c.id = e.course_id
GROUP BY c.instructor_name
ORDER BY total_students DESC;


-- Q9. Comprobar si hay inscripciones con student_id sin un estudiante existente (registros huérfanos)
SELECT e.*
FROM enrollments e
LEFT JOIN students s ON e.student_id = s.id
WHERE s.id IS NULL;


 -- Q10. Comprobar si hay inscripciones cuyo course_id no corresponde a ningún curso existente (registros huérfanos)
SELECT e.* 
FROM enrollments e 
LEFT JOIN courses c 
ON e.course_id = c.id 
WHERE c.id IS NULL;