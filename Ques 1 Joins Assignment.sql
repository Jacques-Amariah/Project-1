/*1st*/
use cdac;
show tables;
select * from emp;
select* from dept;
select emp.empname,dept.dname from emp cross join dept;

/*2nd*/
use cdac3;
select * from employees;
select * from departments;
select employees.first_name,employees.last_name,departments.department_id,departments.department_name from employees,departments;

/*3rd*/
select e.first_name,e.last_name,d.department_name from employees e , departments d where department_name='IT';

/*4th*/
select e.first_name,e.last_name,d.department_name from employees e,departments d;

/*5th*/
SELECT e.first_name, e.last_name, d.department_name FROM employees e Left JOIN departments d ON e.department_id = d.department_id WHERE d.department_id IS NULL;

/*6th*/
select e.first_name,e.last_name,d.department_name,e.salary from employees e inner join departments d on (e.department_id=d.department_id) ;    

/*7th*/
select e.first_name,e.last_name,e.employee_id,d.department_name from employees e,departments d where d.department_id is not null;

/*8th*/
select e.first_name,e.last_name,d.department_name,e.department_id,d.department_id from employees e right outer join departments d on( e.department_id=d.department_id);

/*9th*/
SELECT e.first_name,e.last_name,e.salary,d.department_id
FROM employees e JOIN departments d ON e.department_id = d.department_id WHERE e.salary = (SELECT MAX(e2.salary)FROM employees e2 WHERE e2.department_id = d.department_id);

/*10th*/
select e.first_name, e.last_name,e.employee_id,d.department_id from employees e join departments d on e.department_id=d.department_id where d.department_id=(select count(e.employee_id) from employees e where e.department_id=d.department_id);    




