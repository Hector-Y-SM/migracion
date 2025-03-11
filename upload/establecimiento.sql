LOAD DATA INFILE '/var/lib/mysql-files/ESTABLECIMIENTO.csv' 
INTO TABLE ESTABLECIMIENTO 
FIELDS TERMINATED BY ',' 
ENCLOSED BY '"' 
LINES TERMINATED BY '\n' 
(id_establecimiento, nom_estab, raz_social, codigo_act, fecha_alta, id_ubicacion);
