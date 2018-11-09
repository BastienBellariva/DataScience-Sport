DROP TABLE IF EXISTS t_codes_fam_type;

CREATE TABLE t_codes_fam_type (
    -- Informations sur la famille
    code_famille INT(2) NOT NULL,
    famille VARCHAR(100) NOT NULL,
    -- Informations sur le type
    code_type INT(4) NOT NULL,
    libelle_type VARCHAR(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOAD DATA LOCAL INFILE "./dataset_import/equipements/communes/20180110_RES_CodesFamType_Communes_UTF8.csv"
INTO TABLE t_codes_fam_type
FIELDS TERMINATED BY ';'
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 LINES;
