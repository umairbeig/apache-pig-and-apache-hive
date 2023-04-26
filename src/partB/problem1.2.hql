SELECT b.object AS given_name
FROM (
        SELECT y.subject
        FROM yago_file y
        WHERE y.predicate = '<livesIn>'
        GROUP BY y.subject
        HAVING COUNT(*) > 1
    ) a
    JOIN yago_file b ON b.subject = a.subject
    AND b.predicate = '<hasGivenName>'
GROUP BY b.object;
