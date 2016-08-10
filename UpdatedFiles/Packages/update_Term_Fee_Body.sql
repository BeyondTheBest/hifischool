create or replace package body update_Term_Fee
as
procedure Term_Fee_Paid_Before(Student_Id varchar2,Status term_wise_fee_payments.Term_Fee_To_Be_Paid_Before%type)
is
begin
update term_wise_fee_payments
set Term_Fee_To_Be_Paid_Before=status,
	Last_Updated_By=user,
	Last_Updation_Date=sysdate
where Student_No=Student_Id;
commit;
end Term_Fee_Paid_Before;

procedure Fee_Amount(Student_Id varchar2,Amount term_wise_fee_payments.Fee_Amount%type)
is
begin
update term_wise_fee_payments
set Fee_Amount=Amount,
	Last_Updated_By=user,
	Last_Updation_Date=sysdate
where Student_No=Student_Id;
commit;
end Fee_Amount;

procedure Fee_Paid_Date(Student_Id varchar2,paid_Date date)
is
begin
update term_wise_fee_payments
set Fee_Paid_Date=paid_Date,
	Last_Updated_By=user,
	Last_Updation_Date=sysdate
where Student_No=Student_Id;
commit;
end Fee_Paid_Date;

procedure Fee_Penalty(Student_Id varchar2,Penalty term_wise_fee_payments.fee_Penalty%type)
is
begin
update term_wise_fee_payments
set Fee_Penalty=Penalty,
	Last_Updated_By=user,
	Last_Updation_Date=sysdate
where Student_No=Student_Id;
commit;
end Fee_Penalty;

procedure Fee_Paid_Mode(Student_Id varchar2,Paid_Mode term_wise_fee_payments.Fee_Paid_Mode%type)
is
begin
update term_wise_fee_payments
set Fee_Paid_Mode=Paid_Mode,
	Last_Updated_By=user,
	Last_Updation_Date=sysdate
where Student_No=Student_Id;
commit;
end Fee_Paid_Mode;

procedure Fee_Paid_By(Student_Id varchar2,Paid_By term_wise_fee_payments.Fee_Paid_By%type)
is
begin
update term_wise_fee_payments
set Fee_Paid_by=Paid_By,
	Last_Updated_By=user,
	Last_Updation_Date=sysdate
where Student_No=Student_Id;
commit;
end Fee_Paid_By;

procedure Fee_Received_By(Student_Id varchar2,Received_By term_wise_fee_payments.Fee_Received_By%type)
is
begin
update term_wise_fee_payments
set Fee_Received_by=Received_By,
	Last_Updated_By=user,
	Last_Updation_Date=sysdate
where Student_No=Student_Id;
commit;
end Fee_Received_By;

procedure Fee_Receipt_Id(Student_Id varchar2,Receipt_Id term_wise_fee_payments.Fee_Receipt_Id%type)
is
begin
update term_wise_fee_payments
set Fee_Receipt_Id=Receipt_Id,
	Last_Updated_By=user,
	Last_Updation_Date=sysdate
where Student_No=Student_Id;
commit;
end Fee_Receipt_Id;
end Update_Term_Fee;
/