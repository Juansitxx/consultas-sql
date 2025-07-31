SELECT e.emp_no AS IDEMPLEADO,
e.first_name AS NOMBRE,
e.last_name AS APELLIDO,
AVG(s.salary) AS PROMEDIOSALARIO

FROM employees e

JOIN salaries s ON e.emp_no = s.emp_no

WHERE e.emp_no = 10056

GROUP BY e.emp_no, e.first_name