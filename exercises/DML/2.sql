/*
Now that we have the infrastructure for our workshop set up, let's start adding
in some data. Add in two different devices. One should be named,
"Accelerometer". The other should be named, "Gyroscope".

The first device should have 3 parts (this is grossly simplified). The second
device should have 5 parts. The part numbers may be any number between 1 and
10000. There should also be 3 parts that don't belong to any device yet.
*/

INSERT INTO devices (name)
VALUES ('Accelerometer'), ('Gyroscope');

-- Parts for device 1 (Accelerometer)
INSERT INTO parts (part_number, device_id)
VALUES (12, 1), (14, 1), (16, 1);

-- Parts for device 2 (Gyroscope)
INSERT INTO parts (part_number, device_id)
VALUES (31, 2), (33, 2), (35, 2), (37, 2), (39, 2);

-- Unassigned parts
INSERT INTO parts (part_number)
VALUES (50), (54), (58);
