yago = LOAD '/input/yago_full_clean.tsv' USING PigStorage(' ') AS (subject:chararray, predicate:chararray, object:chararray);

yago1 = FILTER yago BY predicate != '';

yago2 = FOREACH yago1 GENERATE subject, TRIM(predicate) AS predicate, object;

grouped_data = GROUP yago2 BY predicate;

count_data = FOREACH grouped_data GENERATE group AS predicate, COUNT(yago2) AS count;

sorted_data = ORDER count_data BY count DESC;

STORE sorted_data INTO '/output/problem-A-1-1' USING PigStorage();

DUMP sorted_data;
