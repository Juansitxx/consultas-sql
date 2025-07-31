SELECT e.emp_no AS IDEMPLEADO,
e.first_name AS NOMBRE,
e.last_name AS APELLIDO,
e.gender AS GENERO, 
e.birth_date AS FECHACUMPLEAÑOS, 
d.dept_name AS DEPARTAMENTO,
t.title AS CARGOACTUAL,
s.salary AS SALARIO 

FROM employees e

JOIN dept_manager dm ON e.emp_no = dm.emp_no
JOIN departments d ON dm.dept_no = d.dept_no
JOIN titles t ON e.emp_no = t.emp_no
JOIN salaries s ON e.emp_no = s.emp_no

GROUP BY e.emp_no, e.first_name, e.last_name, e.gender, e.birth_date, d.dept_name, t.title
ORDER BY s.salary DESC;