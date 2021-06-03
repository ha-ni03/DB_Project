/* Cleanup all tables in Database*/
drop table IF EXISTS `userinfo`;
 /* drop child tables first */
drop table IF EXISTS`notifications`; 
drop table IF EXISTS`PurchaseCart`;
/* and then the parent table */
drop table IF EXISTS`ticket_info`;
drop table IF EXISTS`histories`;
drop table IF EXISTS`Catalog`;
   