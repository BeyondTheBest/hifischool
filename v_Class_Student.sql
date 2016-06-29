create or replace view v_Class_Student
as
select s.student_No,s.Student_Name,v.Class_Id,c.Class_Name,c.Class_No,c.Section_Name,c.Section_Teacher,c.Section_Incharge,c.Section_Strength,c.Room_No,c.Year,c.Last_Updated_By,c.Last_Updation_Date
from student s,class c,v_student_class v
where s.Student_No=v.Student_No
and
	c.Class_Id=v.class_Id;