create or replace view v_class_Details
as
select s.Student_No,s.Student_Name,c.Class_Name,c.Section_Name,c.Section_Teacher,c.Section_Incharge,c.Room_No,c.Year,t.Term_Name,t.Term_Duration,t.Term_Start_Date,t.Term_End_Date
from student s,class c,v_Student_Class v,terms t
where s.Student_No=v.Student_No
	and
	v.Class_Id=c.Class_Id
	and
	v.Term_Id=t.Term_Id;