create or replace procedure in_sports_master(Sports_Description varchar2,
				Kits_Available varchar2,
				Kits_Used varchar2,
				Kits_Refilled_By varchar2,
				Kits_Checked_By varchar2,
				If_Donated_By varchar2)
is
begin
insert into sports_master values('sports'||sports_id.nextval,Sports_Description,Kits_Available,Kits_Used,Kits_Refilled_By,Kits_Checked_By,If_Donated_By,sysdate,user,sysdate,user,sysdate);
commit;
end;
/

-- exec in_sports_master('Cricket','yes','','','HIFI_staff105','');