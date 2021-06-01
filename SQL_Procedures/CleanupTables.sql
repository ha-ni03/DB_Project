/* Cleanup all tables in Database*/
drop table `userinfo`;
 /* drop child tables first */
drop table `notifications`; 
drop table `catalog`;
drop table `PurchaseCart`;
/* and then the parent table */
drop table `ticket_info`;
drop table `history`;
drop table `Catalog`;
   