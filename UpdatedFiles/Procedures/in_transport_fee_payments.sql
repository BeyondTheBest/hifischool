create or replace procedure in_transport_fee_payments(TR_Enroll_Roaster_Id varchar2,Transport_Route_Id varchar2,Transport_Fee_Amount number,Fee_To_Be_Paid_Before varchar2,Term_Id varchar2,Student_No varchar2,Fee_Amount number,Fee_Paid_Date date,Fee_Penalty number,Fee_Paid_Mode varchar2,Fee_Paid_By varchar2,Fee_Received_By varchar2)
is
begin
insert into transport_fee_payments values('Tr_fee'||tr_fee_id.nextval,TR_Enroll_Roaster_Id,Transport_Route_Id,Transport_Fee_Amount,Fee_To_Be_Paid_Before,Term_Id,Student_No,Fee_Amount,Fee_Paid_Date,Fee_Penalty,Fee_Paid_Mode,Fee_Paid_By,Fee_Received_By,'HIFI_fee'||fee_receipt.nextval,user,sysdate,user,sysdate);
commit;
end;
/
