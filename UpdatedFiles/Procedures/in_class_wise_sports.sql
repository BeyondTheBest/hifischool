create or replace procedure in_class_wise_sports(Sports_Id varchar2,
				Class_Id varchar2,
				Allocation_To_Section_By varchar2,
				Allocation_To_Section_Date date,
				Change_Notes varchar2)
is
begin
insert into class_wise_sports values('CWS'||CWS_Id.nextval,Sports_Id,Class_Id,Allocation_To_Section_By,Allocation_To_Section_Date,Change_Notes,sysdate,user,sysdate,user,sysdate);
commit;
end;
/
