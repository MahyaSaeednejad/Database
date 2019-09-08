--
--  Clean up the university demo database
--

set termout on
prompt Removing WhoDoesThat database.  Please wait ...
set termout off
set feedback off

drop table Account 		cascade constraint;
drop table Category   	cascade constraint;
drop table SocialMedia  cascade constraint;
drop table Users    	cascade constraint;
drop table Business     cascade constraint;
drop table Admins       cascade constraint;
drop table Features     cascade constraint;
drop table Jobs    		cascade constraint;
drop table Transactions cascade constraint;
drop table Review   	cascade constraint;
drop table Messages     cascade constraint;
drop table Favourite    cascade constraint;
drop table Profile_view cascade constraint;
drop table Membership_Payment   cascade constraint;
