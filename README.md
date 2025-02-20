Disclaimer: Please note that we no longer support older versions of SDKs and Modules. We recommend that the latest versions are used.

# README

# Contents

- Introduction
- Prerequisites
- Installing and configuring the module
- License

# Introduction

This Zencart module provides an easy method to integrate with the payment gateway.
 - The httpdocs directory contains the files that need to be uploaded to the root directory of where Zencart is installed
 - Supports Zencart versions: 1.5.8a

# Prerequisites

- The module requires the following prerequisites to be met in order to function correctly:
    - For a full list of requirements please see: https://docs.zen-cart.com/user/first_steps/server_requirements/

> Please note that we can only offer support for the module itself. While every effort has been made to ensure the payment module is complete and bug free, we cannot guarantee normal functionality if unsupported changes are made.

# Installing and configuring the module

1. Make sure the gateway address in the /includes/language/english/modules/payment/land.paymentnetwork.php is set to your gateways URL.

'MODULE_PAYMENT_PAYMENTNETWORK_DIRECT_URL' => 'https://gateway.exampledomainhere.com/direct/'
'MODULE_PAYMENT_PAYMENTNETWORK_MODAL_URL'  => 'https://gateway.exampledomainhere.com/hosted/modal'
'MODULE_PAYMENT_PAYMENTNETWORK_FORM_URL'   => 'https://gateway.exampledomainhere.com/paymentform/'

2. Make sure that all files inside the httpdocs folder are inserted into the root directory of where Zen Cart is installed (including paymentnetwork_callback.php in the main folder)
3. Some installations will not require you to run the SQL files provided. However, strict database privileges on a server (specifically CREATE, DELETE and ALTER) will prevent the a full installation of this module. If this is the case, you will need to manually run the SQL into your site's database with CREATE and ALTER privileges; making sure to allow DELETE access for paymentnetwork_temp_carts normal operation which will help keep the table clean and save space. Ensure that you enter your correct table name (my_table_name in the example below) in orders.sql

```
ALTER TABLE my_table_name ADD COLUMN `paymentnetwork_xref` VARCHAR(128) NULL, ADD COLUMN `paymentnetwork_transactionUnique` VARCHAR(128) NULL, ADD COLUMN
`paymentnetwork_amount_received` FLOAT NOT NULL DEFAULT '0.0', ADD COLUMN `paymentnetwork_authorisationCode` VARCHAR(128) NULL, ADD COLUMN `paymentnetwork_responseMessage`
TEXT NULL, ADD COLUMN `paymentnetwork_lastAction` VARCHAR(32) NULL
```

4. Mouseover the "Modules" link in the top menu and click 'Payment'. Next, click the circle for PaymentNetwork Form and finally click 'install' on the right side of the screen
5. Follow the instructions that appear, and enter all the necessary details, such as the Merchant ID and signature. Click 'update', and Payment Network is now integrated with your shopping cart

If you would like to make edits to the Payment Network Integration such as updating the Merchant ID, hover over the modules drop down menu and click payments. Click on 'Payment Network Integration' in the list that appears, and click on 'edit' on the right hand side.

License
----
MIT

**Disclaimer**

Sample code, SDKs and modules have been created as reference material only. Modules are developed and tested against vanilla base platform installs only. Any further module compatibility would need to be tested by the user/merchant/developer. Version support is as shown within the associated VERSION section. All sample code, SDKs and modules offer foundation transaction functionality for merchant and developers to use as a guide and/or to adapt, enhance or otherwise build upon. For the avoidance of doubt, this means that some desired functionality may not be useable or exist. All sample code, SDKs or modules that are used will require complete full end to end testing by the user/merchant/developer. Further to this, use of any sample code, SDKs or modules, Cardstream bears no responsibility for; nor extends any warranty in regard to; nor accepts any liability arising due to any changes or errors in functionality that may result. Developers, merchants or other users of any sample code, SDKs or modules accept these conditions de facto upon usage.
