/* Default values for the tables */

INSERT INTO userinfo (FirstName, LastName, Email, UserName, PassWord)
VALUES ('Joy', 'Francis', 'francis.joy@gmx.de', 'jofra', '12345');

INSERT INTO userinfo (FirstName, LastName, Email, UserName, PassWord)
VALUES ('Lego', 'Bern', 'lebr@gmail.de', 'lebra', '54321');

INSERT INTO userinfo (FirstName, LastName, Email, UserName, PassWord)
VALUES ('Dube', 'Shivam', 'shd@yahoo.de', 'shud', '11222');

INSERT INTO Catalog (itemname) 
VALUES ('Laptop');
INSERT INTO Catalog (itemname) 
VALUES ('Mouse');
INSERT INTO Catalog (itemname) 
VALUES ('Laptop Bag');
INSERT INTO Catalog (itemname) 
VALUES ('Keyboard');
INSERT INTO Catalog (itemname) 
VALUES ('Monitor');
INSERT INTO Catalog (itemname) 
VALUES ('Screenguard');

INSERT INTO ticket_info (ticket_name, ticket_description, ticket_priority, reported_by, reg_date, ticket_type,tktstatus)
VALUES ('defaultTkt', 'Example Service Ticket', 'HIGH', 'reporter1', curdate(),'Service','NEW');

INSERT INTO ticket_info (ticket_name, ticket_description, ticket_priority, reported_by, reg_date, ticket_type,tktstatus,itemid,quantity)
VALUES ('defaultTkt2', 'Example Purchase Ticket', 'MEDIUM', 'reporter2', curdate(),'Purchase','NEW','2','5');


--  INSERT INTO notifications(notificationid, message, nextreminder, recipient, ticket_id) 
--  VALUES ('1', 'This is the reminder message to resolve the ticket', '01:00:00', 'Dwayne Johnson', '1'); 


