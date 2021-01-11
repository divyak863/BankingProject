

  
create database dbBank
use dbBank


create table tblCustomers(
Reference_id int identity(1,1) primary key,
First_name varchar(30) not null,
middle_name varchar(30) ,
Last_name varchar(30) not null,
Father_name varchar(30) not null,
mobile_number varchar(15) not null,
email_id varchar(40) not null,
account_type varchar(20) not null,
aadhar_number varchar(16) not null,
date_of_birth Date not null,
age int not null,
gender varchar(10) check(gender in('female','male','prefer not to say')),
Residential_address varchar(100) not null,
permanent_address varchar(100) not null,
occupation_Type varchar(30) not null,
source_of_income varchar(30) not null,
gross_income float not null,
account_OpenDate Date,
approved_status varchar(10),
approved_by varchar(20) references tbladmin(admin_id),
approved_date Date)
select * from tblCustomers

--------------------------------
create table tblBankingCustomers(
 Reference_id int references tblCustomers(Reference_id),
 customer_id int identity(1000,1) primary key,
 account_number int not null unique,
account_OpenDate Date
)
select * from tblBankingCustomers
insert into tblBankingCustomers(Reference_id,account_number,account_OpenDate) values(2,25423564,'2020/02/03')
insert into tblBankingCustomers(Reference_id,account_number,account_OpenDate) values(3,35436332,'2020/02/03')


create table tblNetBanking(
user_id int references tblBankingCustomers(customer_id),
account_number int not null unique,
password varchar(15) not null unique,
transaction_password varchar(15) not null unique)



alter table tblNetBanking add primary key(account_number) 


create table tblTransactions(
transaction_id int identity(100,1) primary key,
customer_id int references tblBankingCustomers(customer_id),
transaction_type varchar(10),
from_account int,
to_account int,
from_Account_balance float,
to_Account_balance float,
 amount float,
transaction_date Date,
remarks text)

alter table tblTransactions
alter column transaction_id long identity(10000000,1)

alter table tblTransactions
drop constraint PK__tblTrans__85C600AF0144A378

alter table tblTransactions
drop column transaction_id

alter table tblTransactions
add  transaction_id bigint identity(10000000,1) primary key

sp_help tblNetBanking

alter table tblNetBanking
drop constraint UQ__tblNetBa__6E2DBEDEC918BA83

alter table tblNetBanking
drop constraint UQ__tblNetBa__D5899D715AEB3FBF

alter table tblNetBanking
drop constraint UQ__tblNetBa__AF91A6ADFFE26FF8

sp_help tblTransactions

sp_help tblBankingCustomers

alter table tblBankingCustomers
drop constraint UQ__tblBanki__AF91A6AD29312E87

alter table tblBankingCustomers
drop column account_number

alter table tblBankingCustomers
add account_number bigint 

create table tblBalance(
customer_id int references tblBankingCustomers(customer_id),
account_number int primary key,
account_type varchar(20),
Name varchar(40),
balance float default 500.00)

drop table tblBalance


create table tblBeneficiaries(
beneficiary_id int identity(10,1) primary key,
customer_id int references tblBankingCustomers(customer_id),
account_number int,
beneficiary_account_number int,
 nickname varchar(20)
)
select * from tblBeneficiaries
insert into tblBeneficiaries values(1001,25423564,35436332,'abcd')

create table tblLocked(
user_id int references tblBankingCustomers(customer_id),
account_number int primary key)

drop table tblLocked

insert into tblCustomers values('roshan','zameer','ali','showkar',9066673666,'roshan@gmail.com','savings','4544454534343434','1999-01-29',23,
'male','328,vallalar nagar','328,vallalar nagar','teacher','teacher',34000,'2021-01-21','approved','admin1','2021-01-23')
insert into tblCustomers values('nancy','priceila','b','showkar',9066673666,'nancy@gmail.com','savings','4544454534343434','1999-01-29',23,
'male','328,vallalar nagar','328,vallalar nagar','teacher','teacher',34000,'2021-01-21','approved','admin1','2021-01-23')

insert into tbladmin values('admin1','roshan')

create table tbladmin(
admin_id varchar(20) primary key,
password varchar(15) not null unique)

alter table tbladmin
add email_id varchar(40)


insert into tblCustomers(First_name,Last_name,Father_name,mobile_number,email_id,account_type,aadhar_number,
 date_of_birth,age ,gender ,Residential_address,permanent_address,occupation_Type,source_of_income,
 gross_income ,account_OpenDate ,approved_by ,approved_date) values('divya','kalwal','narsing','8639800091','divya@gmail.com',
 'savings','')

 select * from tblAdminOtp
 alter table tblAdminOtp
 add  email_id varchar(40)

 create proc proc_InsertintotblwithEmail(@email varchar(40),@otp int)
 as 
 begin
  insert into tblAdminOtp(email_id,opt) values(@email,@otp)
 end
