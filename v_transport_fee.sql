create or replace view v_transport_fee
as
select s.Student_No,s.Student_Name,
m.Term_Name,m.Term_Duration,m.Term_Start_Date,m.Term_End_Date,
t.Route_Name,t.Route_Planned_Month_Year,t.Route_Valid_Till,t.Route_Start_Point,t.Route_End_Point,
f.Transport_Fee_Amount,f.Fee_To_Be_Paid_Before,f.Fee_Amount,f.Fee_Paid_Date,f.Fee_Penalty,f.Fee_Paid_Mode,f.Fee_Paid_By,f.Fee_Received_By,f.Fee_Receipt_Id
from student s,terms m,transport t,transport_fee_payments f
where s.Student_No=f.Student_No
	and
	t.Transport_Route_Id=f.Transport_Route_Id
	and
	f.Term_Id=m.Term_Id;