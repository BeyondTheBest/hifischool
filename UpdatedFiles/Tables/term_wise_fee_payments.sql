create table term_wise_fee_payments(TWFP varchar2(20) constraints TWFP_pk primary key,
					Term_Id varchar2(20) references terms(Term_Id),
					Fee_Id varchar2(20) references fee_master(Fee_Id),
					Term_Fee_To_Be_Paid_Before varchar2(5) check(Term_Fee_To_Be_Paid_Before in('yes','no','YES','NO','No','Yes')),
					Student_NO varchar2(20) references student(Student_No),
					Fee_Amount number(11,2),
					Fee_Paid_Date date,
					Fee_penalty number(11,2),
					Fee_Paid_Mode varchar2(30),
					Fee_Paid_By varchar2(30),
					Fee_Received_By varchar2(20) references staff(Staff_Id),
					Fee_Receipt_Id varchar(20),
					Created_By varchar2(30),
					Creation_Date date,
					Last_Updated_By varchar2(30),
					Last_Updation_Date date);