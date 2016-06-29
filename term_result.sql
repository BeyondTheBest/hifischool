create table term_result(TWR_Id varchar2(10) primary key,
			Term_Id varchar2(10) references terms(Term_Id),
			Student_No varchar2(10) references student(Student_No),
			Result char(4) check(Result in('pass','fail')),
			Result_Given_By varchar2(20) references teachers(Teacher_Id),
			Created_By varchar2(20),
			Creation_Date date,
			Last_Updated_By varchar2(20),
			Last_Updation_Date date);