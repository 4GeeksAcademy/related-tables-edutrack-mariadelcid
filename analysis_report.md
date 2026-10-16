# Análisis Report de Edutrack - Tablas Relacionadas

## Q1. Listar todas las inscripciones mostrando el nombre del estudiante, el título del curso y su porcentaje de completado

| name            | title                  | completion_percentage |
| --------------- | ---------------------- | --------------------- |
| Emily Watson    | Intro to Python        | 85                    |
| Emily Watson    | Web Design Basics      | 60                    |
| Klaus Weber     | Intro to Python        | 92                    |
| Klaus Weber     | Data Analysis with SQL | 78                    |
| Lucia Fernandes | Web Design Basics      | 5                     |
| Lucia Fernandes | Digital Marketing 101  | 3                     |
| Marco Rossi     | Advanced Python        | 95                    |
| Marco Rossi     | Intro to Python        | 88                    |
| Yuki Nakamura   | Data Analysis with SQL | 45                    |
| Yuki Nakamura   | UI/UX Fundamentals     | 0                     |
| Pierre Dubois   | UI/UX Fundamentals     | 0                     |
| Priya Sharma    | Digital Marketing 101  | 70                    |
| Priya Sharma    | Intro to Python        | 55                    |
| Pierre Dubois   | Data Analysis with SQL | 20                    |
| Emily Watson    | Advanced Python        | 40                    |
| Lucia Fernandes | Advanced Python        | 0                     |

## Q2. Mostrar el nombre y email de los estudiantes que han aprobado al menos un curso, junto con el título del curso que aprobaron.
| name         | email                             | title                  |
| ------------ | --------------------------------- | ---------------------- |
| Emily Watson | emily.watson@student.edutrack.com | Intro to Python        |
| Klaus Weber  | klaus.weber@student.edutrack.com  | Intro to Python        |
| Klaus Weber  | klaus.weber@student.edutrack.com  | Data Analysis with SQL |
| Marco Rossi  | marco.rossi@student.edutrack.com  | Advanced Python        |
| Marco Rossi  | marco.rossi@student.edutrack.com  | Intro to Python        |
| Priya Sharma | priya.sharma@student.edutrack.com | Digital Marketing 101  |

## Q3.Calcular el porcentaje de completado medio por instructor, ordenado de mayor a menor.
| instructor_name    | average_completion     |
| ------------------ | ---------------------- |
| Marta López        | 66.1428571428571429    |
| Carlos Vega        | 40.0000000000000000    |
| Lucia Prades       | 36.5000000000000000    |
| Pending assignment | 0.00000000000000000000 |


## Q4. Encontrar todos los estudiantes que no tienen ninguna inscripción
| id | name          | email                              |
| -- | ------------- | ---------------------------------- |
| 8  | Giulia Romano | giulia.romano@student.edutrack.com |

-- Q5. Encontrar todos los cursos que no tienen ninguna inscripción
| id | title           | category  |
| -- | --------------- | --------- |
| 7  | Email Campaigns | Marketing |


## Q6. Contar cuántos cursos tiene inscrito cada estudiante y mostrar solo los inscritos en más de un curso
| id | name            | total_courses |
| -- | --------------- | ------------- |
| 3  | Lucia Fernandes | 3             |
| 1  | Emily Watson    | 3             |
| 4  | Marco Rossi     | 2             |
| 2  | Klaus Weber     | 2             |
| 7  | Priya Sharma    | 2             |
| 6  | Pierre Dubois   | 2             |
| 5  | Yuki Nakamura   | 2             |


## Q7. Calcular los ingresos totales por categoría usando el precio mensual de courses
| category    | total_revenue |
| ----------- | ------------- |
| Programming | 409.93        |
| Data        | 179.97        |
| Design      | 169.96        |
| Marketing   | 59.98         |


## Q8. Mostrar cada instructor junto con el número de estudiantes inscritos en sus cursos
| instructor_name    | total_students |
| ------------------ | -------------- |
| Marta López        | 7              |
| Carlos Vega        | 5              |
| Pending assignment | 2              |
| Lucia Prades       | 2              |


## Q9. Comprobar si hay inscripciones con student_id sin un estudiante existente (registros huérfanos)
| instructor_name    | total_students |
| ------------------ | -------------- |
| Marta López        | 7              |
| Carlos Vega        | 5              |
| Pending assignment | 2              |
| Lucia Prades       | 2              |


 ## Q10. Comprobar si hay inscripciones cuyo course_id no corresponde a ningún curso existente (registros huérfanos)
| instructor_name    | total_students |
| ------------------ | -------------- |
| Marta López        | 7              |
| Carlos Vega        | 5              |
| Pending assignment | 2              |
| Lucia Prades       | 2              |

