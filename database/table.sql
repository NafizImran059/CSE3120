create table Student {
  id 		number(7) 		PRIMARY KEY,
  name 		varchar2(30),
  roll 		varchar2(10),
  dept_id 	number(7) 		REFERENCES Department(id),
  result 	number(3, 2)
};

create table Department {
  id 		number(7) 		PRIMARY KEY,
  name 		varchar2(30),
  code 		varchar(4)
};
