create table extra_curr_act_participation(ECAP_ID varchar2(20) primary key,
						CWS_Id varchar2(20) references class_wise_sports(CWS_Id),
						Student_No varchar2(20) references student(Student_No),
						Participation_Date date,
						Prize_Name varchar2(20),
						Prize_Date date,
						Prize_Given_By varchar2(20),
						Prize_For varchar2(20),
						Coach_Comments varchar2(40),
						Created_By varchar2(20),
						Creation_Date date,
						Last_Updated_By varchar2(20),
						Last_Updation_Date date); 