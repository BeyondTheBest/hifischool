create table library_payments(Lib_Payment_Id varchar2(20) constraints library_payment_pk primary key,
				Library_Id varchar2(20) references library_master(Library_Id),
				LIOD_Id varchar2(20) references library_in_out_details(LIOD_Id),
				Library_Fee_Amount number(11,2),
				Fee_To_Be_Paid_Before varchar2(20),
				Student_No varchar2(20) references student(Student_No),
				Fee_Amount number(11,2),
				Fee_Paid_Date date,
				Fee_Penalty number(11,2),
				Fee_Paid_Mode varchar2(50),
				Fee_Paid_By varchar2(50),
				Fee_Received_By varchar2(20) references staff(Staff_Id),
				Fee_Receipt_Id varchar2(20),
				Created_By varchar2(50),
				Creation_Date date,
				Last_Updated_by varchar2(50),
				Last_Updation_Date date);
