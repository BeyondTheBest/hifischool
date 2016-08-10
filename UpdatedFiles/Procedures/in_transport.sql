create or replace procedure in_transport(Route_Name varchar2,
					Route_Planned_Month_Year varchar2,
					Route_Coordinator varchar2,
					Route_Grievance_Officer varchar2,
					Route_Grievance_Ph_No number,
					Route_Vehicle_Number_List Varchar2,
					Route_Distance number,
					Route_TAT_Estimation varchar2,
					Route_TAT_Estimation_By varchar2,
					Route_Start_Point varchar2,
					Route_End_Point varchar2,
					Route_Prime_Driver varchar2)
is
begin
insert into transport values('Route_'||Transport_Id.nextval,
				Route_Name,
				Route_Planned_Month_Year,
				add_months(sysdate,6),
				Route_Coordinator,
				Route_Grievance_Officer,
				Route_Grievance_Ph_No,
				Vehicle_List(Route_Vehicle_Number_List),
				Route_Distance,
				Route_TAT_Estimation,
				Route_TAT_Estimation_By,
				Route_Start_Point,	
				Route_End_Point,
				Route_Prime_Driver,
				user,
				sysdate,
				user,
				sysdate);
commit;
end;
/
