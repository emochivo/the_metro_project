insert into customers (customer_id, first_name, last_name, customer_type)
values
    (1, 'Chi', 'Vo', 'Student'),
    (2, 'Ayla', 'Gloriana', 'Regular'),
    (3, 'Katy', 'Nguyen', 'Regular'),
    (4, 'Bear', 'Dwayne', 'Regular'),
    (5, 'Jennie', 'Hooper', 'Student'),
    (6, 'Danielle', 'Booth', 'Children'),
    (7, 'Vernon', 'Taylor', 'Regular'),
    (8, 'Lonnie', 'Tran', 'Elders'),
    (9, 'Kristin', 'Compton', 'Student'),
    (10, 'Brittany', 'Compton', 'Children'),
    (11, 'Shane', 'Marquez', 'Regular'),
    (12, 'Rosa', 'Holloway', 'Regular');

insert into tickets (ticket_id, type, price, expiry, customer_id)
values
    (100, 'Round trip', 18.50, '2025-01-15', 3),
    (101, 'One way', 0.00, '2025-01-22', 10),
    (102, 'Round trip', 18.50, '2025-02-07', 7),
    (104, 'Monthly', 210.00, '2025-02-20', 1),
    (105, 'One way', 7.50, '2025-01-20', 8),
    (106, 'One way', 10.00, '2025-02-01', 12),
    (107, 'Round trip', 8.50, '2025-01-29', 9);

insert into customer_trips(ctrip_id, date, customer_id)
values
    (1, '2025-01-10',10),
    (2, '2025-01-30',1),
    (3, '2025-01-18', 8),
    (4, '2025-01-20', 9);

insert into metro_stops(stop_id, stop_name)
values
    (1001, 'Hydrangea Stop'),
    (1002, 'Magnolia Stop'),
    (1003, 'Sunflower Stop'),
    (1004, 'Orchid Stop'),
    (1005, 'Jasmine Stop'),
    (1006, 'Freesia Stop'),
    (1007, 'Camellia Stop'),
    (1008, 'Azalea Stop'),
    (1009, 'Lavender Stop'),
    (1010, 'Buttercup Stop'),
    (1011, 'Cherry Blossom Stop'),
    (1012, 'Snowdrop Stop'),
    (1013, 'Daisy Stop'),
    (1014, 'Amaryllis Stop'),
    (1015, 'Bellflower Stop'),
    (1016, 'Water Lily Stop'),
    (1017, 'Catmint Stop'),
    (1018, 'Morning Glory Stop'),
    (1019, 'Heather Stop'),
    (1020, 'Periwinkle Stop'),
    (1021, 'Snowflake Stop'),
    (1022, 'Tulip Stop'),
    (1023, 'Spider Lily Stop'),
    (1024, 'Cosmos Stop'),
    (1025, 'Lantana Stop'),
    (1026, 'Balloon Flower Stop'),
    (1027, 'Goldenrod Stop'),
    (1028, 'Lupine Stop'),
    (1029, 'Poppy Stop'),
    (1030, 'Gardenia Stop'),
    (1031, 'Anemone Stop'),
    (1032, 'Petunia Stop'),
    (1033, 'Sweet Pea Stop'),
    (1034, 'Passionflower Stop'),
    (1035, 'Canna Stop'),
    (1036, 'Tuberose Stop'),
    (1037, 'Mimosa Stop'),
    (1038, 'Yucca Stop'),
    (1039, 'Wisteria Stop'),
    (1040, 'Columbine Stop');

insert into metro_lines (line_id, stop_quantity)
values
    (1, 12),
    (2, 11),
    (3, 11),
    (4, 12);

insert into stop_lists (stop_id, line_id)
values
    (1001, 1),
    (1002, 1),
    (1003, 1),
    (1004, 1),
    (1005, 1),
    (1006, 1),
    (1007, 1),
    (1008, 1),
    (1009, 1),
    (1010, 1),
    (1011, 1),
    (1012, 1),
    (1013, 2),
    (1014, 2),
    (1015, 2),
    (1016, 2),
    (1005, 2),
    (1017, 2),
    (1018, 2),
    (1019, 2),
    (1020, 2),
    (1021, 2),
    (1022, 2),
    (1023, 3),
    (1024, 3),
    (1025, 3),
    (1026, 3),
    (1017, 3),
    (1006, 3),
    (1027, 3),
    (1028, 3),
    (1029, 3),
    (1030, 3),
    (1031, 3),
    (1032, 4),
    (1033, 4),
    (1034, 4),
    (1035, 4),
    (1036, 4),
    (1019, 4),
    (1037, 4),
    (1008, 4),
    (1038, 4),
    (1028, 4),
    (1039, 4),
    (1040, 4);

insert into metro_trips (trip_id, departure_time, direction, stop_id, line_id)
values
    (1, '08:00', 0, 1001, 1),
    (1, '08:10', 0, 1003, 1),
    (2, '08:20', 0, 1005, 2),
    (2, '08:40', 0, 1020, 2),
    (3, '08:00', 0, 1023, 3),
    (3, '08:35', 0, 1028, 3),
    (4, '08:45', 0, 1028, 4),
    (5, '08:00', 1, 1012, 1),
    (5, '08:20', 1, 1008, 1),
    (7, '08:05', 1, 1030, 3),
    (8, '08:20', 1, 1008, 4),
    (9, '08:10', 0, 1001, 1),
    (13, '08:10', 1, 1012, 1),
    (16, '08:30', 1, 1008, 4),
    (17, '08:20', 0, 1001, 1),
    (25, '08:30', 0, 1001, 1),
    (41, '08:50', 0, 1001, 1),
    (49, '09:00', 0, 1001, 1),
    (32, '08:50', 1, 1008, 4),
    (40, '09:00', 1, 1008, 4),
    (48, '09:10', 1, 1008, 4),
    (11, '08:45', 0, 1028, 3),
    (19, '08:55', 0, 1028, 3),
    (27, '09:05', 0, 1028, 3),
    (35, '09:15', 0, 1028, 3);

insert into trip_information (ctrip_id, trip_id, stop_id)
values
    (1, 2, 1005),
    (1, 35, 1028),
    (2, 7, 1030),
    (3, 16, 1008),
    (4, 5, 1012),
    (4, 32, 1008);

