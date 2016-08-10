create or replace procedure in_Student_marks_proc( class_Id varchar2, /* --'10th_HIFI_1','10th_HIFI_2',..,'1st_HIFI_2/1' */
						Student_No varchar2, /* --'16HIFI1','16HIFI2',.. */
						Term_Id varchar2, /* ---'Term_1','Term_2','Term_3','Term_4' */
						Subject_Id varchar2, /* ---'Tel_1','Hin_2','Eng_3','Mat_4','Sci_5','Soc_6' */
						Subject_Marks_Secured number,
						Answer_Sheet_Corrected_By varchar2)
is
begin
insert into marks values(Student_No||'_'||seq_Marks_Id.nextval,Class_Id,Student_No,Term_Id,Subject_Id,Subject_Marks_Secured,Answer_Sheet_Corrected_By,user,sysdate,user,sysdate);
commit;
end;
/

execute in_Student_marks_proc('10th_HIFI_1','16HIFI1','Term_1','Tel_1',70,'HIFI_Teacher162');

execute in_Student_marks_proc('10th_HIFI_1','16HIFI1','Term_1','Hin_2',65,'HIFI_Teacher164');

execute in_Student_marks_proc('10th_HIFI_1','16HIFI1','Term_1','Eng_3',45,'HIFI_Teacher163');

execute in_Student_marks_proc('10th_HIFI_1','16HIFI1','Term_1','Mat_4',90,'HIFI_Teacher140');

execute in_Student_marks_proc('10th_HIFI_1','16HIFI1','Term_1','Sci_5',50,'HIFI_Teacher161');

execute in_Student_marks_proc('10th_HIFI_1','16HIFI1','Term_1','Soc_6',92,'HIFI_Teacher160');


execute in_Student_marks_proc('10th_HIFI_1','16HIFI2','Term_1','Tel_1',40,'HIFI_Teacher162');

execute in_Student_marks_proc('10th_HIFI_1','16HIFI2','Term_1','Hin_2',35,'HIFI_Teacher164');

execute in_Student_marks_proc('10th_HIFI_1','16HIFI2','Term_1','Eng_3',20,'HIFI_Teacher163');

execute in_Student_marks_proc('10th_HIFI_1','16HIFI2','Term_1','Mat_4',17,'HIFI_Teacher140');

execute in_Student_marks_proc('10th_HIFI_1','16HIFI2','Term_1','Sci_5',88,'HIFI_Teacher161');

execute in_Student_marks_proc('10th_HIFI_1','16HIFI2','Term_1','Soc_6',65,'HIFI_Teacher160');


execute in_Student_marks_proc('10th_HIFI_1','16HIFI3','Term_1','Tel_1',55,'HIFI_Teacher162');

execute in_Student_marks_proc('10th_HIFI_1','16HIFI3','Term_1','Hin_2',45,'HIFI_Teacher164');

execute in_Student_marks_proc('10th_HIFI_1','16HIFI3','Term_1','Eng_3',45,'HIFI_Teacher163');

execute in_Student_marks_proc('10th_HIFI_1','16HIFI3','Term_1','Mat_4',49,'HIFI_Teacher140');

execute in_Student_marks_proc('10th_HIFI_1','16HIFI3','Term_1','Sci_5',48,'HIFI_Teacher161');

execute in_Student_marks_proc('10th_HIFI_1','16HIFI3','Term_1','Soc_6',60,'HIFI_Teacher160');
