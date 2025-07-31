SELECT  e.emp_no AS idEmpleado, 
e.first_name AS nombreEmpleado, 
e.last_name AS apellidoEmpleado,
e.gender AS generoEmpleado,
e.hire_date AS fechaDeContrato
FROM employees e

WHERE gender = 'F' 

AND hire_date >= '2000-01-01';