/*WARNING!!! MAKE SURE TO EDIT THIS FILE AND CHANGE THE NAME OF THE ORDERS TABLE TO YOUR OWN FOUND IN YOUR ZEN CART DATABASE*/
ALTER TABLE orders 
	ADD COLUMN `paymentnetwork_xref` VARCHAR(128) NULL,
	ADD COLUMN `paymentnetwork_transactionUnique` VARCHAR(128) NULL,
	ADD COLUMN `paymentnetwork_amount_received` FLOAT NOT NULL DEFAULT '0.0',
	ADD COLUMN `paymentnetwork_authorisationCode` VARCHAR(128) NULL,
	ADD COLUMN `paymentnetwork_responseMessage` TEXT NULL,
	ADD COLUMN `paymentnetwork_lastAction` VARCHAR(32) NULL
