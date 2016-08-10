create or replace procedure in_class_wise_fee(class_id varchar2,Fee_Id varchar2,Fee_Per_Year number)
is
begin
insert into class_wise_fee values('CWF'||sq_CWF_ID.nextval,Class_Id,Fee_Id,Fee_Per_Year,user,sysdate,user,sysdate);
commit;
end;
/