/*
We've realized that the last two parts we're using for device number 2,
"Gyroscope", actually belong to an "Accelerometer". Write an SQL statement that
will associate the last two parts from our parts table with an "Accelerometer"
instead of a "Gyroscope".
*/

-- First find all parts associated with Gyroscope
SELECT d.name, p.part_number FROM devices d 
JOIN parts p ON p.device_id = d.id
WHERE p.device_id = 2;

-- Verify my WHERE clause returns the parts I want
SELECT part_number FROM parts 
WHERE part_number = 37;

SELECT part_number FROM parts 
WHERE part_number = 39;

-- Update the device_id value for the parts in question
UPDATE parts SET device_id = 1 
WHERE part_number = 37;

UPDATE parts SET device_id = 1 
WHERE part_number = 39;

/*
Further Exploration

What if we wanted to set the part with the smallest part_number to be
associated with "Gyroscope"? How would we go about doing that?

We could get all the part numbers in the parts table and use MIN() to find the
smallest value. Alternatively, we could get all the part numbers, order them in
ascending order and limit the results to 1. Then we would update the device_id
just like in the first part of this problem.
*/
