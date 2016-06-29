create view v_results
as
select s.Student_No,s.Student_Name,sb.Subject_Id,sb.Subject_Name,sb.Subject_Max_Marks,m.Subject_Marks_Secured,r.Result
from student s,subjects sb,marks m,term_result r
where s.Student_No=m.Student_No
	and
	sb.Subject_Id=m.Subject_Id
	and
	m.Student_No=r.Student_No;

create or replace procedure Proc_getStudentResults(Student_Id varchar2,result out sys_refcursor)
is
cursor c_res is select * from v_results where Student_No=Student_Id;
--result v_results%rowtype;
fet_rec v_results%rowtype;
--Stu_Id varchar2(20);
--Sub_id varchar2(20);
begin
open c_res;
loop
fetch c_res into fet_rec;
--select c_rec.Student_No, into stu_Id,sub_Id
result:=func_Marks_Calc(c_rec.Student_No,c_rec.Subject_Id);
if result:='