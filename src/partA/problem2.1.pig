students = LOAD '/input/sample.txt' USING PigStorage('\t') AS (name:chararray, rollnumber:chararray, email:chararray, groupid:chararray);

grouped = GROUP students BY groupid;

STORE grouped
INTO '/output/problem-A-2-1'
USING PigStorage();

DUMP grouped;
