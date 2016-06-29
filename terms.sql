create table terms(	Term_Id varchar2(5) primary key,
			Term_Name varchar2(20),
			Term_Duration number(3),
			Term_Start_Date date,
			Term_End_date date,
			Created_By varchar2(20),
			Creation_Date date,
			Last_Updated_By varchar2(20),
			Last_Updation_Date date);