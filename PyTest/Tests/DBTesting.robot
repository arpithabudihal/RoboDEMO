*** Settings ***
Library     DatabaseLibrary
Library     OperatingSystem
Suite Setup  Connect to database    pymysql     ${dbname}   ${dbuser}   ${dbpwd}    ${dbhost}   ${dbport}
Suite Teardown  Disconnect from Database

*** Variables ***
${dbname}   sql12333338
${dbuser}   sql12333338
${dbpwd}    BnFKZvbfcT
${dbhost}   sql12.freesqldatabase.com
${dbport}   3306
*** Test Cases ***

#Create Table
 #   ${output}=  EXECUTE SQL STRING  Create table person(id integer,fist_name varchar(20),last_name varchar(20),city varchar(20));
 #  log to console  ${output}
  #  should be equal as strings  ${output}   None

#Inserting Data in person Table
 #    ${output}=  EXECUTE SQL STRING  Insert into person values(104,"A","B","belgaum");
  #  log to console  ${output}
   # should be equal as strings  ${output}   None

Check Arpitha record present
    check if exists in database  Select id from person where fist_name="Arpitha"

Verify Row Count is equal to some value
    row count is equal to x     Select * from person where fist_name ="Arpi";  1

verify row count is less than some value
    row count is 0    select * from person where id =191;




*** Keywords ***

