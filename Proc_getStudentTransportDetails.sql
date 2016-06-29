create or replace procedure Proc_getSt_TransportDetails(Student_Id varchar2,result out v_transport_Details%rowtype)
is
cursor c_trans is select * from v_transport_Details
where Student_No=Student_Id;
begin
open c_trans;
loop
fetch c_trans into result;
exit when c_trans%notfound;
dbms_output.put_line(result.Student_No||chr(10)||result.Student_Name||chr(10)||result.Route_Name||chr(10)||result.Route_Planned_Month_Year||chr(10)||result.Route_Valid_Till||chr(10)||result.Route_Vehicle_Number_List);
dbms_output.put_line(result.Route_Coordinator||chr(10)||result.Route_Distance||chr(10)||result.Route_Start_Point||chr(10)||result.Route_End_Point);
dbms_output.put_line(result.Route_Prime_Driver||chr(10)||result.Enrollment_Date||chr(10)||result.Enrollment_Start_Date||chr(10)||result.Enrollment_End_Date);
end loop;
close c_trans;
end;
/

/*
declare
Student_Id VARCHAR2(20);
result v_transport_Details%rowtype;
begin
Student_Id:='&Student_No';
Proc_getSt_TransportDetails(Student_Id,result);
end;
