create table fee_master(Fee_Id varchar2(10) primary key,
			Fee_Description varchar2(20) not null,
			Fee_For_Year number(1) check(Fee_For_Year between 1 and 4),
			Fee_Validity_Start_Date date,
			Fee_validity_End_Date date,
			Discount_General number(5,2),
			Discount_If_Referral number(5,2),
			Discount_If_Exam_Qualified number(5,2),
			Discount_If_Topper number(5,2),
			Discount_special_Case number(5,2),
			Discount_If_Handicapped number(5,2),
			Discount_If_Staff_Referral number(5,2),
			Created_By varchar2(20),
			Creation_Date date,
			Last_Updated_By varchar2(20),
			Last_Updation_Date date);