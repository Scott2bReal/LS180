/*
Our workshop has decided to not make an Accelerometer after all. Delete any
data related to "Accelerometer", this includes the parts associated with an
Accelerometer.
*/

-- Find part numbers associated with the Accelerometer
SELECT part_number FROM parts 
WHERE device_id = 1;

-- Verify the Accelerometer's id
SELECT id FROM devices WHERE name = 'Accelerometer';

-- Delete those parts when we have verified the WHERE clause returns the right
-- parts
DELETE FROM parts WHERE device_id = 1;

-- Delete the Accelerometer from 
DELETE FROM devices WHERE id = 1;

/*
Further Exploration

This process may have been a bit simpler if we had initially defined our
devices tables a bit differently. We could delete both a device and its
associated parts with one SQL statement if that were the case. What change
would have to be made to table parts to make this possible? Also, what SQL
statement would you have to write that can delete both a device and its parts
all in one go?

Solution:
We could add a CASCADE ON DELETE clause to our devices table schema, and then
just delete the device and all associated parts would be deleted.
 */
