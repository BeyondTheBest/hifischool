create view v_transport
as
select r.Student_No,t.Route_Id,t.Route_Name,t.Route_Planned_Month_Year,t.Route_Valid_Till,t.Route_Coordinator,t.Route_Vehicle_Number_List,t.Route_Distance,t.Route_Start_Point,t.Route_End_Point,t.Route_Prime_Driver,
r.Enrollment_Date,r.Enrollment_Start_Date,r.Enrollment_End_Date
from transport_enrollments_roaster r,transport t
where r.Transport_Route_Id=t.Transport_Route_Id;