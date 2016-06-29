create view v_Fee_Discount
as
select f.Fee_Id,f.Discount_General,f.Discount_If_Referral,f.Discount_If_Exam_Qualified,f.Discount_If_Topper,f.Discount_Special_Case,f.Discount_If_Handicapped,f.Discount_If_Staff_Referral,p.Fee_Amount
from fee_master f,term_wise_fee_payments p
where f.Fee_Id=p.Fee_Id;

create or replace function Func_Fee_Discount(Fee_Amount number,Fee$Id varchar2)return number
is
Discount number;
D v_Fee_Discount%rowtype;
begin
select * into D from v_Fee_Discount
	where Fee_Id=Fee$Id;
Discount:= NVL2(D.Discount_General,10/100,0)+NVL2(D.Discount_If_Referral,10/100,0)+NVL2(D.Discount_If_Exam_Qualified,10/100,0)+NVL2(D.Discount_If_Topper,10/100,0)+NVL2(D.Discount_Special_Case,10/100,0)+NVL2(D.Discount_If_Handicapped,10/100,0)+NVL2(D.Discount_If_Staff_Referral,10/100,0);
return discount;
end;


				(D.Fee_Amount)-((D.Fee_Amount)*(

create or replace function Func_fee_Discount(Fee$Id varchar2)return number
is
discount number;
D fee_master%rowtype;
begin
select * into D from fee_master
	where Fee_Id=Fee$Id;
discount:= NVL2(D.Discount_General,10/100,0)+NVL2(D.Discount_If_Referral,10/100,0)+NVL2(D.Discount_If_Exam_Qualified,10/100,0)+NVL2(D.Discount_If_Topper,10/100,0)+NVL2(D.Discount_Special_Case,10/100,0)+NVL2(D.Discount_If_Handicapped,10/100,0)+NVL2(D.Discount_If_Staff_Referral,10/100,0);
return discount;
end;
