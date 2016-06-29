create view v_Attendence
as
select s.Student_No,s.Student_Name,c.Class_Name,c.Section_Name,c.Year,
a.Day,a.Present,a.Recorded_By
from student s,section_wise_attendence a,class c
where s.Student_No=a.Student_No
	and
	a.Class_Id=c.Class_Id;
