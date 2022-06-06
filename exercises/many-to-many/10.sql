/*
Write the necessary SQL statements to delete the "Bulk Email" service and
customer "Chen Ke-Hua" from the database.
*/

-- SELECT c.name, s.description FROM customers c
-- JOIN customers_services cs ON cs.customer_id = c.id 
-- JOIN services s ON cs.service_id = s.id 
-- WHERE s.description = 'Bulk Email';
--
-- SELECT c.name, s.description FROM customers c
-- JOIN customers_services cs ON cs.customer_id = c.id 
-- JOIN services s ON cs.service_id = s.id 
-- WHERE c.name = 'Chen Ke-Hua';

-- DELETE FROM customers WHERE name = 'Chen Ke-Hua';

ALTER TABLE customers_services DROP CONSTRAINT customers_services_service_id_fkey,
ADD CONSTRAINT customers_services_service_id_fkey
  FOREIGN KEY (service_id)
  REFERENCES services(id)
  ON DELETE CASCADE;


DELETE FROM services WHERE description = 'Bulk Email';
