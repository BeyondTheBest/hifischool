create table extra_curr_act_master(Extra_Curr_Act_Id varchar2(20) primary key,
					Extra_Curr_Act_Desc varchar2(20),
					Kits_Available varchar2(20),--'yes or 'no'
					Kits_Used varchar2(20),
					Kits_Refilled_By varchar2(20),
					Kits_Checked_By varchar2(20),
					Kits_Checked_Date date,
					If_Donated_By varchar2(20),
					If_Donation_Date date,
					Created_By varchar2(20),
					Creation_Date date,
					Last_Updated_By varchar(20),
					Last_Updation_Date date);