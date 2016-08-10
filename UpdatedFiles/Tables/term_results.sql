create table term_result(TWR_Id varchar2(20) primary key,
			Term_Id varchar2(20) references terms(Term_Id),
			Student_No varchar2(20) references student(Student_No),
			Result char(4) check(Result in('pass','fail','PASS','FAIL','Fail','Pass')),
			Result_Given_By varchar2(20) references teachers(Teacher_Id),
			Created_By varchar2(50),
			Creation_Date date,
			Last_Updated_By varchar2(50),
			Last_Updation_Date date);
create sequence seq_TWR_Id
start with 1000
increment by 1;

create or replace trigger in_term_results
after insert or update
on marks
declare
cursor c_stu is select * from student;
begin
for r in c_stu
loop
	declare
	cursor c1_res is select * from marks where Student_No=r.Student_No;
	max_marks number;
	result1 marks%rowtype;
	pass varchar2(10);
	count# number;
	fail# number;
	begin
	count#:=0;
	fail#:=0;
	open c1_res;
	loop
	fetch c1_res into result1;
	exit when c1_res%notfound;
	select subject_max_marks into max_marks from subjects where subject_Id=result1.subject_Id;
	if result1.Subject_Marks_Secured>=(35/max_marks) then
		count#:=count#+1;
	else
		fail#:=fail#+1;
	end if;
	end loop;
	if count#=6 then
		pass:='PASS';
	else
		pass:='FAIL';
	end if;
	insert into term_result values('HIFI_TWR'||seq_TWR_Id.nextval,result1.Term_Id,result1.Student_No,pass,user,user,sysdate,user,sysdate);
	commit;
	END;
end loop;
end;
/

