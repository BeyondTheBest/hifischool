create or replace procedure proc_getStdudent_Results(Student_Id varchar2,results out v_subject_result%rowtype)
is
cursor c1_res is select * from v_subject_result where Student_No=Student_Id;
pass varchar2(10);
count# number;
marks number;
tot_Marks number;
percentage integer;
begin
count#:=0;
marks:=0;
tot_Marks:=0;
open c1_res;
loop
fetch c1_res into results;
exit when c1_res%notfound;
if results.Subject_Marks_Secured>=(35/results.Subject_Max_Marks) then
	pass:= 'PASS';
	count#:=count#+1;
	marks:=marks+results.Subject_Marks_Secured;
	tot_Marks:=tot_Marks+results.Subject_Max_Marks;
else
	pass:='FAIL';
end if;
dbms_output.put_line(results.Student_No||chr(10)||results.Student_Name||chr(10)||results.Class_Name||chr(10)||results.Term_Name||chr(10)||results.Subject_Name||chr(10)||results.Subject_Marks_Secured||chr(10)||results.Subject_Max_Marks||chr(10)||pass||chr(10)||results.Answer_Sheet_Corrected_by||chr(10));
end loop;
if count#=6 then
	percentage:=(marks/tot_Marks)*100;
	if percentage>=70 then
	dbms_output.put_line('Result Status: Passed with distinction'||chr(10)||'Secured with'||percentage||'%');
	elsif percentage<70 or percentage>=60 then
	dbms_output.put_line('Result Status: Passed In First Class'||chr(10)||'Secured with'||percentage||'%');
	else
	dbms_output.put_line('Result Status: Passed with Secon Class'||chr(10)||'Secured with'||percentage||'%');
	end if;
else
dbms_output.put_line('Result Status: FAILLED'||chr(10)||'Secured with'||percentage||'%');
end if;
end;
/






/*---Execution Process--
declare
Student_Id VARCHAR2(20);
result v_subject_result%rowtype;
begin
Student_Id:='&Student_No';
proc_getStdudent_Results(Student_Id,result);
end;
/
*/