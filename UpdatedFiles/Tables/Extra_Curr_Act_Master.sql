create table extra_curr_act_master(Extra_Curr_Act_Id varchar2(20) constraints Extra_pk primary key,
					Extra_Curr_Act_Desc varchar2(50),
					Kits_Available varchar2(20),--'yes or 'no'
					Kits_Used varchar2(50),
					Kits_Refilled_By varchar2(50),
					Kits_Checked_By varchar2(50),
					Kits_Checked_Date date,
					If_Donated_By varchar2(50),
					If_Donation_Date date,
					Created_By varchar2(50),
					Creation_Date date,
					Last_Updated_By varchar(50),
					Last_Updation_Date date);