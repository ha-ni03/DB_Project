/* Default values for the tables */

INSERT INTO userinfo (FirstName, LastName, Email, UserName, PassWord)
VALUES ('Joy', 'Francis', 'francis.joy@gmx.de', 'jofra', '12345');

INSERT INTO userinfo (FirstName, LastName, Email, UserName, PassWord)
VALUES ('Lego', 'Bern', 'lebr@gmail.de', 'lebra', '54321');

INSERT INTO userinfo (FirstName, LastName, Email, UserName, PassWord)
VALUES ('Dube', 'Shivam', 'shd@yahoo.de', 'shud', '11222');

INSERT INTO ticket_info (ticket_name, ticket_description, ticket_priority, reported_by, reg_date, ticket_type,tktstatus)
VALUES ('defaultTkt', 'Example Service Ticket', 'HIGH', 'reporter1', curdate(),'Service','NEW');

INSERT INTO ticket_info (ticket_name, ticket_description, ticket_priority, reported_by, reg_date, ticket_type,tktstatus)
VALUES ('defaultTkt2', 'Example Purchase Ticket', 'MEDIUM', 'reporter2', curdate(),'Purchase','NEW');


/* INSERT INTO notifications(notificationid, message, nextreminder, recipient, ticket_id) */
/* VALUES ('1', 'This is the reminder message to resolve the ticket', '01:00:00', 'Dwayne Johnson', '1'); 


INSERT INTO PurchaseCart (Itemname, Quantity)
VALUES ('1', 'Laptop', '2', '2');

INSERT INTO PurchaseCart (ItemID, Itemname, Quantity)
VALUES ('2', 'Monitor', '5','3');
*/
