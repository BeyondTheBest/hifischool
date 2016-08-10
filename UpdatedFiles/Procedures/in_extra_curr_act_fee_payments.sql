create or replace procedure in_extra_curr_act_payments(Term_Id varchar2,Sports_Id varchar2,Extra_Curr_Fee_Amount number,Fee_To_Be_Paid_Before varchar2,Student_No varchar2,Fee_Amount number,Fee_Penalty number,Fee_Paid_Mode varchar2,Fee_Paid_By varchar2,Fee_Received_By varchar2)
is
begin
insert into extra_curr_act_payments values('ECAF'||ECAFP_Id.nextval,Term_Id,Sports_Id,Extra_Curr_Fee_Amount,Fee_To_Be_Paid_Before,Student_No,Fee_Amount,sysdate,Fee_Penalty,Fee_Paid_Mode,Fee_Paid_By,Fee_Received_By,'HIFI_Fee'||fee_receipt.nextval,user,sysdate,user,sysdate);
commit;
end;
/