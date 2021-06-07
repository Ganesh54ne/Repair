select insert_customer('ass','ass','heisenberg@gmail.com','abc abc',1212121,)
select insert_employee('abc','xsa asda',3434,2323,'abc','walter_white@gmail.com')
 
call all_employee()
call all_sales();
call all_repair()
call cname_customer(42);
call totalsales_date_sales('2018-10-19');
call rname_repair();

create procedure cname_customer(in var1 int)
	begin 
	 select cname from registered_customer where cid=var1;
	end

call cname_customer(42);



 create procedure all_sales()
 begin 
 	select * from sales;
 end

call all_sales();


 create procedure totalsales_date_sales(in var1 varchar(30))
 begin 
 	select total_sales from sales where date1=var1;
 end
 call totalsales_date_sales('2018-10-19');
  

 create procedure rname_repair()
 	begin
 		select rname from repair_docs;
 	end
 call rname_repair();

create procedure all_repair()
 	begin
 		select *  from repair_docs;
	 	end
	call all_repair()
 
 create procedure all_employee()
 	begin
 		select *  from employee;
	end
	call all_employee()
 
create function insert_employee(ename1 varchar(20), eaddress1 varchar(50), esalary1 int, econtact1 varchar(20), epassword1 varchar(20), email1 varchar(50))
	returns int
	DETERMINISTIC
	READS SQL DATA 
 	begin
 		insert into employee (ename,eaddress,esalary,econtact,current_job_count,epassword,eemail) values (ename1,eaddress1,esalary1,econtact1,0,epassword1,email1);
 		return 1;
 	end

select insert_employee('abc','xsa asda',3434,2323,'abc','mandar@gmail.com')
 
 
create function insert_customer(cname1 varchar(20), password1 varchar(20), email1 varchar(50), caddress1 varchar(200), contact1 varchar(20))
	returns int
	DETERMINISTIC
	READS SQL DATA 
 	begin
 		insert into registered_customer(cname,password,email,caddress,ccontact,streak)values (cname1,password1,email1,caddress1,contact1,0);
 		return 1;
 	end

select insert_customer('ass','ass','heisenberg@gmail.com','abc abc',1212121,)
select insert_customer('ass','ass','heisenberg@gmail.com','abc abc',1212121,)
