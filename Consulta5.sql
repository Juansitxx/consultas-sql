SELECT e.emp_no AS IDEMPLEADO,
e.first_name AS NOMBRE,
e.last_name AS APELLIDO,
e.birth_date AS FECHACUMPLEAÑOS, 
e.hire_date AS FECHACONTRATO, 
t.title AS CARGOACTUAL, 
d.dept_name AS DEPARTAMENTO, 
s.salary AS SALARIO


FROM employees e

JOIN titles t ON e.emp_no = t.emp_no AND t.to_date = 
( SELECT MAX(to_date) FROM titles
WHERE emp_no = e.emp_no)
JOIN dept_emp de ON e.emp_no = de.emp_no AND de.to_date = 

(SELECT MAX(to_date) FROM dept_emp WHERE emp_no = e.emp_no)

JOIN departments d ON de.dept_no = d.dept_no 
JOIN salaries s ON e.emp_no = s.emp_no AND s.to_date = 
(SELECT MAX(to_date) FROM salaries WHERE emp_no = e.emp_no)

ORDER BY s.salary DESC
