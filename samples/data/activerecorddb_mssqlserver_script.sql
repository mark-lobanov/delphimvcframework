CREATE TABLE articles (
	id integer  IDENTITY(1, 1) ,
	description nvarchar(100) NOT NULL,
	price integer NOT NULL,
	CONSTRAINT articles_pkey PRIMARY KEY (id)
);

CREATE TABLE customers (
	id integer IDENTITY(1, 1) ,
	code nvarchar(20),
	description nvarchar(200),
	city nvarchar(200),
	rating INTEGER,	
	last_contact_timestamp datetime NULL,	
	NOTE nvarchar(max),		
	CONSTRAINT customers_pk PRIMARY KEY (id)
);

CREATE TABLE customers2 (
    id bigint IDENTITY(1, 1) ,
	code nvarchar(20),
	description nvarchar(200),
	city nvarchar(200),
    NOTE nvarchar(max),
    rating integer,
	last_contact_timestamp datetime NULL,
);


CREATE TABLE customers_plain (
    id integer NOT NULL,
    code nvarchar(20),
    description nvarchar(200),
    city nvarchar(200),
    note nvarchar(max),
    rating smallint,
    creation_time time,
    creation_date date,    
    CONSTRAINT customers_plain_pk PRIMARY KEY (id)
);

CREATE TABLE customers_with_code (
    code nvarchar(20) NOT null primary key,
    description nvarchar(200),
    city nvarchar(200),
    NOTE nvarchar(max),
    rating smallint
);

CREATE TABLE customers_with_guid (
	idguid UNIQUEIDENTIFIER NOT NULL,
	code varchar(20) NULL,
	description varchar(200) NULL,
	city varchar(200) NULL,
	note text NULL,
	rating smallint NULL,
	CONSTRAINT customers_with_guid_pk PRIMARY KEY (idguid)
);

CREATE TABLE customers_with_version (
    id bigint IDENTITY(1, 1),
    code varchar(20),
    description varchar(200),
    city varchar(200),
    note text,
    rating integer,
	objversion integer
);

CREATE TABLE order_details (
	id integer  IDENTITY(1, 1) ,
	id_order integer NOT NULL,
	id_article integer NOT NULL,
	unit_price numeric(18,2) NOT NULL,
	discount integer DEFAULT 0 NOT NULL ,
	quantity integer NOT NULL,
	description nvarchar(200) NOT NULL,
	total numeric(18,2) NOT NULL,
	CONSTRAINT order_details_pkey PRIMARY KEY (id)
);

CREATE TABLE orders (
	id integer  IDENTITY(1, 1) ,
	id_customer integer NOT NULL,
	order_date date NOT NULL,
	total numeric(18,4) NOT NULL,
	CONSTRAINT orders_pkey PRIMARY KEY (id)
);


CREATE TABLE people (
	id integer  IDENTITY(1, 1) ,
	last_name nvarchar(100) NOT NULL,
	first_name nvarchar(100) NOT NULL,
	dob date NOT NULL,
	full_name nvarchar(80) NOT NULL,
	is_male bit DEFAULT 1 NOT NULL,
	note  nvarchar(max),
	photo VARBINARY(MAX),
	person_type nvarchar(40) NOT NULL,
	salary numeric(18,4),
	annual_bonus numeric(18,4),
	CONSTRAINT people_pkey PRIMARY KEY (id)
);

create table phones (
  id integer  IDENTITY(1, 1) ,
  phone_number nvarchar(200) not null,
  number_type nvarchar(200) not null,  
  dob date,
  id_person integer not null references people(id)
);

ALTER TABLE orders ADD CONSTRAINT orders_customers_fk FOREIGN KEY (id_customer) REFERENCES customers(id) ON DELETE CASCADE ON UPDATE CASCADE;
ALTER TABLE order_details ADD CONSTRAINT order_details_orders_fk FOREIGN KEY (id_order) REFERENCES orders(id) ON DELETE CASCADE ON UPDATE CASCADE;

CREATE TABLE nullables_test (
    f_int2 smallint,
    f_int8 bigint,
    f_int4 integer,
    f_string nvarchar(200),
    f_bool bit,
    f_date date,
    f_time time,
    f_datetime datetime,
    f_float4 real,
    f_float8 double precision,
    f_currency numeric(18,4),
    f_blob varchar(max)
);

create table integers_as_booleans (
  id bigint not null identity primary key,
  done_bool bit not null,
  done_int smallint not null
);