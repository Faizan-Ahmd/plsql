select max(emp_id)+1 into v_number from employees;

select * From employees
order by emp_id desc

insert into employees (emp_name, gender, salary) values ('Sara','F',34445);