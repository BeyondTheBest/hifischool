create or replace view v_Sports_details
as
select s.Student_No,s.Student_Name,c.class_Name,t.term_Name,sm.Sports_Description,
sp.Sports_Fee_Amount,sp.Fee_To_Be_Paid_Before,sp.Fee_Amount,sp.Fee_Paid_Date,sp.Fee_Penalty,sp.Fee_Paid_Mode,sp.Fee_Paid_by,
sp.Fee_Received_By,sp.Fee_Receipt_Id
from student s,sports_participation spc,class c,terms t,class_wise_sports cs,sports_master sm,sports_fee_payments sp
where s.Student_No=sp.Student_No
	and
	sp.Sports_Id=sm.Sports_Id
	and
	spc.CWS_Id=cs.cws_Id
	and
	cs.Class_Id=c.Class_Id
	and
	sp.Term_Id=t.Term_Id
	and
	spc.Sports_Id=sp.Sports_Id;