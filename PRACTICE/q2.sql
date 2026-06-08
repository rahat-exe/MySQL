-- 2. (Exercise on updating records in table) Create Client_master with the following fields(ClientNO, Name, Address, City, State, bal_due)  ( a ) Insert five records  ( b ) Find the names of clients whose bal_due> 5000 .  ( c ) Change the bal_due of ClientNO  “ C123” to Rs. 5100  ( d ) Change the name of Client_master to Client12 .  ( e ) Display the bal_due heading as “BALANCE” 

use q1;

CREATE table client_master(clientNO  PRIMARY KEY, name varchar(20), address varchar(20), city varchar(20), state varchar(20), bal_due int(20));

INSERT INTO Client_master VALUES ('101', 'Ravi Kumar',  '12 MG Road',    'Mumbai',    'Maharashtra', 3000.00);
INSERT INTO Client_master VALUES ('102', 'Priya Sen',   '45 Park St',    'Kolkata',   'West Bengal', 7500.00);
INSERT INTO Client_master VALUES ('103', 'Amit Sharma', '9 Civil Lines', 'Delhi',     'Delhi',       2000.00);
INSERT INTO Client_master VALUES ('123', 'Neha Gupta',  '7 Lake View',   'Chennai',   'Tamil Nadu',  6000.00);
INSERT INTO Client_master VALUES ('105', 'Farhan Ali',  '3 Hill Road',   'Hyderabad', 'Telangana',   8200.00);

select name from client_master where bal_due > 5000;

update client_master set bal_due = 5100 where clientNO = '123';

rename table client_master to client12;

select bal_due AS 'Balance' from client12;