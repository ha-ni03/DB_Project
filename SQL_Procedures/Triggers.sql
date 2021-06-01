/* New Notification */
DELIMITER //
CREATE TRIGGER T1_CreateNotification
AFTER INSERT ON ticket_info
FOR EACH ROW
BEGIN
DECLARE TempTime TIME;
DECLARE recp varchar(20);
IF ticket_id = NEW.ticket_id THEN
	IF ticket_priority = 'CRITICAL' THEN
		SET TempTime := '01:00:00';		/* for testing use 00:10:00 */
	ELSEIF ticket_priority = 'HIGH' THEN
		SET TempTime := '48:00:00'; 	/* for testing use 00:15:00 */
	ELSEIF ticket_priority = 'MEDIUM' THEN
		SET TempTime := '72:00:00';		/* for testing use 00:20:00 */
	ELSE
		SET TempTime := '168:00:00';	/* for testing use 00:25:00 */
	END IF;
    
    IF ticket_type = 'PURCHASE' THEN
		SET recp := 'Purchase Dept';
    ELSE
		SET recp := ' Service Dept';
    END IF;
    
	INSERT INTO notifications( message, nextreminder, recipient, ticket_id)
	VALUES ('Please resolve the ticket soon', TempTime, recp, New.ticket_id);
END IF;
END 
//


/*Resolve Ticket*/
//
CREATE TRIGGER T2_ResolveTicket 
BEFORE DELETE ON ticket_info
FOR EACH ROW
BEGIN
  INSERT INTO history_table(ticket_name,ticket_description,ticket_priority,reported_by,closed_on,ticket_type)
  VALUES(OLD.ticket_name,OLD.ticket_description,OLD.ticket_priority,OLD.reported_by,NOW(),OLD.ticket_type);
END;
//
/*
//
CREATE TRIGGER T3_PurchaseOrder
AFTER INSERT ON ticket_info
FOR EACH ROW
BEGIN
  DECLARE IName varchar(10);
  SET Iname = (SELECT Itemname FROM Catalog where ItemId = NEW.ItemId);
  INSERT INTO PurchaseCart(ItemName, Quantity, ticket_id)
  VALUES(Iname, NEW.Quantity,NEW.ticket_id);
END;
//
*/
DELIMITER ;
    
 
    
