
********************************************** User *****************************************************
CREATE TABLE public."users"
(
    id serial NOT NULL,
    firstname character varying(50),
    lastname character varying(50),
    username character varying(50),
    password character varying(100),
    emailaddress character varying(50),
    phone1 character varying(20),
    phone2 character varying(20),
    bankname character varying(50),
    bankaccountnumber character varying(50),
    bankifsccode character varying(20),
    trademark character varying(50),
    vehicleno character varying(20),
    speciality character varying(100),
    company character varying(100),
    address character varying(200),
    statecode character varying(20),
    gstin character varying(50),
    CONSTRAINT user_pkey PRIMARY KEY (id)
)
WITH (
    OIDS = FALSE
)
TABLESPACE pg_default;
    
********************************************** Product *****************************************************

CREATE TABLE public."product"
(
    id serial NOT NULL,
    name character varying(200),
    hsncode character varying(10),
    CONSTRAINT product_pkey PRIMARY KEY (id)
)
WITH (
    OIDS = FALSE
)
TABLESPACE pg_default;


********************************************** Packing *****************************************************

CREATE TABLE public."packing"
(
    id serial NOT NULL,
    name character varying(200),
    createdDate date,
    modifiedDate date,
    createdBy INT,
    modifiedBy INT,
    CONSTRAINT packing_pkey PRIMARY KEY (id)
)
WITH (
    OIDS = FALSE
)
TABLESPACE pg_default;

********************************************** Quantity *****************************************************

CREATE TABLE public."quantity"
(
    id serial NOT NULL,
    name character varying(200),
    CONSTRAINT quantity_pkey PRIMARY KEY (id)
)
WITH (
    OIDS = FALSE
)
TABLESPACE pg_default;

********************************************** Unit *****************************************************

CREATE TABLE public."unit"
(
    id serial NOT NULL,
    name character varying(200),
    CONSTRAINT unit_pkey PRIMARY KEY (id)
)
WITH (
    OIDS = FALSE
)
TABLESPACE pg_default;

********************************************** Customer *****************************************************

CREATE TABLE public."customer"
(
    id serial NOT NULL,
    name character varying(200),
    emailaddress character varying(50),
    phone character varying(20),
    address character varying(200),
    distt character varying(50),
    state character varying(50),
    gstin character varying(50),
    CONSTRAINT customer_pkey PRIMARY KEY (id)
)
WITH (
    OIDS = FALSE
)
TABLESPACE pg_default;

********************************************** Brand *****************************************************

CREATE TABLE public."brand"
(
    id serial NOT NULL,
    name character varying(200),
    CONSTRAINT brand_pkey PRIMARY KEY (id)
)
WITH (
    OIDS = FALSE
)
TABLESPACE pg_default;

********************************************** Brand_Product_Packing_Rate_Tax_Mapping *****************************************************

CREATE TABLE public."brand_product_packing_rate_tax_mapping"
(
    id serial NOT NULL,
    brandId INT,
    productId INT,
    packingId INT,
    rate double precision,
    GST double precision,
    CGST double precision,
    SGST double precision,
    IGST double precision,
    createdDate date,
    modifiedDate date,
    createdBy INT,
    modifiedBy INT,
    CONSTRAINT brand_product_packing_rate_tax_mapping_pkey PRIMARY KEY (id)
)
WITH (
    OIDS = FALSE
)
TABLESPACE pg_default;

********************************************** Brand_Product_Packing_Mapping *****************************************************

CREATE TABLE public."brand_product_packing_mapping"
(
    id serial NOT NULL,
    brandId INT,
    productId INT,
    packingId INT,
    createdDate date,
    modifiedDate date,
    createdBy INT,
    modifiedBy INT,
    CONSTRAINT brand_product_packing_mapping_pkey PRIMARY KEY (id)
)
WITH (
    OIDS = FALSE
)
TABLESPACE pg_default;

********************************************** Billing *****************************************************
CREATE TABLE public."billing"
(
    id serial NOT NULL,
    billdetails JSON NOT NULL,
    created_date date,
    modified_date date,
    CONSTRAINT billing_pkey PRIMARY KEY (id)
)
WITH (
    OIDS = FALSE
)
TABLESPACE pg_default;

********************************************** Stocks *****************************************************

CREATE TABLE public."stocks"
(
    id serial NOT NULL,
    productId bigint,
    packingId bigint,
    quantity bigint,
    CONSTRAINT stocks_pkey PRIMARY KEY (id)
)
WITH (
    OIDS = FALSE
)
TABLESPACE pg_default;


