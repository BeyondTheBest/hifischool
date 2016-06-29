create or replace procedure in_staff_Details_Proc(Staff_Name varchar2,
DOB date,
DOJ date,
Gender char,
Father_Name varchar2,
Mother_Name varchar2,
Spouse_Name varchar2,
Grade varchar2,
Insurance_Name varchar2,
Insurance_Premium number,
Insurance_Valid_Till date,
Insurance_Amount number,
Insurance_Number varchar2,
Total_Experience number,
Subject_Matter_Expert varchar2,
Value_Additions varchar2,
If_Refferenced_By varchar2,
Interviewed_By varchar2,
Interviewed_Date date,
PAN_Card_Number varchar2,
Bank_Account_Number number,
Address varchar2,
EMail_Id varchar2,
Mobile number,
Emer_Contact varchar2,
Emer_Contact_Mobile number,
Previous_Org varchar2,
Previous_Org_Income number)
is
begin
insert into staff values('HIFI_staff'||seq_staff_Id.nextval,staff_Name,DOB,DOJ,Gender,Father_Name,Mother_Name,Spouse_Name,Grade,Insurance_Name,Insurance_Premium,Insurance_Valid_Till,Insurance_Amount,Insurance_Number,Total_Experience,Subject_Matter_Expert,Value_Additions,If_Refferenced_By,Interviewed_By,Interviewed_Date,PAN_Card_Number,Bank_Account_Number,Address,EMail_Id,Mobile,Emer_Contact,Emer_Contact_Mobile,Previous_Org,Previous_Org_Income,user,sysdate,user,sysdate);
commit;
end;
/


execute in_Teacher_Details_Proc('Sandeep','25-sep-1990','6-may-2016','Male','Kistaiah','Aruna','','','',NULL,'',NULL,'',5,'Telugu','','','Chiranjeevi','25-may-2016','',32078908194,'Siddipet','',8500301843,'Kistaiah',9989430867,'Sri Vani High School',320000);

execute in_Teacher_Details_Proc('Hareesh','07-oct-1990','2-june-2016','Male','LaxmanGoud','Padma',' ','','',NULL,'',NULL,'',Null,'English','','','Chiranjeevi','25-may-2016','',32060331194,'Hyderabad','',9908898899,'RajeshGoud',8500204567,'',NULL);

execute in_Teacher_Details_Proc('Kistaiah','12-may-1975','25-june-2016','Male','Venkataiah','Narsamma','Aruna Devi','','',NULL,'',NULL,'',15,'Hindi','','','Chiranjeevi','25-may-2016','',32081298194,'warangal','',9989430867,'raju',9951833517,'ZPHS Ankshapur',1000000);