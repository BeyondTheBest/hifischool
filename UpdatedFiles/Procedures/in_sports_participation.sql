create or replace procedure in_sports_participation(Sports_Id varchar2,
					CWS_Id varchar2,
					Student_No varchar2,
					Participation_Date date,
					Prize_Name varchar2,
					Prize_Date date,
					Prize_Given_By varchar2,
					Prize_For varchar2,
					Coach_Comments varchar2)
is
begin
insert into sports_participation values('SP'||Sports_Part_Id.nextval,Sports_Id,CWS_Id,Student_No,Participation_Date,Prize_Name,Prize_Date,Prize_Given_By,Prize_For,Coach_Comments,user,sysdate,user,sysdate);
commit;
end;
/
