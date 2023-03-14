SELECT emp_no, first_name, last_name, gender
FROM employees
WHERE emp_no in (
					SELECT emp_no
					FROM salaries
					GROUP BY emp_no 
					HAVING AVG(salary)>=70000
					);	
					
					



SELECT *, NOW()
FROM titles
WHERE emp_no=10009
AND to_date >= NOW();




SELECT emp_no, last_name
FROM employees 
WHERE emp_no IN (
						SELECT emp_no
						FROM titles
						WHERE title='senior engineer'
						AND to_date >= NOW()
						);







