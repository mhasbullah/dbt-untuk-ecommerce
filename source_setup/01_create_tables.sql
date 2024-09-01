CREATE DATABASE ecommerce;

CREATE SCHEMA sources;

create table users (
    user_id varchar(256) default gen_random_uuid() not null primary key,
    username varchar(50) not null,
    email varchar(100) not null unique,
    password varchar(100) not null,
    full_name varchar(100),
    address varchar(255),
    phone_number varchar(20),
    date_joined date not null
);

alter table
    users owner to admin;

create table categories (
    category_id varchar(256) default gen_random_uuid() not null primary key,
    category_name varchar(50) not null
);

alter table
    categories owner to admin;

create table orders (
    order_id varchar(256) default gen_random_uuid() not null primary key,
    user_id varchar(256) references users,
    order_date date not null,
    total_amount numeric(10, 2) not null,
    status varchar(50) not null
);

alter table
    orders owner to admin;

create table products (
    product_id varchar(256) default gen_random_uuid() not null primary key,
    name varchar(100) not null,
    description text,
    price numeric(10, 2) not null,
    stock integer not null,
    category_id varchar(256) references categories
);

alter table
    products owner to admin;

create table order_items (
    order_item_id varchar(256) default gen_random_uuid() not null primary key,
    order_id varchar(256) references orders,
    product_id varchar(256) references products,
    quantity integer not null,
    price numeric(10, 2) not null
);

alter table
    order_items owner to admin;

create table reviews (
    review_id varchar(256) not null primary key,
    product_id varchar(256) references products,
    user_id varchar(256) references users,
    rating integer not null constraint reviews_rating_check check (
        (rating >= 1)
        AND (rating <= 5)
    ),
    comment text,
    date date not null
);

alter table
    reviews owner to admin;

create table payments (
    payment_id varchar(256) default gen_random_uuid() not null primary key,
    order_id varchar(256) references orders,
    payment_date date not null,
    amount numeric(10, 2) not null,
    payment_method varchar(50) not null,
    status varchar(50)
);

alter table
    payments owner to admin;

create table shipping (
    shipping_id varchar(256) default gen_random_uuid() not null primary key,
    order_id varchar(256) references orders,
    shipping_address varchar(255) not null,
    shipping_method varchar(50) not null,
    shipping_date date not null,
    delivery_date date not null,
    city varchar(256),
    state varchar(256),
    postal_code varchar(10),
    shipping_status varchar(10),
    country varchar(256)
);

alter table
    shipping owner to admin;