LOAD DATA INFILE '/var/lib/mysql-files/WWW_ESTABLECIMIENTO.csv' 
INTO TABLE WWW_ESTABLECIMIENTO 
FIELDS TERMINATED BY ',' 
ENCLOSED BY '"' 
LINES TERMINATED BY '\n' 
(id_www, www, id_establecimiento);