create table if not exists users(id text primary key,name text not null,phone text unique not null,role text not null check(role in ('client','driver','admin')),password_hash text not null,available boolean default false,created_at timestamptz default now());
create table if not exists orders(id text primary key,client_id text not null,client_name text not null,pickup text not null,dropoff text not null,price numeric default 0,note text default '',status text not null,driver_id text,driver_name text,recipient_phone text,package_type text,package_size text,payment_status text default 'unpaid',created_at timestamptz default now(),updated_at timestamptz default now());
create table if not exists locations(driver_id text primary key,lat double precision,lng double precision,accuracy double precision,updated_at timestamptz default now());
create table if not exists push_tokens(id text primary key,user_id text not null,token text not null,platform text default 'web',created_at timestamptz default now());
create index if not exists orders_status_idx on orders(status);
create index if not exists orders_driver_idx on orders(driver_id);
