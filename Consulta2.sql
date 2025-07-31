SELECT e.emp_no AS IDEMPLEADO,
e.first_name AS NOMBRE,
e.last_name AS APELLIDO,
MAX(s.salary) AS MAYORSALARIO

FROM employees e

JOIN salaries s ON e.emp_no = s.emp_no

GROUP BY e.emp_no, e.first_name

LIMIT 7;