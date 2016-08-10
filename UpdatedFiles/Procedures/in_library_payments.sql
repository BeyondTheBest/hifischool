create or replace procedure in_library_payments(Library_Id varchar2,LIOD_Id varchar2,Library_Fee_Amount number,Fee_To_Be_Paid_Before varchar2,Student_No varchar2,Fee_Amount number,Fee_Paid_Date date,Fee_Penalty number,Fee_Paid_Mode varchar2,Fee_Paid_By varchar2,Fee_Received_By varchar2)
is
begin
insert into library_payments values('Library_Fee-'||library_payment.nextval,Library_Id,LIOD_Id,Library_Fee_Amount,Fee_To_Be_Paid_Before,Student_No,Fee_Amount,Fee_Paid_Date,Fee_Penalty,Fee_Paid_Mode,Fee_Paid_By,Fee_Received_By,'HIFI_Fee'||fee_receipt.nextval,user,sysdate,user,sysdate);
commit;
end;
/