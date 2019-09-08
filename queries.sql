-- Cs5332 Project, Part 3
-- ### Mahya Saeednejad ###
-- It is not possible to write ACCEPT and PROMPT in the view. 
-- So I have to write them before creating the view.
-- views are created based on the inputs. So, inputs should be entered first.
-- Since each question need different inputs, It is better to run each query separately.
-- 1)Copy the query 2)press Enter 3)Enter inputs 4)view is created 5)see the result
-- After view is created, [select * from (name of the view);] query should be run in order to see the result.
-- There are 1 to 15 Account_ID
-- User ID are from 1 to 5
-- Business ID are from 11 to 15


-- To see the result: select * from q1; 
create or replace view q1(CATEGORY, SUBCATEGORY) as
	select categoryname, speciality_name from category;

-- To see the result: select * from q2; 
create or replace view q2(SUBCATEGORY) as
	select speciality_name from category where categoryname='Automotive';

	
--Sample input: 
--Enter value for User_or_Business: user
--Enter value for plan_type: U-MLS
--To see the result: select * from q3;
set verify off
ACCEPT User_or_Business varchar
PROMPT 'Enter User or Business:'
ACCEPT plan_type varchar
PROMPT 'm_type-- U-MLB/U-MLS/U-MLP/B-MLS/B-MLB/B-MLP'
create or replace view q3(FEATURES) as	
	select Description from Features f 
	where f.UorB=lower('&User_or_Business') and f.Plan=upper('&plan_type') and f.Description is not null;

--Since meta-data for Users and Businesses are different, 
--I make two separate views(q4_User and q4_Business) for this question.
--sample input: please choose Email and password from Account_ID= 1,2,3,4,5 from proj2-makeSchema.sql
--Enter value for Email_user: DannyWoods@gmail.com
--Enter value for Pass_user: fym7652	
--To see the result: select * from q4_User;
set verify off
column Cost format $9,999,999.00
ACCEPT Email_user varchar PROMPT 'Enter User Email address:'
ACCEPT Pass_user varchar PROMPT 'Enter User Password:'	
create or replace view q4_User(name, Address, Email, Plan, Cost, PhoneNumber, Status) as
	select First_Name||' '||Last_Name as name, Address||' '||City||' '||states||' '||Zip_Code as address, Email, u.Plan,m.PaymentAmount, PhoneNumber, Status 
	from users u,account a, Membership_Payment m 
	where a.Email='&Email_user' and a.Password='&Pass_user' and a.Account_ID=u.User_ID and m.Account_ID=u.User_ID;
	
--Sample input: please choose Email and password from Account_ID= 11,12,13,14,15
--Enter value for Email_business: LawnCare@gmail.com
--Enter value for Pass_business: 5wuybb	
--To see the result: select * from q4_Business;
set verify off
column Cost format $9,999,999.00
ACCEPT Email_business varchar PROMPT 'Enter Business Email address:'
ACCEPT Pass_business varchar PROMPT 'Enter Business Password:'	
create or replace view q4_Business(Business_Name, Owner, Plan, Cost, CategoryName , Description) as
	select Business_Name, Owner, b.Plan, PaymentAmount, CategoryName , Description 
	from business b,account a, Category c, Membership_Payment m 
	where b.Business_ID=a.Account_ID and b.Category_ID=c.Category_ID and m.Account_ID= b.Business_ID and a.Email='&Email_business' and a.Password='&Pass_business';


--Sample input: please choose ID from Account_ID= 1,2,3,4,5 from proj2-makeSchema.sql
--Enter value for ID_q5: 1	
--To see the result: select * from q5;
set verify off
ACCEPT ID_q5 varchar
PROMPT 'Enter a User ID(1 to 5):'	
create or replace view q5(Business_Name) as
	select Business_Name from business b, favourite f where b.business_Id=f.business_Id and user_Id=&ID_q5;

--Sample input: please choose ID from Account_ID= 11,12,13,14,15
--Enter value for ID_q6: 11
--To see the result: select * from q6;	
set verify off
ACCEPT ID_q6 varchar
PROMPT 'Enter a Business ID(11 to 15): '
create or replace view q6(User_ID,name, times) as
	select u.User_ID, First_Name||' '||Last_Name as name, times 
	from Users u, Profile_view p 
	where  u.User_ID=p.User_ID and Business_ID=&ID_q6;

	
--Sample input: please choose ID from Account_ID= 1,2,3,4,5
--Enter value for ID_q7: 2	
--To see the result: select * from q7;
set verify off
ACCEPT ID_q7 varchar
PROMPT 'Enter a User ID(1 to 5): '
create or replace view q7(Business_Name,URL,CategoryName) as
	select Business_Name,URL,CategoryName from account a,account b, business bu, category ca 
	where bu.Category_ID=ca.Category_ID and bu.Business_ID=b.Account_ID and a.Zip_Code=b.Zip_Code and a.Account_ID=&ID_q7;

--To see the result: select * from q8;
create or replace view q8(Business_Name) as
	select Business_Name from business where plan='B-MLP';

--To see the result: select * from q9;
create or replace view q9(name ,Business_Name, Job_Description) as
	select First_Name||' '||Last_Name as name ,Business_Name, Job_Description from business b,users u,jobs j 
	where j.User_ID=u.user_Id and j.Business_ID=b.Business_ID order by name ASC;

--The view is created for business with B-MLP membership plan. 
--The view is shown before update.
--To see the result after update: select * from q10;
column PaymentAmount format $9,999,999.00
create or replace view q10(Business_ID, PaymentAmount, Duration, Plan, Business_Name) as
	select b.Business_ID, m.PaymentAmount, b.Duration, b.Plan, b.Business_Name from Business b,Membership_Payment m 
	where b.Plan='B-MLP' and b.Duration='Annually' and b.Business_ID=m.Account_ID;
select * from q10;
	UPDATE q10 SET PaymentAmount=(PaymentAmount-(10/100*PaymentAmount)) 
	WHERE Business_ID=(select Business_ID from business where Plan='B-MLP' and Duration='Annually');

-- The view is created for all Accounts and then it shows the Account_ID and Statues before update.
-- Enter value for Status: False
-- Enter value for ID_q11: 1
-- After entering the inputs you need to select * from q11; in order to see the updated view.
-- ID can be any number from 1 to 15. Status is True or False
set verify off
create or replace view q11(Account_ID, Status) as
	select Account_ID, Status from account;
select * from q11;
ACCEPT Status varchar
PROMPT 'Enter False or True'
ACCEPT ID_q11 varchar
PROMPT 'Enter an ID:'
UPDATE q11 SET Status='&Status' where Account_ID=&ID_q11;

-- Id should be among business_ID which are 11,12,13,14,15
-- sample input: exec p4(11,'2018-01-15', '2018-12-15');
SET SERVEROUTPUT ON;
alter session set NLS_DATE_FORMAT = 'YYYY-MM-DD';
create or replace procedure p4 (id IN Integer, start_date IN date, end_date IN date) 
is
	
      CURSOR e IS SELECT u.First_Name, u.Last_Name, b.Business_Name, r.Description, r.Rating FROM Review r, Business b, Users u, Jobs j
                  WHERE r.Job_ID=j.Job_ID and j.Business_ID=id and j.User_ID=u.User_ID and b.Business_ID=id and  r.Review_Date>=start_date and r.Review_Date<=end_date order by r.Rating ASC;
				  				
	BEGIN	
				dbms_output.put_line(' Name      Business_Name      Description      Rating  ');
				dbms_output.put_line('-----------------------------------------------------------------------');
      FOR emp IN e LOOP
	  
               dbms_output.put_line(emp.First_Name|| ' ' || emp.Last_Name || '      ' || emp.Business_Name|| '      ' ||emp.Description|| '     ' || emp.Rating);
      END LOOP;
   
end;
/



