insert into Course1 values('cpp');
insert into Course1 values('c#');
insert into Course1 values('c');
insert into Course1 values('java');
insert into Course1 values('php');

select * from Course1

insert into Student1 values('pqr',1);
insert into Student1 values('shweta',2);
insert into Student1 values('sonali',3);
insert into Student1 values('pooja',4);

select * from Student1
--course is parent and student is child

--delete from Course1 where courseId=3  --error without cascading
--delete from Student1 where studentID=1; --possible bcoz child 

delete from Course1 where courseId=2; --no error with cascading
select * from Course1
select * from Student1

delete from Course1 where courseId=3

