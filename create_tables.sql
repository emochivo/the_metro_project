create table customers (
    customer_id bigint primary key,
    first_name varchar(100),
    last_name varchar(100),
    customer_type varchar(50)
);

create table tickets (
    ticket_id int primary key,
    type varchar(50),
    price float,
    expiry date,
    customer_id bigint,
    constraint fk_customer
        foreign key (customer_id)
        references customers(customer_id)
);

create table customer_trips (
    ctrip_id int primary key,
    date date,
    customer_id bigint,
    constraint fk_customer
        foreign key (customer_id)
        references customers(customer_id)
);

create table metro_stops (
    stop_id int primary key,
    stop_name varchar(100)
);

create table metro_lines (
    line_id int primary key,
    stop_quantity int
);

create table stop_lists (
    stop_id int,
    line_id int,
    primary key (stop_id, line_id),
    constraint fk_metro_stop
        foreign key (stop_id)
        references metro_stops(stop_id),
    constraint fk_metro_line
        foreign key (line_id)
        references metro_lines(line_id)
);

create table metro_trips (
    trip_id int,
    departure_time time,
    direction int,
    stop_id int,
    line_id int,
    primary key (trip_id, stop_id),
    constraint fk_metro_stop
        foreign key (stop_id)
        references metro_stops(stop_id),
    constraint fk_metro_line
        foreign key (line_id)
        references metro_lines(line_id)
);

create table trip_information (
    ctrip_id int,
    trip_id int,
    stop_id int,
    primary key (ctrip_id, trip_id, stop_id),
    constraint fk_customer_trip
        foreign key (ctrip_id)
        references customer_trips(ctrip_id),
    constraint fk_metro_trip
        foreign key (trip_id, stop_id)
        references metro_trips(trip_id, stop_id)
);