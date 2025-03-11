LOAD DATA INFILE '/var/lib/mysql-files/ASENTAMIENTO.csv' 
INTO TABLE ASENTAMIENTO 
FIELDS TERMINATED BY ',' 
ENCLOSED BY '"' 
LINES TERMINATED BY '\n' 
(id_asentamiento, nomb_asent, tipo_asent, tipo_vial, edificio, numero_int);
