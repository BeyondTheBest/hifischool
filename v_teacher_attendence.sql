create or replace view v_teacher_attendence
as
select t.teacher_Id,t.Teacher_Name,a.Year,a.Month,a.Day,a.Present,a.If_Leave_Approved_By,a.Recorded_By,a.Created_By,a.Creation_Date,a.Last_Updated_By,a.Last_Updation_Date
from Teachers t,Teacher_Attendence a
where t.Teacher_Id=a.Teacher_Id;