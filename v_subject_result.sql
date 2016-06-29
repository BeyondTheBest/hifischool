create or replace view v_subject_result
as
select s.Student_No,s.Student_Name,c.Class_Name,t.Term_Name,sb.Subject_Name,m.Subject_Marks_Secured,sb.Subject_Max_Marks,m.Answer_Sheet_Corrected_by
from student s,class c,terms t,subjects sb,marks m
where s.Student_No=m.Student_No
	and
	c.Class_Id=m.Class_Id
	and
	m.Term_Id=t.Term_Id
	and
	sb.Subject_Id=m.Subject_Id;
