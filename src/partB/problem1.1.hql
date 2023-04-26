SELECT predicate,
    COUNT(predicate) as count
FROM yago_file
GROUP BY predicate
ORDER BY COUNT(predicate) DESC
LIMIT 3;
