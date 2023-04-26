CREATE EXTERNAL TABLE IF NOT EXISTS yago_file(
    subject STRING,
    predicate STRING,
    object STRING
) ROW FORMAT DELIMITED FIELDS TERMINATED BY ' ' STORED AS TEXTFILE LOCATION '/input';


CREATE TABLE yago(
    subject STRING,
    predicate STRING
    object STRING
);

INSERT OVERWRITE TABLE yago SELECT * from yago_file;

CREATE TABLE yago_buck_part(
    subject STRING,
    object STRING
) PARTITIONED BY (predicate STRING) CLUSTERED BY (subject) SORTED BY (subject ASC) INTO 10 BUCKETS;

CREATE TABLE yago_part(
    subject STRING,
    object STRING
) PARTITIONED BY (predicate STRING);
