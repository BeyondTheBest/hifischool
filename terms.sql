     create table terms(Term_Id varchar2(20) constraints pk_terms primary key,
			Term_Name varchar2(30),
			Term_Duration number(10),
			Term_Start_Date date,
			Term_End_date date,
			Created_By varchar2(50),
			Creation_Date date,
			Last_Updated_By varchar2(50),
			Last_Updation_Date date);
