create table fee_master(Fee_Id varchar2(20) constraints pk_fee_master primary key,
			Fee_Description varchar2(50) not null,
			Fee_For_Year varchar2(10),
			Fee_Validity_Start_Date date,
			Fee_validity_End_Date date,
			Discount_General number(9,2),
			Discount_If_Referral number(9,2),
			Discount_If_Exam_Qualified number(9,2),
			Discount_If_Topper number(9,2),
			Discount_special_Case number(9,2),
			Discount_If_Handicapped number(9,2),
			Discount_If_Staff_Referral number(9,2),
			Created_By varchar2(50),
			Creation_Date date,
			Last_Updated_By varchar2(50),
			Last_Updation_Date date);