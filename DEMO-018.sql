alter table Employees
modify emp_id int not null auto_increment primary key,
modify salary decimal(12,2) not null default 0,
add employment_type ENUM('FULL_TIME', 'PART_TIME', 'INTERN') not null default 'FULL_TIME',
modify status ENUM('ACTIVE', 'INACTIVE', 'RESIGNED') not null default 'ACTIVE',
add hire_date date,
drop temp_info