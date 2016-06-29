create or replace view v_class_Attendence
as
select distinct c.Class_Id,c.Class_Name,c.Section_Name,s.Student_No,s.Student_Name,a.Day,a.Present,a.Recorded_By,a.Created_By,a.Creation_Date,a.Last_Updated_By,a.Last_Updation_Date
from class c,student s,v_Student_Class v,section_wise_attendence a
where c.Class_Id=v.Class_Id
	and
	s.Student_No=v.Student_No
	and
	c.Class_Id=a.Class_Id
	and
	s.Student_No=a.Student_No;