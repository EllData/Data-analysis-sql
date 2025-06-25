select emp.*, length(manager_id)from hr.employees emp ;

SELECT job_id, max_salary from hr.JOBS
SELECT job_id, max(salary) from hr.employees
group by job_id;
SELECT department_id from hr.DEPARTMENTS
union
SELECT department_id from hr.employees;
SELECT department_id from hr.DEPARTMENTS
minus
SELECT department_id from hr.employees;
SELECT department_id from hr.DEPARTMENTS
intersect
SELECT department_id from hr.employees;
SELECT e.employee_id, e.job_id, e.department_id
FROM hr.employees e
WHERE e.department_id = 90

UNION

SELECT j.employee_id, j.job_id, j.department_id
FROM hr.job_history j
WHERE j.department_id = 90;
SELECT FIRST_NAME, SALARY from hr.EMPLOYEES 
where SALARY > (select avg(salary) from hr.employees);
SELECT phone_number, instr(phone_number, '.',1,2) from hr.EMPLOYEES
