create or replace procedure in_Term_Wise_Fee_Payments(Term_Id varchar2,Fee_Id varchar2,Term_Fee_To_Be_Paid_Before varchar2,Student_NO varchar2,Fee_Amount number,Fee_Paid_Date date,Fee_penalty number,Fee_Paid_Mode varchar2,Fee_Paid_By varchar2,Fee_Received_By varchar2)
is
begin
insert into term_wise_fee_payments values('TWFP'||TWFP_ID.nextval,Term_Id,Fee_Id,Term_Fee_To_Be_Paid_Before,Student_NO,Fee_Amount,Fee_Paid_Date,Fee_penalty,Fee_Paid_Mode,Fee_Paid_By,Fee_Received_By,'HIFI_Fee'||fee_receipt.nextval,user,sysdate,user,sysdate);
commit;
end;
/