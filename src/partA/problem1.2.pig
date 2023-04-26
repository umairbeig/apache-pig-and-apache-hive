yago_data = LOAD '/input/yago_full_clean.tsv' USING PigStorage(' ') AS (subject:chararray, predicate:chararray, object:chararray);

livesIn_data = FILTER yago_data BY predicate == '<livesIn>';

livesIn_count = FOREACH (GROUP livesIn_data BY subject) GENERATE group AS subject, COUNT(livesIn_data.predicate) AS count;

multiple_livesIn = FILTER livesIn_count BY count > 1;

person_givenName = JOIN multiple_livesIn BY subject, yago_data BY subject;
person_givenName = FILTER person_givenName BY yago_data::predicate == '<hasGivenName>';
person_givenName = FOREACH person_givenName GENERATE yago_data::object AS given_name;

person_givenName_distinct = DISTINCT person_givenName;

STORE person_givenName_distinct INTO '/output/problem-A-1-2' USING PigStorage();

DUMP person_givenName_distinct;
