create or replace procedure in_fee_master(Fee_Description varchar2,Fee_For_Year varchar2,
			Fee_Validity_Start_Date date,
			Fee_validity_End_Date date,
			Discount_General number,
			Discount_If_Referral number,
			Discount_If_Exam_Qualified number,
			Discount_If_Topper number,
			Discount_special_Case number,
			Discount_If_Handicapped number,
			Discount_If_Staff_Referral number)
is
begin
insert into fee_master values('fee'||sq_fee_id.nextval,Fee_Description,Fee_For_Year,Fee_Validity_Start_Date,Fee_validity_End_Date,Discount_General,Discount_If_Referral,Discount_If_Exam_Qualified,Discount_If_Topper,Discount_special_Case,Discount_If_Handicapped,Discount_If_Staff_Referral,user,sysdate,user,sysdate);
commit;
end;
/



execute in_fee_master('Tution fee','2016','12-june-2016','15-oct-2016',10,NULL,NULL,NULL,NULL,NULL,NULL);

execute in_fee_master('Tution fee','2016','12-june-2016','15-oct-2016',NULL,10,NULL,NULL,NULL,NULL,NULL);

execute in_fee_master('Tution fee','2016','12-june-2016','15-oct-2016',NULL,NULL,10,NULL,NULL,NULL,NULL);