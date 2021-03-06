create table sports_fee_payments(Sports_Fee_Payment_Id varchar2(50) constraints SPF_pk primary key,
				Term_Id varchar2(20) references terms(Term_Id),
				Sports_Id varchar2(20) references sports_master(Sports_Id),
				Sports_Fee_Amount number(11,2),
				Fee_To_Be_Paid_Before varchar2(20),
				Student_No varchar2(20) references student(Student_No),
				Fee_Amount number(11,2),
				Fee_Paid_Date date,
				Fee_Penalty number(11,2),
				Fee_Paid_Mode varchar2(30),
				Fee_Paid_By varchar2(50),
				Fee_Received_By varchar2(20) references staff(Staff_Id) not null,
				Fee_Receipt_Id varchar2(20),
				Created_By varchar2(50),
				Creation_Date date,
				Last_Updated_By varchar(50),
				Last_Updation_Date date);