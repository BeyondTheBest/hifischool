create or replace view v_Section_Attendence
as
select s.Student_No,s.Student_Name,swa.day,swa.Present,swa.recorded_By,swa.Last_Updated_By,swa.Last_Updation_Date
from  student s,section_wise_attendence swa
where s.Student_No=swa.Student_No;