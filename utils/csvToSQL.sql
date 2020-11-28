CREATE TABLE y17 (`Date` DATE, `Open` FLOAT, \
High FLOAT, Low FLOAT, `Close` FLOAT, Adj_Close FLOAT, Volume INT, \
ticker VARCHAR(100)
);


SHOW VARIABLES LIKE "secure_file_priv";

/* Cloud */
SHOW ENGINE INNODB STATUS \G
LOAD DATA LOCAL INFILE 'marketdata_2017_01_01_DB.csv'
INTO TABLE y17
COLUMNS TERMINATED BY ','
LINES TERMINATED BY '\n'
IGNORE 1 LINES;

/* Local */
SHOW ENGINE INNODB STATUS \G
LOAD DATA INFILE '/var/lib/mysql-files/marketdata_2017_01_01_DB_no_nan.csv'
INTO TABLE y17
COLUMNS TERMINATED BY ','
LINES TERMINATED BY '\n'
IGNORE 1 LINES;
