create or replace procedure in_transport_roaster(Transport_Route_Id varchar2,Student_No varchar2,Enrollment_Date date,Enrollment_Start_Date date,Enrollment_End_Date date)
is
begin
insert into transport_enrollments_roaster values('Tr_Roaster'||tr_roaster_Id.nextval,Transport_Route_Id,Student_No,Enrollment_Date,Enrollment_Start_Date,Enrollment_End_Date,user,sysdate,user,sysdate);
commit;
end;
/