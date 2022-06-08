/*
In this exercise, we'll use EXPLAIN ANALYZE to compare the efficiency of two
SQL statements. These two statements are actually from the "Query From a
Virtual Table" exercise in this set. In that exercise, we stated that our
subquery-based solution:

SELECT MAX(bid_counts.count) FROM
  (SELECT COUNT(bidder_id) FROM bids GROUP BY bidder_id) AS bid_counts;

was actually faster than the simpler equivalent without subqueries:

SELECT COUNT(bidder_id) AS max_bid FROM bids
  GROUP BY bidder_id
  ORDER BY max_bid DESC
  LIMIT 1;

In this exercise, we will demonstrate this fact.

Run EXPLAIN ANALYZE on the two statements above. Compare the planning time,
execution time, and the total time required to run these two statements. Also
compare the total "costs". Which statement is more efficient and why?
*/

EXPLAIN ANALYZE SELECT MAX(bid_counts.count) FROM
  (SELECT COUNT(bidder_id) FROM bids GROUP BY bidder_id) AS bid_counts;

EXPLAIN ANALYZE SELECT COUNT(bidder_id) AS max_bid FROM bids
  GROUP BY bidder_id
  ORDER BY max_bid DESC
  LIMIT 1;

  /*
  Query 1 Results:

   QUERY PLAN
---------------------------------------------------------------------------------------------------------------
 Aggregate  (cost=37.15..37.16 rows=1 width=8) (actual time=0.170..0.176 rows=1 loops=1)
   ->  HashAggregate  (cost=32.65..34.65 rows=200 width=12) (actual time=0.137..0.155 rows=6 loops=1)
         Group Key: bids.bidder_id
         Batches: 1  Memory Usage: 40kB
         ->  Seq Scan on bids  (cost=0.00..25.10 rows=1510 width=4) (actual time=0.036..0.051 rows=26 loops=1)
 Planning Time: 1.959 ms
 Execution Time: 1.249 ms
(7 rows)


Query 2 Results:

 QUERY PLAN
---------------------------------------------------------------------------------------------------------------------
 Limit  (cost=35.65..35.65 rows=1 width=12) (actual time=0.371..0.379 rows=1 loops=1)
   ->  Sort  (cost=35.65..36.15 rows=200 width=12) (actual time=0.368..0.372 rows=1 loops=1)
         Sort Key: (count(bidder_id)) DESC
         Sort Method: top-N heapsort  Memory: 25kB
         ->  HashAggregate  (cost=32.65..34.65 rows=200 width=12) (actual time=0.131..0.145 rows=6 loops=1)
               Group Key: bidder_id
               Batches: 1  Memory Usage: 40kB
               ->  Seq Scan on bids  (cost=0.00..25.10 rows=1510 width=4) (actual time=0.035..0.047 rows=26 loops=1)
 Planning Time: 0.497 ms
 Execution Time: 0.589 ms
(10 rows)

While the "cost" of running these two queries seems very similar, in reality
  the time to run the second query is only a quarter of the time it took to run
  the first query. Interestingly, the second query actually used more memory
  than the first.
*/

/*
Further exploration:

We mentioned earlier that using a scalar subquery was faster than using an
equivalent JOIN clause. Determining that JOIN statement was part of the
"Further Exploration" for that exercise. For this "Further Exploration",
compare the times and costs of those two statements. The SQL statement that
uses a scalar subquery is listed below.
*/

EXPLAIN ANALYZE SELECT name,
(SELECT COUNT(item_id) FROM bids WHERE item_id = items.id)
FROM items;

EXPLAIN ANALYZE SELECT items.name, count(bids.item_id) FROM items
LEFT JOIN bids ON bids.item_id = items.id
GROUP BY items.id
ORDER BY items.id;

/*
Query 1 (Subquery method)
                                                 QUERY PLAN
-------------------------------------------------------------------------------------------------------------
 Seq Scan on items  (cost=0.00..25455.20 rows=880 width=40) (actual time=0.013..0.031 rows=6 loops=1)
   SubPlan 1
     ->  Aggregate  (cost=28.89..28.91 rows=1 width=8) (actual time=0.004..0.004 rows=1 loops=6)
           ->  Seq Scan on bids  (cost=0.00..28.88 rows=8 width=4) (actual time=0.001..0.002 rows=4 loops=6)
                 Filter: (item_id = items.id)
                 Rows Removed by Filter: 22
 Planning Time: 0.089 ms
 Execution Time: 0.046 ms
(8 rows)

Query 2 (Join method)
                                                        QUERY PLAN
---------------------------------------------------------------------------------------------------------------------------
 Sort  (cost=118.27..120.47 rows=880 width=44) (actual time=0.066..0.067 rows=6 loops=1)
   Sort Key: items.id
   Sort Method: quicksort  Memory: 25kB
   ->  HashAggregate  (cost=66.44..75.24 rows=880 width=44) (actual time=0.037..0.041 rows=6 loops=1)
         Group Key: items.id
         Batches: 1  Memory Usage: 49kB
         ->  Hash Right Join  (cost=29.80..58.89 rows=1510 width=40) (actual time=0.022..0.030 rows=27 loops=1)
               Hash Cond: (bids.item_id = items.id)
               ->  Seq Scan on bids  (cost=0.00..25.10 rows=1510 width=4) (actual time=0.001..0.003 rows=26 loops=1)
               ->  Hash  (cost=18.80..18.80 rows=880 width=36) (actual time=0.010..0.010 rows=6 loops=1)
                     Buckets: 1024  Batches: 1  Memory Usage: 9kB
                     ->  Seq Scan on items  (cost=0.00..18.80 rows=880 width=36) (actual time=0.005..0.006 rows=6 loops=1)
 Planning Time: 0.083 ms
 Execution Time: 0.095 ms
(14 rows)

On my system the subquery method was slightly faster (0.046ms vs. 0.095ms),
although the planning time took just a bit longer. 
*/
