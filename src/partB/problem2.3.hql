set hive.auto.convert.sortedmerge.join=false;

set hive.optimize.bucketmapjoin=false;

set hive.optimize.bucketmapjoin.sortedmerge=false;

SELECT a.subject AS x,
a.object AS y,
b.object AS z
FROM (
    SELECT subject,
        object
    FROM yago
    WHERE predicate = "<hasGivenName>"
) a
JOIN (
    SELECT subject,
        object
    FROM yago
    WHERE predicate = "<livesIn>"
) b ON a.subject = b.subject;
