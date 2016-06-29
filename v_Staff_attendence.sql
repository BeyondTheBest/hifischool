create or replace view v_staff_attendence
as
select s.staff_Id,s.staff_Name,a.Year,a.Month,a.Day,a.Present,a.If_Leave_Approved_By,a.Recorded_By,a.Created_By,a.Creation_Date,a.Last_Updated_By,a.Last_Updation_Date
from staff s,Staff_Attendence a
where s.Staff_Id=a.Staff_Id;