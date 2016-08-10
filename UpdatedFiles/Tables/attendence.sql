create table attendence(Attendence_Id varchar2(20) constraints attendence_pk primary key,
			For_Year number(5) constraints attendence_check1 check(For_Year between 2000 and 2030),
			For_Month number(2) constraints attendence_check2 check(For_Month between 1 and 12),
			Created_By varchar2(50),
			Creation_Date date,
			Last_Updated_by varchar2(50),
			Last_Updation_Date date);