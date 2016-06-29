create table class_wise_fee(CWF_Id varchar2(20) primary key,
				Class_Is varchar2(20) references class(Class_Id),
				Fee_Id varchar(20) references fee_master(Fee_Id),
				Fee_Per_Year number(9,2),
				Created_By varchar2(20),
				Creation_Date date,
				Last_Updated_by varchar2(20),
				Last_Updation_Date date);