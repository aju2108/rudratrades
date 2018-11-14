********************************************** User *****************************************************

INSERT INTO users (firstname, lastname, username, password, emailaddress, phone1, phone2, 
bankname, bankaccountnumber, bankifsccode, trademark, vehicleno, speciality, company, address, statecode, gstin)
VALUES 
('Sanjay', 'Yadav', 'sanjay123', 'sanjay123', 'sanjay.yadavmkt@gmail.com', '+91 9315550444', '+91 9315109008',
'DCB Bank Limited', '22022900001908', 'DCBL0000220', 'Subject to Jagadhari Jursidction only.', 'HR46B1595',
'Desi Ghee & Milk Powder', 'Rudra Trading Co', 'Khalsa College Road, Yamuna Nagar, Haryana 135001', '06', '06ABLPY8531E1ZA');

********************************************** Product *****************************************************

INSERT INTO public.product (name, hsncode) VALUES ('Skimmed Milk Powder', '0402');
INSERT INTO public.product (name, hsncode) VALUES ('Ghee', '0405');
INSERT INTO public.product (name, hsncode) VALUES ('Dairy Whitener', '0402');
INSERT INTO public.product (name, hsncode) VALUES ('Butter', '0405');

********************************************** Packing *****************************************************

INSERT INTO public.packing (name) VALUES ('1 kg');
INSERT INTO public.packing (name) VALUES ('1x25 kg');
INSERT INTO public.packing (name) VALUES ('25 KG');
INSERT INTO public.packing (name) VALUES ('15 kg Tin');
INSERT INTO public.packing (name) VALUES ('5 ltr Jar');
INSERT INTO public.packing (name) VALUES ('1 ltr jar');
INSERT INTO public.packing (name) VALUES ('1/2 ltr Jar');
INSERT INTO public.packing (name) VALUES ('200 ml Jar');
INSERT INTO public.packing (name) VALUES ('1 Ltr CP');
INSERT INTO public.packing (name) VALUES ('1/2 Ltr CP');
INSERT INTO public.packing (name) VALUES ('DW-500gm');
INSERT INTO public.packing (name) VALUES ('500gm');
INSERT INTO public.packing (name) VALUES ('20 KG');
INSERT INTO public.packing (name) VALUES ('DW-200gm');

********************************************** Quantity *****************************************************

INSERT INTO public.quantity (name) VALUES ('1');
INSERT INTO public.quantity (name) VALUES ('5');
INSERT INTO public.quantity (name) VALUES ('10');
INSERT INTO public.quantity (name) VALUES ('15');
INSERT INTO public.quantity (name) VALUES ('20');
INSERT INTO public.quantity (name) VALUES ('25');

********************************************** Unit *********************************************************

INSERT INTO public.unit (name) VALUES ('Kg');
INSERT INTO public.unit (name) VALUES ('Ltr');

********************************************** Customer *****************************************************

INSERT INTO public.customer(name, address, distt, state, gstin)
VALUES ('M/s sunder Trading Co.', '#234, Focal Point', 'Sirsa', 'Haryana', '032456785');

INSERT INTO public.customer(name, address, distt, state, gstin)
VALUES ('M/s Karan trading Co.', '#234, Focal Point', 'Sirsa', 'Haryana', '032456785');

INSERT INTO public.customer(name, address, distt, state, gstin)
VALUES ('Chhaber Traders', 'Shop No-79,Jawahar Market ', 'Yamuna Nagar', 'Haryana', '06AMYPC6019M1ZK');

INSERT INTO public.customer(name, phone, address, distt, state)
VALUES ('Maha Dev Dairy','9034873457', 'Workshop Road', 'Yamuna Nagar', 'Haryana');

INSERT INTO public.customer(name, phone, address, distt, state)
VALUES ('Lucky Dairy', '9813244522', 'Oberoi Chowk', 'Yamuna Nagar', 'Haryana');

INSERT INTO public.customer(name, phone, address, distt, state)
VALUES ('Kanhiya Dairy', '8395915786', 'Jhanda Chowk', 'Jagadhari', 'Haryana');

INSERT INTO public.customer(name, phone, address, distt, state)
VALUES ('Patel Dairy', '7206000410', 'Near S.D Public school', 'Jagadhari', 'Haryana');

INSERT INTO public.customer(name, phone, address, distt, state)
VALUES ('Gokul Dairy', '9466611164', 'Workshop Road', 'Yamuna Nagar', 'Haryana');

INSERT INTO public.customer(name, address, distt, state)
VALUES ('Chandar Dairy', 'Kansapur Road', 'Yamuna Nagar', 'Haryana');

INSERT INTO public.customer(name, address, distt, state)
VALUES ('Bhatia Dairy', 'Sarni chowk', 'Yamuna Nagar', 'Haryana');

INSERT INTO public.customer(name, distt, state)
VALUES ('Sonu Dairy', 'Yamuna Nagar', 'Haryana');

INSERT INTO public.customer(name, distt, state)
VALUES ('krishna Dairy', 'Yamuna Nagar', 'Haryana');

INSERT INTO public.customer(name, distt, state)
VALUES ('Ganesh Dairy', 'Darajpur', 'Haryana');

INSERT INTO public.customer(name, distt, state)
VALUES ('Bhatiya Dairy', 'Jagadhari', 'Haryana');

********************************************** Brand *****************************************************

INSERT INTO public.brand (name) VALUES ('Madhusudan');
INSERT INTO public.brand (name) VALUES ('Gopaljee');
INSERT INTO public.brand (name) VALUES ('Ananda');
INSERT INTO public.brand (name) VALUES ('Param');
INSERT INTO public.brand (name) VALUES ('Verka');
INSERT INTO public.brand (name) VALUES ('Amul');
INSERT INTO public.brand (name) VALUES ('Super');
INSERT INTO public.brand (name) VALUES ('Patanjali');

************************************** Brand_Product_Packing_Rate_Tax_Mapping ****************************

INSERT INTO public.brand_product_packing_rate_tax_mapping(
	brandid, productid, packingid, rate, gst, cgst, igst, createdDate, modifiedDate)
	VALUES (1, 2, 1, 100, 10, 5, 5, current_timestamp, current_timestamp);
	
INSERT INTO public.brand_product_packing_rate_tax_mapping(
	brandid, productid, packingid, rate, gst, cgst, igst, createdDate, modifiedDate)
	VALUES (2, 3, 3, 200, 20, 10, 10, current_timestamp, current_timestamp);
	
INSERT INTO public.brand_product_packing_rate_tax_mapping(
	brandid, productid, packingid, rate, gst, cgst, igst, createdDate, modifiedDate)
	VALUES (3, 2, 3, 300, 30, 10, 10, current_timestamp, current_timestamp);
    

********************************************** Stocks *****************************************************

INSERT INTO public.stocks(productid, packingid, quantity) VALUES 
((SELECT id FROM public.product where name='Skimmed Milk Powder'), 
(SELECT id FROM public.packing where name='1 kg'), '10');

INSERT INTO public.stocks(productid, packingid, quantity) VALUES 
((SELECT id FROM public.product where name='Skimmed Milk Powder'), 
(SELECT id FROM public.packing where name='1x25 kg'), '20');

INSERT INTO public.stocks(productid, packingid, quantity) VALUES 
((SELECT id FROM public.product where name='Skimmed Milk Powder'), 
(SELECT id FROM public.packing where name='25 KG'), '30');	



INSERT INTO public.stocks(productid, packingid, quantity) VALUES 
((SELECT id FROM public.product where name='Butter'), 
(SELECT id FROM public.packing where name='500gm'), '10');

INSERT INTO public.stocks(productid, packingid, quantity) VALUES 
((SELECT id FROM public.product where name='Butter'), 
(SELECT id FROM public.packing where name='1 kg'), '20');

INSERT INTO public.stocks(productid, packingid, quantity) VALUES 
((SELECT id FROM public.product where name='Butter'), 
(SELECT id FROM public.packing where name='20 KG'), '30');



INSERT INTO public.stocks(productid, packingid, quantity) VALUES 
((SELECT id FROM public.product where name='Dairy Whitener'), 
(SELECT id FROM public.packing where name='DW-200gm'), '10');

INSERT INTO public.stocks(productid, packingid, quantity) VALUES 
((SELECT id FROM public.product where name='Dairy Whitener'), 
(SELECT id FROM public.packing where name='DW-500gm'), '20');



INSERT INTO public.stocks(productid, packingid, quantity) VALUES 
((SELECT id FROM public.product where name='Ghee'), 
(SELECT id FROM public.packing where name='15 kg Tin'), '10');

INSERT INTO public.stocks(productid, packingid, quantity) VALUES 
((SELECT id FROM public.product where name='Ghee'), 
(SELECT id FROM public.packing where name='5 ltr Jar'), '20');

INSERT INTO public.stocks(productid, packingid, quantity) VALUES 
((SELECT id FROM public.product where name='Ghee'), 
(SELECT id FROM public.packing where name='1 ltr jar'), '30');

INSERT INTO public.stocks(productid, packingid, quantity) VALUES 
((SELECT id FROM public.product where name='Ghee'), 
(SELECT id FROM public.packing where name='1/2 ltr Jar'), '40');

INSERT INTO public.stocks(productid, packingid, quantity) VALUES 
((SELECT id FROM public.product where name='Ghee'), 
(SELECT id FROM public.packing where name='200 ml Jar'), '50');






	
	


