create table class_wise_fee(CWF_Id varchar2(20) constraints cwf_pk primary key,
				Class_Is varchar2(20) references class(Class_Id),
				Fee_Id varchar(20) references fee_master(Fee_Id),
				Fee_Per_Year number(11,2),
				Created_By varchar2(50),
				Creation_Date date,
				Last_Updated_by varchar2(50),
				Last_Updation_Date date);