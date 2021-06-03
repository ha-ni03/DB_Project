
CREATE TABLE `userinfo` (
  `FirstName` varchar(20) NOT NULL,
  `LastName` varchar(20) NOT NULL,
  `Email` varchar(45) NOT NULL,
  `UserName` varchar(20) NOT NULL,
  `PassWord` varchar(20) NOT NULL,
  PRIMARY KEY (`UserName`)
);

CREATE TABLE `ticket_info` (
  `ticket_id` int NOT NULL AUTO_INCREMENT,
  `ticket_name` varchar(20) NOT NULL,
  `ticket_description` varchar(45) NOT NULL,
  `ticket_priority`  ENUM ('CRITICAL','HIGH', 'MEDIUM','LOW')DEFAULT 'LOW',
  `reported_by` varchar(20) NOT NULL,
  `reg_date` date NOT NULL,
  `ticket_type` ENUM ('SERVICE','PURCHASE')DEFAULT 'SERVICE',
  `tktstatus` ENUM ('NEW', 'RUNNING', 'RESOLVED'),
  `ItemId`INT DEFAULT 0,
  `Quantity`INT DEFAULT 1,
  PRIMARY KEY (`ticket_id`)
);

/* History is optional*/
CREATE TABLE `histories`(
`Id` int NOT NULL AUTO_INCREMENT,  /* dont take the id from tickt_info*/
`ticket_name` varchar(20) NOT NULL,
`ticket_description` varchar(45) NOT NULL,
`ticket_priority`  ENUM ('CRITICAL','HIGH', 'MEDIUM','LOW')DEFAULT 'LOW',
`reported_by` varchar(20) NOT NULL,
`closed_on` TimeStamp NOT NULL,
`ticket_type` ENUM ('SERVICE','PURCHASE')DEFAULT 'SERVICE',
  PRIMARY KEY (`id`)
  );

/* Service request - for ticket type service */  
CREATE TABLE `Notifications` (
  `notificationId` INT NOT NULL AUTO_INCREMENT,
  `message` varchar(50) NOT NULL,
  `nextReminder` TIME NOT NULL,  /* notification each day or each hour or each week - based on prio */
  `recipient` varchar(20) NOT NULL,
  `ticket_id` int NOT NULL,
  PRIMARY KEY (`notificationId`),
  CONSTRAINT `notification_fk_1` FOREIGN KEY (`ticket_id`) 
  REFERENCES `ticket_info` (`ticket_id`) ON DELETE CASCADE ON UPDATE CASCADE
);

/* Purchase request - for ticket type Purchase */
CREATE TABLE `PurchaseCart` (
  `OrderID` INT NOT NULL AUTO_INCREMENT,
  `Itemname` varchar(50) NOT NULL,  /* Eg: Laptop */
  `Quantity` INT NOT NULL,  /* Eg: 2 pieces */
  `ticket_id` int NOT NULL,
  PRIMARY KEY (`OrderID`),
  CONSTRAINT `PO_fk_1` FOREIGN KEY (`ticket_id`) 
  REFERENCES `ticket_info` (`ticket_id`) ON DELETE CASCADE ON UPDATE CASCADE
);

CREATE TABLE `Catalog` (
  `ItemId` INT NOT NULL AUTO_INCREMENT,
  `Itemname` varchar(25) NOT NULL,  /* Eg: Laptop */
  PRIMARY KEY (`ItemId`)
);





