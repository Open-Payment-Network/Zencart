CREATE TABLE IF NOT EXISTS paymentnetwork_temp_carts (
	paymentnetwork_orderRef VARCHAR(64) NOT NULL, paymentnetwork_session TEXT NOT NULL,
	paymentnetwork_cdate TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
	paymentnetwork_orderID int NULL
) 
ENGINE=InnoDB;
