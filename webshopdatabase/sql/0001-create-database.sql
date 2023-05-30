-- Create Customer schema
CREATE SCHEMA IF NOT EXISTS customerdb;
USE customerdb;

-- Create Customer table
create table customer (id bigint not null, first_name varchar(255), last_name varchar(255), social_security_number varchar(255), primary key (id)) engine=InnoDB;
create table customer_seq (next_val bigint) engine=InnoDB;
insert into customer_seq values ( 1 );

-- Create Item schema
CREATE SCHEMA IF NOT EXISTS itemdb;
USE itemdb;

-- Create Item table
create table item (id bigint not null, name varchar(255), price float(53) not null, primary key (id)) engine=InnoDB;
create table item_seq (next_val bigint) engine=InnoDB;
insert into item_seq values ( 1 );

-- Create Orders schema
CREATE SCHEMA IF NOT EXISTS ordersdb;
USE ordersdb;

-- Create Order table
create table orders (id bigint not null, order_date datetime(6), customer_id bigint, primary key (id)) engine=InnoDB;
create table orders_items (order_id bigint not null, items_id bigint not null) engine=InnoDB;
create table orders_seq (next_val bigint) engine=InnoDB;
insert into orders_seq values ( 1 );
alter table orders_items add constraint FKij1wwgx6o198ubsx1oulpopem foreign key (order_id) references orders (id);