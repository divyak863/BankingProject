select * from tblCustomers

create proc proc_UpdateApprovedstatusCustomers(@id int)
as 
begin 
  update tblCustomers set approved_status='approved',approved_date=GETDATE(),approved_by='A456'
   where Reference_id=@id
end

create proc proc_Update
as
begin
update tblCustomers set approved_status='',approved_date='',approved_by=''
end

exec proc_Update



insert into tblCustomers values('roshan','zameer','ali','showkar',9066673666,'roshan@gmail.com','savings','4544454534343434','1999-01-29',23,
'male','328,vallalar nagar','328,vallalar nagar','teacher','teacher',34000,'2021-01-21','approved','admin1','2021-01-23')
insert into tblCustomers values('nancy','priceila','b','showkar',9066673666,'nancy@gmail.com','savings','4544454534343434','1999-01-29',23,
'male','328,vallalar nagar','328,vallalar nagar','teacher','teacher',34000,'2021-01-21','approved','admin1','2021-01-23')


insert into tblCustomers(First_name,middle_name,Last_name,Father_name,mobile_number,email_id,account_type,aadhar_number,
 date_of_birth,age ,gender ,Residential_address,permanent_address,occupation_Type,source_of_income,
 gross_income ,account_OpenDate) values('ravi','teja','kalwal','b','9066345678','ravi@gmail.com',
 'savings','1344454534343434','2002-01-29',20,'male','328jum nagar','328jum nagar','teacher','teacher',340080,'2020-01-21')

 insert into tblCustomers(First_name,middle_name,Last_name,Father_name,mobile_number,email_id,account_type,aadhar_number,
 date_of_birth,age ,gender ,Residential_address,permanent_address,occupation_Type,source_of_income,
 gross_income ,account_OpenDate) values('vishal','raj','pendyala','shiva','9066312345','vishal@gmail.com',
 'savings','1344454534345678','1997-01-29',24,'male','12/78 kolhapur','12/78 kolhapur','business','business',567890,'2006-12-21')

 insert into tblCustomers(First_name,middle_name,Last_name,Father_name,mobile_number,email_id,account_type,aadhar_number,
 date_of_birth,age ,gender ,Residential_address,permanent_address,occupation_Type,source_of_income,
 gross_income ,account_OpenDate) values('jaya','himesh','kimu','gha','8907612345','njaya@gmail.com',
 'savings','4544454531234567','1995-01-29',26,'female','328,ujwalnagar','328,ujwal nagar','govt employee','govt employee',340090,'2008-01-21')

  insert into tblCustomers(First_name,middle_name,Last_name,Father_name,mobile_number,email_id,account_type,aadhar_number,
 date_of_birth,age ,gender ,Residential_address,permanent_address,occupation_Type,source_of_income,
 gross_income ,account_OpenDate) values('sanju','sam','son','murthy','8907456432','nsanju@gmail.com',
 'savings','2345454531234567','1995-01-30',27,'male','328,risha nagar','328,risha nagar','pilot','pilot',3400678,'2009-01-21')

 insert into tblCustomers(First_name,middle_name,Last_name,Father_name,mobile_number,email_id,account_type,aadhar_number,
 date_of_birth,age ,gender ,Residential_address,permanent_address,occupation_Type,source_of_income,
 gross_income ,account_OpenDate) values('shiva','teja','kalwal','narsing','845636432','shiva@gmail.com',
 'savings','2345454531245632','2000-01-30',22,'male','328,risha nagar','328,risha nagar','pilot','pilot',3400678,'2009-01-21')


 create proc proc_GetApprovedCustomers
 as
 begin
   select Reference_id,First_name,middle_name,Last_name,mobile_number,email_id,aadhar_number from  tblCustomers 
   where approved_status='approved'
 end


 exec proc_GetApprovedCustomers



  insert into tblCustomers(First_name,middle_name,Last_name,Father_name,mobile_number,email_id,account_type,aadhar_number,
 date_of_birth,age ,gender ,Residential_address,permanent_address,occupation_Type,source_of_income,
 gross_income ,account_OpenDate,approved_status) values('komu','sasha','himu','abc','8907678906','komu@gmail.com',
 'current','1234454531234567','1999-07-29',24,'male','328,himayathnagar','328,himayath nagar','driver','driver',780090,'2009-01-21','pending')

  insert into tblCustomers(First_name,middle_name,Last_name,Father_name,mobile_number,email_id,account_type,aadhar_number,
 date_of_birth,age ,gender ,Residential_address,permanent_address,occupation_Type,source_of_income,
 gross_income ,account_OpenDate,approved_status) values('shreya','vishwa','patel','sanju','8907656789','shreya@hotmail.com',
 'current','4544456785434567','1998-01-30',24,'female','32/12 kamalnagar','32/12 kamalnagar','lecturer','lecturer',3400789,'2010-02-21','pending')

  insert into tblCustomers(First_name,middle_name,Last_name,Father_name,mobile_number,email_id,account_type,aadhar_number,
 date_of_birth,age ,gender ,Residential_address,permanent_address,occupation_Type,source_of_income,
 gross_income ,account_OpenDate,approved_status) values('subhash','acharya','sharma','shankar','8907634521','subha@gmail.com',
 'savings','4544452345634567','1994-01-29',27,'male','23/90 jamuna nagar','23/90 jamuna nagar','electrician','electrician',340090,'2007-01-21','pending')

 insert into tblCustomers(First_name,middle_name,Last_name,Father_name,mobile_number,email_id,account_type,aadhar_number,
 date_of_birth,age ,gender ,Residential_address,permanent_address,occupation_Type,source_of_income,
 gross_income ,account_OpenDate,approved_status) values('heena','ac','khan','sanjay','8905674321','heena@gmail.com',
 'savings','8965452345634567','1996-01-21',28,'female','23/67 andheri mumbai','23/67 andheri mumbai','teacher','teacher',3400790,'2012-06-25','rejected')

 insert into tblCustomers(First_name,middle_name,Last_name,Father_name,mobile_number,email_id,account_type,aadhar_number,
 date_of_birth,age ,gender ,Residential_address,permanent_address,occupation_Type,source_of_income,
 gross_income ,account_OpenDate,approved_status) values('rahul','kl','kulkarni','lokesh','8905674786','rkl@gmail.com',
 'savings','8965452345674356','1996-12-21',29,'male','2/67 hanuman nagar banglore','2/67 hanuman nagar banglore','cricketer','cricketer',340079078,'2016-06-24','rejected')

  insert into tblCustomers(First_name,middle_name,Last_name,Father_name,mobile_number,email_id,account_type,aadhar_number,
 date_of_birth,age ,gender ,Residential_address,permanent_address,occupation_Type,source_of_income,
 gross_income ,account_OpenDate) values('om','prakash','valmiki','suesh','8905674789','om@gmail.com',
 'savings','1235452345674356','1997-12-21',24,'male','2/67 hanuman nagar banglore','2/67 hanuman nagar banglore','business','business',3409078,'2015-06-24')

  insert into tblCustomers(First_name,middle_name,Last_name,Father_name,mobile_number,email_id,account_type,aadhar_number,
 date_of_birth,age ,gender ,Residential_address,permanent_address,occupation_Type,source_of_income,
 gross_income ,account_OpenDate) values('himja','prakash','peddapalli','harish','8905674567','him@gmail.com',
 'savings','1235452345674567','1998-12-21',23,'female','2/67 nizaamabad','2/67 nizmabad','business','business',3409978,'2014-06-24')


 insert into tblCustomers(First_name,middle_name,Last_name,Father_name,mobile_number,email_id,account_type,aadhar_number,
 date_of_birth,age ,gender ,Residential_address,permanent_address,occupation_Type,source_of_income,
 gross_income ,account_OpenDate,approved_status) values('teja','prakash','kalwal','harish','8888623567','tejakalwal07@gmail.com',
 'savings','1235452345456879','2000-12-21',21,'male','78/56/90 kazipet','78/56/90 kazipet','sales man','sales man',3409909,'2013-06-24','pending')


 select * from tblBeneficiaries


 create proc proc_GetPendingApplications
 as
 begin
    select Reference_id,First_name,middle_name,Last_name,mobile_number,email_id,aadhar_number from  tblCustomers 
   where approved_status='pending'
 end

 exec  proc_GetPendingApplications

 create proc proc_GetCustomersProfilesbyReferenceid(@id int)
 as
 begin
  select Reference_id,First_name,middle_name,Last_name,Father_name,mobile_number,email_id,account_type,aadhar_number,
   date_of_birth,age ,gender ,Residential_address,permanent_address,occupation_Type,source_of_income,
 gross_income ,account_OpenDate from tblCustomers where Reference_id=@id
 end


 select * from tblCustomers


 create proc proc_RejectedApplications
 as
 begin
    select Reference_id,First_name,middle_name,Last_name,mobile_number,email_id,aadhar_number from  tblCustomers 
   where approved_status='rejected'
 end

  exec proc_RejectedApplications

  select * from tblBankingCustomers


  create proc proc_InsertApprvCustomersinBankingTble(@id int,@acc_number bigint,@acc_date Date)
  as
  begin
   insert into tblBankingCustomers(Reference_id,account_number,account_OpenDate) values(@id,@acc_number,@acc_date)
  end


   insert into tblCustomers(First_name,middle_name,Last_name,Father_name,mobile_number,email_id,account_type,aadhar_number,
 date_of_birth,age ,gender ,Residential_address,permanent_address,occupation_Type,source_of_income,
 gross_income ,account_OpenDate) values('geetha','anjali','thati','komesh','7865674567','geetha@gmail.com',
 'savings','1235452345645667','1998-02-21',23,'female','2/67warangal','2/67 warangal','mechanic','mechanic',3409912,'2013-07-24')

  insert into tblCustomers(First_name,middle_name,Last_name,Father_name,mobile_number,email_id,account_type,aadhar_number,
 date_of_birth,age ,gender ,Residential_address,permanent_address,occupation_Type,source_of_income,
 gross_income ,account_OpenDate) values('akhila','kotha','lieya','lokesh','6705674567','kotha@gmail.com',
 'savings','1235642345674567','1998-11-21',23,'female','2/67 hanamkonda','2/67 hanamkonda','tv shop','tv shop',309978,'2009-05-24')

  insert into tblCustomers(First_name,middle_name,Last_name,Father_name,mobile_number,email_id,account_type,aadhar_number,
 date_of_birth,age ,gender ,Residential_address,permanent_address,occupation_Type,source_of_income,
 gross_income ,account_OpenDate) values('mahesh','babu','konidela','ganesh','8905645267','mahesh@gmail.com',
 'savings','4535452345674567','1996-11-21',28,'female','2/67 jubiee hills hyderabad','2/67 jubiee hills hyderabad','actor','actor',3409978789,'2019-06-24')

  insert into tblCustomers(First_name,middle_name,Last_name,Father_name,mobile_number,email_id,account_type,aadhar_number,
 date_of_birth,age ,gender ,Residential_address,permanent_address,occupation_Type,source_of_income,
 gross_income ,account_OpenDate) values('rana','babu','durgam','ganesh','8906745632','rana@gmail.com',
 'savings','4535452563274567','1997-11-21',24,'male','6/67 kukatpally hyderabad','6/67 kukatpally hyderabad','teacher','teacher',340999,'2016-09-28')

  insert into tblCustomers(First_name,middle_name,Last_name,Father_name,mobile_number,email_id,account_type,aadhar_number,
 date_of_birth,age ,gender ,Residential_address,permanent_address,occupation_Type,source_of_income,
 gross_income ,account_OpenDate,approved_status) values('lakshimi','vara','ponnala','kumar','8906745908','divyadaminikalwal@gmail.com',
 'savings','4535452563275674','1997-11-21',24,'female','6/67jntu hyderabad','6/67 jntu hyderabad','student','student',3407,'2018-09-28','pending')



 select * from tbladmin



 create table tblAdminOtp(
 admin_id varchar(20) references tbladmin(admin_id),
 opt int primary key)


 create proc proc_InsertOtps(@id varchar(20),@otp int)
 as
 begin
   insert into tblAdminOtp values(@id,@otp)
 end

 select * from tblAdminOtp
 select * from tbladmin


 select * from tblCustomers


 alter table tbladmin
 add email_id varchar(40)
 create proc proc_InsertintotblAdmin(@email varchar(40),@id varchar(20))
 as
 begin
   update tbladmin set email_id=@email  where admin_id=@id
 end
exec proc_InsertintotblAdmin 'divyadaminikalwal@gmail.com','A456'


create proc proc_UpdatePaswwordinTable(@pass varchar(30),@email varchar(40))
as
begin
 update tbladmin set password=@pass where email_id=@email
end

insert into tblAdminOtp(opt,email_id) values(234567,'ravikalwal2002@gmail.com')


create proc proc_OtpCheck2(@mail varchar(40),@otp int)
as 
 begin
    select email_id,opt from tblAdminOtp where email_id=@mail and opt=@otp
 end

 exec proc_OtpCheck2 'divyadaminikalwal@gmail.com',123456


 create proc proc_GetUsernameusingmail(@email varchar(40))
 as
 begin
    select admin_id,email_id from tbladmin where email_id=@email
 end

 exec proc_GetUsernameusingmail 'divyadaminikalwal@gmail.com'