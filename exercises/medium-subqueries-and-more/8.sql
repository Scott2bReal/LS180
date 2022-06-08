/*
For this exercise, let's explore the EXPLAIN PostgreSQL statement. It's a very
  useful SQL statement that lets us analyze the efficiency of our SQL
  statements. More specifically, use EXPLAIN to check the efficiency of the
  query statement we used in the exercise on EXISTS:

SELECT name FROM bidders
WHERE EXISTS (SELECT 1 FROM bids WHERE bids.bidder_id = bidders.id);

First use just EXPLAIN, then include the ANALYZE option as well. For your
answer, list any SQL statements you used, along with the output you get back,
and your thoughts on what is happening in both cases.
*/

EXPLAIN SELECT name FROM bidders 
WHERE EXISTS (SELECT 1 FROM bids WHERE bids.bidder_id = bidders.id);

/*
Results:

 QUERY PLAN
--------------------------------------------------------------------------
 Hash Join  (cost=33.38..66.47 rows=635 width=32)
   Hash Cond: (bidders.id = bids.bidder_id)
   ->  Seq Scan on bidders  (cost=0.00..22.70 rows=1270 width=36)
   ->  Hash  (cost=30.88..30.88 rows=200 width=4)
         ->  HashAggregate  (cost=28.88..30.88 rows=200 width=4)
               Group Key: bids.bidder_id
               ->  Seq Scan on bids  (cost=0.00..25.10 rows=1510 width=4)
(7 rows)

I think this is saying that the query will have a total cost of 66.47. It first
evaluates the condition supplied in the WHERE clause (bids.bidder_id =
  bids.id), then scans the bidders table (maybe for id values?), aggregates
those results and then scans the bids table for matches. 
*/

EXPLAIN ANALYZE SELECT name FROM bidders 
WHERE EXISTS (SELECT 1 FROM bids WHERE bids.bidder_id = bidders.id);

/*
 QUERY PLAN
---------------------------------------------------------------------------------------------------------------------
 Hash Join  (cost=33.38..66.47 rows=635 width=32) (actual time=0.118..0.127 rows=6 loops=1)
   Hash Cond: (bidders.id = bids.bidder_id)
   ->  Seq Scan on bidders  (cost=0.00..22.70 rows=1270 width=36) (actual time=0.014..0.016 rows=7 loops=1)
   ->  Hash  (cost=30.88..30.88 rows=200 width=4) (actual time=0.066..0.067 rows=6 loops=1)
         Buckets: 1024  Batches: 1  Memory Usage: 9kB
         ->  HashAggregate  (cost=28.88..30.88 rows=200 width=4) (actual time=0.040..0.045 rows=6 loops=1)
               Group Key: bids.bidder_id
               Batches: 1  Memory Usage: 40kB
               ->  Seq Scan on bids  (cost=0.00..25.10 rows=1510 width=4) (actual time=0.008..0.016 rows=26 loops=1)
 Planning Time: 0.229 ms
 Execution Time: 0.219 ms
(11 rows)

The query plan output is almost the same, with the addition of the line
underneath the line that starts with "Group Key:". This new line shoes the
"Batches" and the memory usage of the query. Appended to the results is the
time it took the DBMS to plan and execute the query
