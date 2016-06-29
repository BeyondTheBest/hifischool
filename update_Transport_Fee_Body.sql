create or replace package body update_Transport_Fee
as
procedure Transport_Fee_Amount(Student_Id varchar2,Amount transport_fee_payments.Transport_Fee_Amount%type)
is
begin
update transport_fee_payments
set Transport_Fee_Amount=Amount,Last_Updated_By=user,Last_Updation_Date=sysdate
where Student_No=Student_Id;
commit;
end Transport_Fee_Amount;

procedure Transport_Fee_Paid_Before(Student_Id varchar2,Status varchar2)
is
begin
update transport_fee_payments
set Fee_To_Be_Paid_Before=status,
	Last_Updated_By=user,
	Last_Updation_Date=sysdate
where Student_No=Student_Id;
commit;
end Transport_Fee_Paid_Before;

procedure Fee_Amount(Student_Id varchar2,Amount transport_fee_payments.Fee_Amount%type)
is
begin
update transport_fee_payments
set Fee_Amount=Amount,
	Last_Updated_By=user,
	Last_Updation_Date=sysdate
where Student_No=Student_Id;
commit;
end Fee_Amount;

procedure Fee_Paid_Date(Student_Id varchar2,paid_Date date)
is
begin
update transport_fee_payments
set Fee_Paid_Date=paid_Date,
	Last_Updated_By=user,
	Last_Updation_Date=sysdate
where Student_No=Student_Id;
commit;
end Fee_Paid_Date;

procedure Fee_Penalty(Student_Id varchar2,Penalty transport_fee_payments.fee_Penalty%type)
is
begin
update transport_fee_payments
set Fee_Penalty=Penalty,
	Last_Updated_By=user,
	Last_Updation_Date=sysdate
where Student_No=Student_Id;
commit;
end Fee_Penalty;

procedure Fee_Paid_Mode(Student_Id varchar2,Paid_Mode transport_fee_payments.Fee_Paid_Mode%type)
is
begin
update transport_fee_payments
set Fee_Paid_Mode=Paid_Mode,
	Last_Updated_By=user,
	Last_Updation_Date=sysdate
where Student_No=Student_Id;
commit;
end Fee_Paid_Mode;

procedure Fee_Paid_By(Student_Id varchar2,Paid_By transport_fee_payments.Fee_Paid_By%type)
is
begin
update transport_fee_payments
set Fee_Paid_by=Paid_By,
	Last_Updated_By=user,
	Last_Updation_Date=sysdate
where Student_No=Student_Id;
commit;
end Fee_Paid_By;

procedure Fee_Received_By(Student_Id varchar2,Received_By transport_fee_payments.Fee_Received_By%type)
is
begin
update transport_fee_payments
set Fee_Received_by=Received_By,
	Last_Updated_By=user,
	Last_Updation_Date=sysdate
where Student_No=Student_Id;
commit;
end Fee_Received_By;

procedure Fee_Receipt_Id(Student_Id varchar2,Receipt_Id transport_fee_payments.Fee_Receipt_Id%type)
is
begin
update transport_fee_payments
set Fee_Receipt_Id=Receipt_Id,
	Last_Updated_By=user,
	Last_Updation_Date=sysdate
where Student_No=Student_Id;
commit;
end Fee_Receipt_Id;
end;
/