create or replace procedure in_extra_curr_act_master(Extra_Curr_Act_Desc varchar2,Kits_Available varchar2,Kits_Used varchar2,Kits_Refilled_By varchar2,Kits_Checked_By varchar2,Kits_Checked_Date date,If_Donated_By varchar2,If_Donation_Date date)
is
begin
insert into extra_curr_act_master values('ECA'||ECA_Id.nextval,Extra_Curr_Act_Desc,Kits_Available,Kits_Used,Kits_Refilled_By,Kits_Checked_By,Kits_Checked_Date,If_Donated_By,If_Donation_Date,user,sysdate,user,sysdate);
commit;
end;
/
