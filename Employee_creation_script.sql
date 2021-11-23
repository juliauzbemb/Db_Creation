create table if not exists Division (
	id serial primary key,
	division_title varchar(80) not null unique
	);
	
create table if not exists Employee (
	id serial primary key,
	division_id integer not null references Division(id),
	employee_name varchar(40) not null,
	boss_id integer not null references Employee(id)
);