set hive.auto.convert.sortedmerge.join=true;

set hive.optimize.bucketmapjoin=true;

set hive.optimize.bucketmapjoin.sortedmerge=true;

SELECT a.subject AS x,
a.object AS y,
b.object AS z
FROM (
    SELECT subject,
        object
    FROM yago_buck_part
    WHERE predicate = "<hasGivenName>"
) a
JOIN (
    SELECT subject,
        object
    FROM yago_buck_part
    WHERE predicate = "<livesIn>"
) b ON a.subject = b.subject;
