LOAD DATA INFILE '/var/lib/mysql-files/UBICACION.csv' 
INTO TABLE UBICACION 
FIELDS TERMINATED BY ',' 
ENCLOSED BY '"' 
LINES TERMINATED BY '\n' 
(id_ubicacion, cod_postal, cve_mun, cve_loc, latitud, longitud, id_asentamiento);
